#include"cpu/instr.h"

static void instr_execute_2op(){
		operand_read(&opr_src);
		operand_read(&opr_dest);
		if(opr_src.type==OPR_IMM && opr_src.data_size<opr_dest.data_size)
			opr_dest.val=alu_add(sign_ext(opr_src.val,opr_src.data_size),opr_dest.val);
		else
			opr_dest.val=alu_add(opr_src.val,opr_dest.val);
		operand_write(&opr_dest);
}
make_instr_impl_2op(add,i,rm,v)
make_instr_impl_2op(add,i,a,v)
make_instr_impl_2op(add,r,rm,v)
make_instr_impl_2op(add,i,rm,bv)
/*
int add_i2r_v(uint32_t eip,uint8_t opcode){
	OPERAND src,dest;
	src.type=OPR_IMM;
	src.data_size=data_size;
	src.addr=eip+2;
	operand_read(&src);

	dest.type=OPR_REG;
	dest.data_size=data_size;
	dest.addr=opcode&0x7;
	
	operand_read(&src);
	dest.val=alu_add(src.val,dest.val);
	operand_write(&dest);
	print_asm_2("add",src.data_size==16?"w":"l",src.data_size/8,&src,&dest);

	return 2+src.data_size/8;



}*/


