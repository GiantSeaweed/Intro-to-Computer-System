#include "cpu/instr.h"

int lgdt(uint32_t eip,uint8_t opcode){
	OPERAND src;
	src.type=OPR_MEM;
	src.data_size=data_size;
	
	src.addr=eip+1;
	//src.sreg=SREG_DS;
	//if(src.data_size==16){
	//	memcpy(&cpu.gdtr,(void*)src.addr,5);
		//memcpy(&cpu.gdtr.limit,(void*)src.addr,2);
	//}
	//else 
	int len=modrm_rm(eip+1,&src);
	operand_read(&src);
	
	if(src.data_size==32){
			//printf("cpu.gdtr=%x, src.addr=%x\n",(uint32_t)&cpu.gdtr,src.addr);

		uint32_t limit_tmp = laddr_read(src.addr, 2) & 0xffff;
			//paddr_write(cpu.gdtr.limit, 4, limit_tmp);
		cpu.gdtr.limit=limit_tmp;
		uint32_t base_tmp = laddr_read(src.addr+2, 4);
			//paddr_write(cpu.gdtr.base, 4, base_tmp);
		cpu.gdtr.base=base_tmp;
			//printf("after memcpy\n");
		//printf("cpu.gdtr.limit=0x%x,cpu.gdtr.base=0x%x\n",cpu.gdtr.limit,cpu.gdtr.base);
		//cpu.gdtr.limit=limit_tmp;
		//memcpy((uint32_t*)cpu.gdtr.base,(void*)src.addr+2,4);
		//cpu.gdtr.limit>>=16;
		//memcpy((uint32_t*)cpu.gdtr.limit,(void*)src.addr,2);
	}
	return 1+len;
}
