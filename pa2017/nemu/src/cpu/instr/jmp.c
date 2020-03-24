#include "cpu/instr.h"

make_instr_func(jmp_near) {
        OPERAND rel;
        rel.type = OPR_IMM;
		rel.sreg = SREG_SS;
        rel.data_size = data_size;
        rel.addr = eip + 1;
        operand_read(&rel);

	int offset = sign_ext(rel.val, data_size);
	print_asm_1("jmp", "",  1 + data_size / 8, &rel);

	cpu.eip += offset;

        return 1 + data_size / 8;
}

make_instr_func(jmp_short_b){
	OPERAND rel;
	rel.type=OPR_IMM;

	rel.sreg=SREG_SS;//load_sreg(SREG_SS);

	rel.data_size=8;
	rel.addr=eip+1;
	
	operand_read(&rel);

	//int offset=rel.val&0xff;
	int offset=sign_ext(rel.val,8);
	print_asm_1("jmp","",1+rel.data_size/8,&rel);

	//cpu.eip+=offset;

	return 1+rel.data_size/8+offset;

}

/*static void instr_execute_1op(){
		operand_read(&opr_src);
		//cpu.eip=opr_src.val;
		uint32_t offset=modrm_rm(cpu.eip+1,&opr_src);
		if(
		cpu.eip=paddr_read(opr_src.addr,4)-offset-2-data_size/8;
}*/
make_instr_func(jmp_rm_v){
	OPERAND mem;
			//mem.type=OPR_MEM;
	mem.data_size=data_size;
			//mem.addr=eip+1;//operand_read(&mem);
	
	uint32_t offset=modrm_rm(eip+1,&mem);
	operand_read(&mem);
	print_asm_1("jmp","*",offset+1,&mem);
				//	printf("eip should be :%x\n",paddr_read(cpu.edx*4+223828,4));
	if(mem.data_size==16)
		cpu.eip=mem.val&0xffff;
	else 
		cpu.eip=mem.val;
	return 0;
}
make_instr_func(ljmp){
	int len=1;
	if(data_size==32){
					 //paddr_write(cpu.segReg[SREG_CS].val,2,tmp);
		uint16_t tmp=0xffff&laddr_read(eip+5,2);
		cpu.segReg[SREG_CS].val=tmp;
					 //paddr_write((uint32_t)&cpu.eip,4,paddr_read(eip+1,4));
		cpu.eip=laddr_read(eip+1,4);
		len+=6;
	}
	else{
					//paddr_write((uint32_t)&cpu.cs,2,0xffff&paddr_read(eip+1+2,2));
					//paddr_write(cpu.eip,2,paddr_read(eip+1,2));
		uint16_t tmp=0xffff&laddr_read(eip+3,2);
		cpu.segReg[SREG_CS].val=tmp;
					 //paddr_write((uint32_t)&cpu.eip,4,paddr_read(eip+1,4));
		cpu.eip=laddr_read(eip+1,2);
		len+=4;
	}
	load_sreg(SREG_CS);
	return 0;
}
