#include "global.h"
#include "common.h"
#include "heap.h"

void init_heap() {
    int i;

    CpuFill32(0, &gIwramHeap, (u32)gIwramHeapEnd - 0x200 - (u32)&gIwramHeap);
    gIwramHeap.previous = NULL;
    gIwramHeap.next = NULL;
    gIwramHeap.size = ((u32)gIwramHeapEnd - 0x200 - (u32)&gIwramHeap) | HEAP_BLOCK_FREE;

    for (i = 0; i < 4; i++) {
        gIwramHeap.label[i] = "FREE"[i];
    }

    CpuFill32(0, EWRAM_HEAP, EWRAM_HEAP_SIZE);
    EWRAM_HEAP->previous = NULL;
    EWRAM_HEAP->next = NULL;
    EWRAM_HEAP->size = EWRAM_HEAP_SIZE | HEAP_BLOCK_FREE;

    for (i = 0; i < 4; i++) {
        EWRAM_HEAP->label[i] = "FREE"[i];
    }
}

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

void* alloc_heap_8018CEC(int heap, u32 size, char* label) {
    HeapBlock* block;
    int i;
    HeapBlock* next;

    if (size == 0) {
        return NULL;
    }

    block = EWRAM_HEAP;
    if (heap == 0) {
        block = &gIwramHeap;
    }

    size = (size + 3) & ~3;
    do {
        u32 blockSize = block->size;

        if ((blockSize & HEAP_BLOCK_FREE) && blockSize >= size + sizeof(HeapBlock)) {
            blockSize &= ~HEAP_BLOCK_FREE;
            if (blockSize > size + sizeof(HeapBlock) * 2) {
                HeapBlock* rest = (HeapBlock*)((u8*)block + (size + sizeof(HeapBlock)));
                u32 restSize = blockSize - sizeof(HeapBlock);

                rest->size = (restSize - size) | HEAP_BLOCK_FREE;
                rest->previous = block;
                next = block->next;
                rest->next = next;
                for (i = 0; i < 4; i++) {
                    rest->label[i] = "FREE"[i];
                }
                if (next != NULL) {
                    next->previous = rest;
                }
                block->size = size + sizeof(HeapBlock);
                block->next = rest;
            } else {
                block->size = blockSize;
            }
            for (i = 0; i < 4; i++) {
                block->label[i] = label[i];
            }
            return block + 1;
        }
        block = block->next;
    } while (block != NULL);

    return NULL;
}

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
