#include"cpu/instr.h"
static void instr_execute_1op(){
		operand_read(&opr_src);
		uint32_t cf=cpu.eflags.CF;
		opr_src.val=alu_sub(1,opr_src.val);
		cpu.eflags.CF=cf;
		operand_write(&opr_src);
	//	cpu.eflags.CF=cf;
}

make_instr_impl_1op(dec,r,v)
make_instr_impl_1op(dec,rm,v)


