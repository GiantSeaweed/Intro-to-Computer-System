#include"cpu/instr.h"

int leave(uint32_t eip,uint8_t opcode){
		print_asm_0("leave","",1);
		cpu.esp=cpu.ebp;
		cpu.ebp=laddr_read(cpu.esp,data_size/8);
		cpu.esp += data_size/8;
		return 1;
}

