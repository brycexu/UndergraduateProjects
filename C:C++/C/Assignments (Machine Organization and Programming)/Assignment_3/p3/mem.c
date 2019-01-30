#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <string.h>
#include "mem.h"

/*
 * This structure serves as the header for each allocated and free block
 * It also serves as the footer for each free block
 * The blocks are ordered in the increasing order of addresses 
 */
typedef struct blk_hdr {                         
        int size_status;
  
    /*
    * Size of the block is always a multiple of 8
    * => last two bits are always zero - can be used to store other information
    *
    * LSB -> Least Significant Bit (Last Bit)
    * SLB -> Second Last Bit 
    * LSB = 0 => free block
    * LSB = 1 => allocated/busy block
    * SLB = 0 => previous block is free
    * SLB = 1 => previous block is allocated/busy
    * 
    * When used as the footer the last two bits should be zero
    */

    /*
    * Examples:
    * 
    * For a busy block with a payload of 20 bytes (i.e. 20 bytes data + an additional 4 bytes for header)
    * Header:
    * If the previous block is allocated, size_status should be set to 27
    * If the previous block is free, size_status should be set to 25
    * 
    * For a free block of size 24 bytes (including 4 bytes for header + 4 bytes for footer)
    * Header:
    * If the previous block is allocated, size_status should be set to 26
    * If the previous block is free, size_status should be set to 24
    * Footer:
    * size_status should be 24
    * 
    */
} blk_hdr;

/* Global variable - This will always point to the first block
 * i.e. the block with the lowest address */
blk_hdr *first_blk = NULL;

/*
 * Note: 
 *  The end of the available memory can be determined using end_mark
 *  The size_status of end_mark has a value of 1
 *
 */

/* 
 * Function for allocating 'size' bytes
 * Returns address of allocated block on success 
 * Returns NULL on failure 
 * Here is what this function should accomplish 
 * - Check for sanity of size - Return NULL when appropriate 
 * - Round up size to a multiple of 8 
 * - Traverse the list of blocks and allocate the best free block which can accommodate the requested size 
 * - Also, when allocating a block - split it into two blocks
 * Tips: Be careful with pointer arithmetic 
 */                    
void* Alloc_Mem(int size) {                      
    // Your code goes in here
    if (size < 1)
    {
        return NULL;
    }
    // make space for the header
    size = size + 4;
    // make sure that the size is a multiple of 8
    if (size % 8 != 0)
    {
        size = size + 8 - size % 8;
    }
    // create pointer to the first block of memory
    blk_hdr *current = first_blk;
    // create pointer to the best block of memory
    blk_hdr *bestblock = NULL;
    
    // look for the best block of memory
    while (current->size_status != 1)
    {
        // if block is not allocated
        if ((current->size_status & 1) == 0)
        {
            // if the size of block is exact the same with the request
            if (current->size_status - current->size_status % 8 == size)
            {
                // change the header's a bit to 1 (current block)
                current->size_status++;
                // change the header's p bit to 1 (next block)
                ((blk_hdr*)((char*)current + (current->size_status -
                                              current->size_status % 8)))
                ->size_status += 2;
                // return payload address
                return (char*)current + 4;
            } else {  // if the block is larger than the request
                // if the block is smaller than previous best-fit block
                if ((current->size_status > size) &&
                    ((bestblock == NULL) ||
                    (current->size_status < bestblock->size_status)))
                {
                    bestblock = current;
                }
            }
        }
        // move to next header
        current = (blk_hdr*)((char*)current + (current->size_status -
                                               current->size_status % 8));
    }
    
    // if no suitable block was found, then return null
    if (bestblock == NULL)
    {
        return NULL;
    }
    
    // if after allocation, there is still room in best-fit block
    // for another block, split it
    if ((bestblock->size_status - bestblock->size_status % 8) - size >= 8)
    {
        // create the header for the new block
        blk_hdr *new = (blk_hdr*)((char*)bestblock + size);
        // set the header's p bit to 1 (new block)
        new->size_status = (((bestblock->size_status -
                              bestblock->size_status % 8) - size) + 2);
        // set the footer (new block)
        ((blk_hdr*)((char*)bestblock + ((bestblock->size_status -
                                         bestblock->size_status % 8) - 4)))
                                         -> size_status
        = new->size_status - new->size_status % 8;
        // set the size (best-fit block)
        bestblock->size_status = size + bestblock->size_status % 8;
    } else if (((blk_hdr*)((char*)bestblock +
                           (bestblock->size_status -
                            bestblock->size_status % 8))) -> size_status != 1) {
        // change the header's p bit to 1 (next block)
        ((blk_hdr*)((char*)bestblock + (bestblock->size_status -
                                        bestblock->size_status % 8)))
                               -> size_status += 2;
    }
    // change the header's a bit to 1 (best-fit block)
    bestblock->size_status++;
    // return payload address
    return (blk_hdr*)((char*)bestblock + 4);
    
    return NULL;
}

