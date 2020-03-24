#include "cpu/cpu.h"
#include "memory/memory.h"

// return the linear address from the virtual address and segment selector
uint32_t segment_translate(uint32_t offset, uint8_t sreg) {
	/* TODO: perform segment translation from virtual address to linear address
	 * by reading the invisible part of the segment register 'sreg'
	 */
	//printf("\nsreg:%d\n",sreg);
	uint32_t result=cpu.segReg[sreg].base+offset;
	return result;
}

// load the invisible part of a segment register
void load_sreg(uint8_t sreg) {
	/* TODO: load the invisibile part of the segment register 'sreg' by reading the GDT.
	 * The visible part of 'sreg' should be assigned by mov or ljmp already.
	 */
	//printf("cpu.cr0.pe==%x , cpu.cr0.pg==%x\n",cpu.cr0.pe,cpu.cr0.pg);
	//printf("cpu.gdtr.base=0x%x\n",cpu.gdtr.base);
	//printf("sreg=%d,cpu.segReg[sreg].index=%d\n",sreg,cpu.segReg[sreg].index);

	//uint32_t ptr=cpu.gdtr.base+8*((uint16_t)(cpu.segReg[sreg].val&0xfff8)>>3);
	
 	uint32_t ptr=cpu.gdtr.base+8*(cpu.segReg[sreg].index);
	uint32_t val0=paddr_read(ptr,4);
	uint32_t val1=paddr_read(ptr+4,4);//val[1] has larger address
	
	//printf("val1=%x,",val1);	printf("val0=%x\n",val0);
	uint32_t base=( val1&0xff000000 )+( (val1&0xff)<<8 )+ ((val0&0xffff0000)>>16);
	uint32_t limit=(val1&0x000f0000) + (val0&0xffff);
	uint32_t granularity=(val1&0x00800000)>>23;
	uint32_t present=(val1&0x8000)>>15;
	uint32_t soft_use=(val1&0x00100000)>>20;
	uint32_t privilege_level=(val1&0x6000)>>13;
	uint32_t type=(val1&0xf00)>>8;
	
	//printf("base:0x%x,limit:0x%x,present=0x%x\n",base,limit,present);
	assert(base==0);assert(limit==0xfffff);assert(granularity==1);
	assert(present==1);

	cpu.segReg[sreg].base=base;
	cpu.segReg[sreg].limit=limit;
	cpu.segReg[sreg].type=type;
	cpu.segReg[sreg].privilege_level=privilege_level;
	cpu.segReg[sreg].soft_use=soft_use;
	
}
