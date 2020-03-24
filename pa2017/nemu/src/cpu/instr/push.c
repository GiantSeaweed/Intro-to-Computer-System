#include"cpu/instr.h"
static void instr_execute_1op(){
	// opr_src.sreg=SREG_SS;
	operand_read(&opr_src);
	cpu.esp-=data_size/8;
	laddr_write(cpu.esp,data_size/8,opr_src.val);
}

make_instr_impl_1op(push,r,v)
make_instr_impl_1op(push,i,v)
make_instr_impl_1op(push,rm,v)

		/*
int push_r_v(uint32_t eip,uint8_t opcode){
		OPERAND src;
		src.data_size=data_size;
		src.type=OPR_REG;
		src.addr=opcode&0x7;

		operand_read(&src);
		cpu.esp-=src.data_size/8;
		paddr_write(cpu.esp,src.data_size/8,src.val);
		print_asm_1("push",src.data_size==16?"w":"l",1,&src);

		return 1;
}*/
int push_i_b(uint32_t eip,uint8_t opcode){
		OPERAND src;
		src.data_size=8;
		src.type=OPR_IMM;
		src.addr=eip+1;
		src.sreg=SREG_SS;
		operand_read(&src);
	//	cpu.esp-=src.data_size/8;
		cpu.esp-=4;
		laddr_write(cpu.esp,4,sign_ext(src.val,data_size));
		print_asm_1("push","b",1,&src);
		return 1+src.data_size/8;
}
void push_eip(uint32_t eip){
		cpu.esp-=4;
		laddr_write(cpu.esp,4,eip);
	
}