/* 
 * Function for freeing up a previously allocated block 
 * Argument - ptr: Address of the block to be freed up 
 * Returns 0 on success 
 * Returns -1 on failure 
 * Here is what this function should accomplish 
 * - Return -1 if ptr is NULL
 * - Return -1 if ptr is not 8 byte aligned or if the block is already freed
 * - Mark the block as free 
 * - Coalesce if one or both of the immediate neighbours are free 
 */                    
int Free_Mem(void *ptr) {                        
    // Your code goes in here
    // if pointer is null, return -1
    if (ptr == NULL)
    {
        return -1;
    }
    
    // create pointer to the start of block to be freed
    blk_hdr *free = (blk_hdr*)((char*)ptr - 4);
    
    // if the free block is out of bounds, return -1
    if (free->size_status == 1 || free < first_blk)
    {
        return -1;
    }
    // if the free block does not meet the alignment, return -1
    if ((free->size_status - (free->size_status % 8)) % 8 != 0)
    {
        return -1;
    }
    // if the free block is not allocated, return -1
    if ((free->size_status & 1) == 0)
    {
        return -1;
    }
    
    // change the free block's a bit to 0
    free->size_status -= 1;
    
    // store the next block's size
    int next = ((blk_hdr*)((char*)free + (free->size_status - free
                                          ->size_status % 8)))
    -> size_status;
    
    // if the next block is empty, coalesce
    if ((next & 1) == 0)
    {
        free->size_status += (next - next % 8);
    } else if (((blk_hdr*)((char*)free + (free->size_status - free
                                         ->size_status % 8)))
              -> size_status != 1) {
        // otherwise, set next block's p bit to 0
        ((blk_hdr*)((char*)free + (free->size_status - free->size_status % 8)))
        -> size_status = next - 2;
    }
    
    // if the previous block is empty, coalesce
    if ((free->size_status & 2) == 0)
    {
        // get the size of the previous block from footer
        int prev = ((blk_hdr*)((char*)free - 4)) -> size_status;
        prev = prev - (prev % 8);
        // get the size of the freed block
        int current = free->size_status;
        current = current - (current % 8);
        // move to the freed block
        free = (blk_hdr*)((char*)free - prev);
        free->size_status += current;
    }
    
    // create the footer for the new block
    blk_hdr* footer = (blk_hdr*)((char*)free + ((free->size_status -
                                                 free->size_status % 8) - 4));
    footer->size_status = free->size_status - (free->size_status % 8);
    
    return 0;
}

/*
 * Function used to initialize the memory allocator
 * Not intended to be called more than once by a program
 * Argument - sizeOfRegion: Specifies the size of the chunk which needs to be allocated
 * Returns 0 on success and -1 on failure 
 */                    
