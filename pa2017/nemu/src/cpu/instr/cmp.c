#include "cpu/instr.h"

static void instr_execute_2op(){
		operand_read(&opr_src);
		operand_read(&opr_dest);
		if(opr_src.type==OPR_IMM && opr_src.data_size<opr_dest.data_size)
			alu_sub(sign_ext(opr_src.val,opr_src.data_size),opr_dest.val);
		else
			alu_sub(opr_src.val,opr_dest.val);
//		printf("0x7fffffdc:0x%x\n",paddr_read(cpu.ebp-16,4));
	//	printf("of=%d,cf=%d,sf=%d,zf=%d\n",cpu.eflags.OF,cpu.eflags.CF,cpu.eflags.SF,cpu.eflags.ZF);
}

make_instr_impl_2op(cmp,i,rm,bv)
make_instr_impl_2op(cmp,r,rm,v)
make_instr_impl_2op(cmp,i,rm,v)
make_instr_impl_2op(cmp,rm,r,v)
make_instr_impl_2op(cmp,i,a,b)
make_instr_impl_2op(cmp,i,rm,b)
make_instr_impl_2op(cmp,rm,r,b)
make_instr_impl_2op(cmp,i,a,v)
/*
int cmp_i2r_bv(uint32_t eip,uint8_t opcode){
//	uint8_t imm=instr_fetch(eip+2,1);
//	uint8_t regIdx=opcode&0x7;
//	alu_sub((uint32_t)cpu.gpr[regIdx]._8[0],imm);
	OPERAND imm,rm;
	imm.type=OPR_IMM;
	imm.addr=eip+2;
	imm.data_size=8;
	operand_read(&imm);

	rm.data_size=data_size;
	rm.type=OPR_REG;
//	rm.addr=opcode&0x7;

	operand_read(&imm);
	modrm_rm(eip+1,&rm);
	alu_sub(imm.val,cpu.gpr[rm.addr]._32);
	
	print_asm_2("cmp","l",3,&imm,&rm);
	return 3;	
}






*/
