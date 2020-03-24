#include "cpu/cpu.h"
#include "memory/memory.h"

// translate from linear address to physical address
paddr_t page_translate(laddr_t laddr) {
#ifndef TLB_ENABLED
	//printf("\nPlease implement page_translate()\n");
	//assert(0);
	uint32_t dir=(laddr&0xffc00000)>>22;
	uint32_t page=(laddr&0x003ff000)>>12;
	uint32_t offset=laddr&0x00000fff;

	uint32_t page_dir=(cpu.cr3.val&0xfffff000)+(dir<<2);
	uint32_t page_dir_val=paddr_read(page_dir,4);
	assert((page_dir_val&0x1)==1);
	
	uint32_t page_table=(page_dir_val&0xfffff000) + (page<<2);
	uint32_t page_table_val=paddr_read(page_table,4);
	assert((page_table_val&0x1)==1);

	uint32_t paddr=(page_table_val&0xfffff000) + offset;
	return paddr;
#else	
	return tlb_read(laddr) | (laddr & PAGE_MASK);
#endif
}