int Init_Mem(int sizeOfRegion)
{                         
    int pagesize;
    int padsize;
    int fd;
    int alloc_size;
    void* space_ptr;
    blk_hdr* end_mark;
    static int allocated_once = 0;
  
    if (0 != allocated_once) {
        fprintf(stderr, 
        "Error:mem.c: Init_Mem has allocated space during a previous call\n");
        return -1;
    }
    if (sizeOfRegion <= 0) {
        fprintf(stderr, "Error:mem.c: Requested block size is not positive\n");
        return -1;
    }

    // Get the pagesize
    pagesize = getpagesize();

    // Calculate padsize as the padding required to round up sizeOfRegion 
    // to a multiple of pagesize
    padsize = sizeOfRegion % pagesize;
    padsize = (pagesize - padsize) % pagesize;

    alloc_size = sizeOfRegion + padsize;

    // Using mmap to allocate memory
    fd = open("/dev/zero", O_RDWR);
    if (-1 == fd) {
        fprintf(stderr, "Error:mem.c: Cannot open /dev/zero\n");
        return -1;
    }
    space_ptr = mmap(NULL, alloc_size, PROT_READ | PROT_WRITE, MAP_PRIVATE, 
                    fd, 0);
    if (MAP_FAILED == space_ptr) {
        fprintf(stderr, "Error:mem.c: mmap cannot allocate space\n");
        allocated_once = 0;
        return -1;
    }
  
     allocated_once = 1;

    // for double word alignement and end mark
    alloc_size -= 8;

    // To begin with there is only one big free block
    // initialize heap so that first block meets 
    // double word alignement requirement
    first_blk = (blk_hdr*) space_ptr + 1;
    end_mark = (blk_hdr*)((void*)first_blk + alloc_size);
  
    // Setting up the header
    first_blk->size_status = alloc_size;

    // Marking the previous block as busy
    first_blk->size_status += 2;

    // Setting up the end mark and marking it as busy
    end_mark->size_status = 1;

    // Setting up the footer
    blk_hdr *footer = (blk_hdr*) ((char*)first_blk + alloc_size - 4);
    footer->size_status = alloc_size;
  
    return 0;
}

/* 
 * Function to be used for debugging 
 * Prints out a list of all the blocks along with the following information i
 * for each block 
 * No.      : serial number of the block 
 * Status   : free/busy 
 * Prev     : status of previous block free/busy
 * t_Begin  : address of the first byte in the block (this is where the header starts) 
 * t_End    : address of the last byte in the block 
 * t_Size   : size of the block (as stored in the block header) (including the header/footer)
 */                     
void Dump_Mem() {                        
    int counter;
    char status[5];
    char p_status[5];
    char *t_begin = NULL;
    char *t_end = NULL;
    int t_size;

    blk_hdr *current = first_blk;
    counter = 1;

    int busy_size = 0;
    int free_size = 0;
    int is_busy = -1;

    fprintf(stdout, "************************************Block list***\
                    ********************************\n");
    fprintf(stdout, "No.\tStatus\tPrev\tt_Begin\t\tt_End\t\tt_Size\n");
    fprintf(stdout, "-------------------------------------------------\
                    --------------------------------\n");
  
    while (current->size_status != 1) {
        t_begin = (char*)current;
        t_size = current->size_status;
    
        if (t_size & 1) {
            // LSB = 1 => busy block
            strcpy(status, "Busy");
            is_busy = 1;
            t_size = t_size - 1;
        } else {
            strcpy(status, "Free");
            is_busy = 0;
        }

        if (t_size & 2) {
            strcpy(p_status, "Busy");
            t_size = t_size - 2;
        } else {
            strcpy(p_status, "Free");
        }

        if (is_busy) 
            busy_size += t_size;
        else 
            free_size += t_size;

        t_end = t_begin + t_size - 1;
    
        fprintf(stdout, "%d\t%s\t%s\t0x%08lx\t0x%08lx\t%d\n", counter, status, 
        p_status, (unsigned long int)t_begin, (unsigned long int)t_end, t_size);
    
        current = (blk_hdr*)((char*)current + t_size);
        counter = counter + 1;
    }

    fprintf(stdout, "---------------------------------------------------\
                    ------------------------------\n");
    fprintf(stdout, "***************************************************\
                    ******************************\n");
    fprintf(stdout, "Total busy size = %d\n", busy_size);
    fprintf(stdout, "Total free size = %d\n", free_size);
    fprintf(stdout, "Total size = %d\n", busy_size + free_size);
    fprintf(stdout, "***************************************************\
                    ******************************\n");
    fflush(stdout);

    return;
}
