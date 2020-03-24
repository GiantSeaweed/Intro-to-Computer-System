#include"cpu/instr.h"

static void instr_execute_2op(){
	opr_dest.val=opr_src.addr;
	operand_write(&opr_dest);

}
make_instr_impl_2op(lea,rm,r,v)
/*
int lea_m2r_v(uint32_t eip,uint8_t opcode){
		OPERAND src,dest;
		src.type=OPR_MEM;
		src.data_size=data_size;
		src.addr=eip+2;

		operand_read(&opr_src);

		dest.type=OPR_REG;
		dest.data_size=data_size;
		dest.val=src.val;

*/
		
