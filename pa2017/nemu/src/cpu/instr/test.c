#include"cpu/instr.h"

static void instr_execute_2op(){
	operand_read(&opr_src);
	operand_read(&opr_dest);
	alu_and(opr_src.val,opr_dest.val);
	cpu.eflags.CF=0;
	cpu.eflags.OF=0;

}

make_instr_impl_2op(test,r,rm,v)
make_instr_impl_2op(test,r,rm,b)
make_instr_impl_2op(test,i,rm,v)
make_instr_impl_2op(test,i,rm,b)
make_instr_impl_2op(test,i,a,v)
make_instr_impl_2op(test,i,a,b)

/*
int test_r2r_v(uint32_t eip,uint8_t opcode){
	OPERAND src,dest;
	src.type=OPR_REG;
	src.data_size=data_size;
	src.addr=eip+1;

	dest.type=OPR_REG;
	dest.data_size=data_size;
	dest.addr=eip+1;

	operand_read(&src);
	operand_read(&dest);
	//dest.val&=src.val;
	alu_and(src.val,dest.val);
	cpu.eflags.CF=0;
	cpu.eflags.OF=0;
	//alu_and(src.val,dest.val);
	//operand_write(&dest);
	print_asm_2("test",src.data_size==16?"w":"l",src.data_size/8,&src,&dest);

	return 2;

}
*/
