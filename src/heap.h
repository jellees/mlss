#ifndef HEAP_H
#define HEAP_H

// Header of a heap block; the block's data follows it.
struct HeapBlock {
    HeapBlock* previous;
    HeapBlock* next;
    // Size including this header. Bit 0 is set when the block is free.
    u32 size;
    char label[4];
};

#define HEAP_BLOCK_FREE 1

#define EWRAM_HEAP_SIZE 0x3F378

extern HeapBlock gIwramHeap;
extern HeapBlock gEwramHeap;
// End of the IWRAM heap (a word in the ROM).
extern u8* gIwramHeapEnd;

// The global allocation operators. heap 0 = IWRAM, otherwise EWRAM; clear zeroes the memory.
void* operator new(unsigned long size, int heap, char* label, u8 clear);
void* operator new[](unsigned long size, int heap, char* label, u8 clear);
void operator delete(void* p);
void operator delete[](void* p);

void init_heap();
void free_heap_memory_8018C68(void* p);
void* alloc_heap_8018CEC(int heap, u32 size, char* label);

#endif
