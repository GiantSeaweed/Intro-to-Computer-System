#include"cpu/instr.h"

static void instr_execute_2op(){
	operand_read(&opr_src);
	operand_read(&opr_dest);

	if(opr_src.type==OPR_IMM && opr_src.data_size<opr_dest.data_size)
			opr_dest.val=alu_and(sign_ext(opr_src.val,opr_src.data_size),opr_dest.val);
	else
			opr_dest.val=alu_and(opr_src.val,opr_dest.val);
	cpu.eflags.CF=0;
	cpu.eflags.OF=0;
	operand_write(&opr_dest);

}
make_instr_impl_2op(and,i,rm,bv)
make_instr_impl_2op(and,rm,r,b)
make_instr_impl_2op(and,r,rm,v)
make_instr_impl_2op(and,i,rm,v)
make_instr_impl_2op(and,i,rm,b)
make_instr_impl_2op(and,i,a,v)

