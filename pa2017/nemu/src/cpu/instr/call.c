#include"cpu/instr.h"
/*static void instr_execute_1op(){
	operand_read(&opr_src);
	//cpu.eip+=1+opr_src.data_size/8;
	cpu.esp-=opr_src.data_size/8;
	paddr_write(cpu.esp,opr_src.data_size/8,cpu.eip+1+opr_src.data_size/8);
}
make_instr_impl_1op(call,i,v)
make_instr_impl_1op(call,rm,v)
*/
		
int call_i_v(uint32_t eip,uint8_t opcode){
		OPERAND imm;
		imm.type=OPR_IMM;
		imm.data_size=data_size;
		imm.addr=eip+1;
		imm.sreg=SREG_CS;
		operand_read(&imm);

		eip+=1+imm.data_size/8;
		cpu.esp-=imm.data_size/8;
		laddr_write(cpu.esp,imm.data_size/8,eip);//push eip
		//push_eip(eip);
		//(eip)+=imm.val;
		print_asm_1("call","",1+imm.data_size/8,&imm);
		return 1+imm.data_size/8+imm.val;
		//return 0;
}
int call_rm_v(uint32_t eip,uint8_t opcode){
	OPERAND opr_src;
	opr_src.type=OPR_MEM;
	opr_src.addr=eip+1;
	opr_src.sreg=SREG_SS;
	//load_sreg(SREG_SS);
	opr_src.data_size=data_size;

	uint32_t offset=modrm_rm(eip+1,&opr_src);
	operand_read(&opr_src);
	eip+=1+offset;
	cpu.esp-=4;
	laddr_write(cpu.esp,4,eip);
	print_asm_1("call","",opr_src.val,&opr_src);
	
	if(opr_src.data_size==16){
			opr_src.val=opr_src.val&0xffff;
	}
	cpu.eip=opr_src.val;
	//printf("after call:eip=%x\n",cpu.eip);
	return 0;
	


}

