#include "global.h"
#include "common.h"
#include "heap.h"

//! Possible fake match: the labels are copied with a loop because C++ folds "FREE"[0] to a
//! constant, while the original loads the bytes from the string (as COPY_LABEL does in C).

// Close but not matching: the original writes the EWRAM heap's label through its own address constant.
// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_heap.s\"");
#else
void init_heap() {
    int i;

    CpuFill32(0, &gIwramHeap, (u32)gIwramHeapEnd - (u32)((u8*)&gIwramHeap + 0x200));
    gIwramHeap.previous = NULL;
    gIwramHeap.next = NULL;
    gIwramHeap.size = ((u32)gIwramHeapEnd - (u32)((u8*)&gIwramHeap + 0x200)) | HEAP_BLOCK_FREE;
    for (i = 0; i < 4; i++) {
        gIwramHeap.label[i] = "FREE"[i];
    }

    CpuFill32(0, &gEwramHeap, EWRAM_HEAP_SIZE);
    gEwramHeap.previous = NULL;
    gEwramHeap.next = NULL;
    gEwramHeap.size = EWRAM_HEAP_SIZE | HEAP_BLOCK_FREE;
    for (i = 0; i < 4; i++) {
        gEwramHeap.label[i] = "FREE"[i];
    }
}
#endif

void free_heap_memory_8018C68(void* p) {
    int i;

    if (p != NULL) {
        HeapBlock* block = (HeapBlock*)p - 1;
        HeapBlock* previous = block->previous;
        HeapBlock* next = block->next;

        block->size |= HEAP_BLOCK_FREE;
        for (i = 0; i < 4; i++) {
            block->label[i] = "FREE"[i];
        }

        if (next != NULL && (next->size & HEAP_BLOCK_FREE)) {
            block->size += next->size & ~HEAP_BLOCK_FREE;
            block->next = next->next;
            if (block->next != NULL) {
                block->next->previous = block;
            }
        }

        if (previous != NULL && (previous->size & HEAP_BLOCK_FREE)) {
            previous->size += block->size & ~HEAP_BLOCK_FREE;
            previous->next = block->next;
            if (previous->next != NULL) {
                previous->next->previous = previous;
            }
        }
    }
}

// Close but not matching: register allocation differs (size and block swap registers).
// https://decomp.me/scratch/TODO
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/alloc_heap_8018CEC.s\"");
#else
void* alloc_heap_8018CEC(int heap, u32 size, char* label) {
    HeapBlock* block;
    int i;

    if (size == 0) {
        return NULL;
    }

    block = &gEwramHeap;
    if (heap == 0) {
        block = &gIwramHeap;
    }

    size = (size + 3) & ~3;
    do {
        u32 blockSize = block->size;

        if ((blockSize & HEAP_BLOCK_FREE) && blockSize >= size + sizeof(HeapBlock)) {
            blockSize &= ~HEAP_BLOCK_FREE;
            if (blockSize > size + sizeof(HeapBlock) * 2) {
                HeapBlock* rest = (HeapBlock*)((u8*)block + size + sizeof(HeapBlock));

                rest->size = (blockSize - sizeof(HeapBlock) - size) | HEAP_BLOCK_FREE;
                rest->previous = block;
                rest->next = block->next;
                for (i = 0; i < 4; i++) {
                    rest->label[i] = "FREE"[i];
                }
                if (block->next != NULL) {
                    block->next->previous = rest;
                }
                block->size = size + sizeof(HeapBlock);
                block->next = rest;
            } else {
                block->size = blockSize;
            }
            COPY_LABEL(block->label, label);
            return block + 1;
        }
        block = block->next;
    } while (block != NULL);

    return NULL;
}
#endif

void operator delete[](void* p) {
    free_heap_memory_8018C68(p);
}

void operator delete(void* p) {
    free_heap_memory_8018C68(p);
}

void* operator new[](unsigned long size, int heap, char* label, u8 clear) {
    void* p = alloc_heap_8018CEC(heap, size, label);

    if (clear) {
        CpuFill32(0, p, size);
    }
    return p;
}

void* operator new(unsigned long size, int heap, char* label, u8 clear) {
    void* p = alloc_heap_8018CEC(heap, size, label);

    if (clear) {
        CpuFill32(0, p, size);
    }
    return p;
}
