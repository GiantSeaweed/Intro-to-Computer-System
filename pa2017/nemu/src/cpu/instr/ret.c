#include"cpu/instr.h"

//int ret(uint32_t eip,uint8_t opcode)
make_instr_func(ret_near){
	print_asm_0("ret","",1);
	cpu.eip=laddr_read(cpu.esp,data_size/8);
	cpu.esp+=data_size/8;
	//print_asm_0("ret","",1);
	return 0;
}
make_instr_func(ret_near_w){
	opr_src.sreg=SREG_SS;
	operand_read(&opr_src);
	print_asm_1("ret","w",1+data_size/8,&opr_src);
	cpu.eip=laddr_read(cpu.esp,data_size/8);
	cpu.esp+=data_size/8;
	return 0;
}
