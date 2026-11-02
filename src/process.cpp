#include "global.h"
#include "common.h"
#include "process.h"

#define PROCESS_DISABLED 0
#define PROCESS_ENABLED  1

struct Process* process_add(struct Process* process, u8 priority, char* label) {
    u32 processCount;
    struct Process* latestProcess;
    char* destLabel;

    process->definition = &stru_8CDBD68;
    processCount = 0;
    latestProcess = gGameState.startProcessLink;

    if (latestProcess == NULL) {
        gGameState.startProcessLink = process;
        process->previousProcess = NULL;
        process->nextProcess = NULL;
        destLabel = process->label;
    } else {
        if (latestProcess == NULL) {
        out:
            latestProcess->nextProcess = process;
            process->previousProcess = latestProcess;
            process->nextProcess = NULL;
            processCount++;
        } else {
            destLabel = process->label;

            while (latestProcess->priority <= priority) {
                if (latestProcess->nextProcess == NULL) {
                    //! Possible fake match.
                    goto out;
                }

                latestProcess = latestProcess->nextProcess;
                processCount++;
            }

            if (latestProcess->previousProcess == NULL) {
                gGameState.startProcessLink = process;
                process->previousProcess = NULL;
                process->nextProcess = latestProcess;
                latestProcess->previousProcess = process;
            } else {
                latestProcess->previousProcess->nextProcess = process;
                process->previousProcess = latestProcess->previousProcess;
                process->nextProcess = latestProcess;
                latestProcess->previousProcess = process;
            }
        }
    }

    process->parentProcess = gGameState.currentProcess;
    process->processCount = processCount;
    process->state = 0;
    process->priority = priority;
    process->flag = PROCESS_ENABLED;
    process->wait = TRUE;
    process->executeMax = 1;
    process->executeCounter = 0;
    process->frames = 0;
    COPY_LABEL(destLabel, label);
    gGameState.processCount++;

    return process;
}

void process_execute_all(void) {
    struct Process* exeProcess;
    struct Process* process;
    bool32 stopExecuting;

    if (gGameState.startProcessLink != 0) {
        do {
            stopExecuting = TRUE;

            exeProcess = gGameState.startProcessLink;
            while (exeProcess != NULL) {
                gGameState.nextProcess = exeProcess->nextProcess;
                gGameState.currentProcess = exeProcess;

                if (exeProcess->flag & PROCESS_ENABLED && !exeProcess->wait) {
                    s8 executeMax = exeProcess->executeMax;

                    if (executeMax & 8) {
                        if (++exeProcess->executeCounter >= -executeMax) {
                            exeProcess->definition->update((u8*)exeProcess
                                                           + exeProcess->definition->offset);
                            exeProcess->executeCounter = 0;
                        }

                        if (gGameState.currentProcess != NULL) {
                            exeProcess->frames++;
                            exeProcess->wait = TRUE;
                        }
                    } else {
                        exeProcess->definition->update((u8*)exeProcess
                                                       + exeProcess->definition->offset);

                        if (gGameState.currentProcess != NULL) {
                            exeProcess->frames++;

                            if (++exeProcess->executeCounter >= exeProcess->executeMax) {
                                exeProcess->wait = TRUE;
                            } else {
                                stopExecuting = FALSE;
                            }
                        }
                    }
                }

                exeProcess = gGameState.nextProcess;
            }
        } while (stopExecuting == FALSE);
    }

    process = gGameState.startProcessLink;
    while (process != NULL) {
        process->wait = FALSE;

        if (!(process->executeMax & 8)) {
            process->executeCounter = 0;
        }

        process = process->nextProcess;
    }
}

bool32 process_exists(struct Process* process) {
    struct Process* curProcess = gGameState.startProcessLink;

    while (curProcess != NULL) {
        if (curProcess == process) {
            return TRUE;
        }

        curProcess = curProcess->nextProcess;
    }

    return FALSE;
}

void process_enable_all(void) {
    struct Process* process = gGameState.startProcessLink;

    while (process != NULL) {
        process->flag = PROCESS_ENABLED;
        process->wait = TRUE;
        process = process->nextProcess;
    }
}

void process_disable_all(void) {
    struct Process* process = gGameState.startProcessLink;

    while (process != NULL) {
        if (process->priority != 0 && process->priority != 255) {
            process->flag = PROCESS_DISABLED;
            process->wait = TRUE;
        }
        process = process->nextProcess;
    }
}

void process_enable(struct Process* process) {
    process->flag = PROCESS_ENABLED;
    process->wait = TRUE;
}

void process_disable(struct Process* process) {
    process->flag = PROCESS_DISABLED;
    process->wait = TRUE;
}

void process_remove(struct Process* process, u32 flags) {
    process->definition = &stru_8CDBD68;

    if (process->nextProcess != NULL) {
        process->nextProcess->previousProcess = process->previousProcess;
    }

    if (process->previousProcess == NULL) {
        gGameState.startProcessLink = process->nextProcess;
    } else {
        process->previousProcess->nextProcess = process->nextProcess;
    }

    gGameState.processCount--;

    if (gGameState.currentProcess == process) {
        gGameState.currentProcess = NULL;
    }

    if (gGameState.nextProcess == process) {
        gGameState.nextProcess = process->nextProcess;
    }

    if (flags & PROCESS_REMOVE_FLAGS_FREE) {
        free_heap_8018DA8(process);
    }
}
