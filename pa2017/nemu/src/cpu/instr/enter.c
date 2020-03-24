#include"cpu/instr.h"

int enter(uint32_t eip,uint8_t opcode){
	//load_sreg(SREG_SS);
	print_asm_0("enter","",1);
	cpu.esp-=data_size/8;
	laddr_write(cpu.esp,data_size/8,cpu.ebp);
	cpu.ebp=cpu.esp;
	return 1;

		
}


