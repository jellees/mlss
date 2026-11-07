#include "global.h"
#include "common.h"
#include "process.h"

#define PROCESS_DISABLED 0
#define PROCESS_ENABLED  1

Process::Process(u8 priority, char* label) {
    u32 processCount;
    Process* latestProcess;
    char* destLabel;

    processCount = 0;
    latestProcess = gGameState.startProcessLink;

    if (latestProcess == NULL) {
        gGameState.startProcessLink = this;
        previousProcess = NULL;
        nextProcess = NULL;
        destLabel = this->label;
    } else {
        if (latestProcess == NULL) {
        out:
            latestProcess->nextProcess = this;
            previousProcess = latestProcess;
            nextProcess = NULL;
            processCount++;
        } else {
            destLabel = this->label;

            while (latestProcess->priority <= priority) {
                if (latestProcess->nextProcess == NULL) {
                    //! Possible fake match.
                    goto out;
                }

                latestProcess = latestProcess->nextProcess;
                processCount++;
            }

            if (latestProcess->previousProcess == NULL) {
                gGameState.startProcessLink = this;
                previousProcess = NULL;
                nextProcess = latestProcess;
                latestProcess->previousProcess = this;
            } else {
                latestProcess->previousProcess->nextProcess = this;
                previousProcess = latestProcess->previousProcess;
                nextProcess = latestProcess;
                latestProcess->previousProcess = this;
            }
        }
    }

    parentProcess = gGameState.currentProcess;
    this->processCount = processCount;
    state = 0;
    this->priority = priority;
    flag = PROCESS_ENABLED;
    wait = TRUE;
    executeMax = 1;
    executeCounter = 0;
    frames = 0;
    COPY_LABEL(destLabel, label);
    gGameState.processCount++;
}

void Process::executeAll() {
    Process* exeProcess;
    Process* process;
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
                            exeProcess->update();
                            exeProcess->executeCounter = 0;
                        }

                        if (gGameState.currentProcess != NULL) {
                            exeProcess->frames++;
                            exeProcess->wait = TRUE;
                        }
                    } else {
                        exeProcess->update();

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

bool32 Process::exists(Process* process) {
    Process* curProcess = gGameState.startProcessLink;

    while (curProcess != NULL) {
        if (curProcess == process) {
            return TRUE;
        }

        curProcess = curProcess->nextProcess;
    }

    return FALSE;
}

void Process::enableAll() {
    Process* process = gGameState.startProcessLink;

    while (process != NULL) {
        process->flag = PROCESS_ENABLED;
        process->wait = TRUE;
        process = process->nextProcess;
    }
}

void Process::disableAll() {
    Process* process = gGameState.startProcessLink;

    while (process != NULL) {
        if (process->priority != 0 && process->priority != 255) {
            process->flag = PROCESS_DISABLED;
            process->wait = TRUE;
        }
        process = process->nextProcess;
    }
}

void Process::enable() {
    flag = PROCESS_ENABLED;
    wait = TRUE;
}

void Process::disable() {
    flag = PROCESS_DISABLED;
    wait = TRUE;
}

Process::~Process() {
    if (nextProcess != NULL) {
        nextProcess->previousProcess = previousProcess;
    }

    if (previousProcess == NULL) {
        gGameState.startProcessLink = nextProcess;
    } else {
        previousProcess->nextProcess = nextProcess;
    }

    gGameState.processCount--;

    if (gGameState.currentProcess == this) {
        gGameState.currentProcess = NULL;
    }

    if (gGameState.nextProcess == this) {
        gGameState.nextProcess = nextProcess;
    }
}
