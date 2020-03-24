#include"cpu/instr.h"

static void instr_execute_1op(){
		//load_sreg(SREG_SS);
		//opr_src.sreg=SREG_SS;
		opr_src.val=laddr_read(cpu.esp,data_size/8);
		//	cpu.esp+=data_size/8;
		//paddr_write(opr_src.addr,data_size/8,opr_src.val);
		operand_write(&opr_src);
		cpu.esp+=data_size/8;
}

make_instr_impl_1op(pop,r,v)
