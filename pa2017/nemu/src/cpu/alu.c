#include "cpu/cpu.h"
#include<stdlib.h>


void set_CF_add(uint32_t result,uint32_t src) {
	cpu.eflags.CF=(result<src);
}
void set_CF_adc(uint32_t result,uint32_t src){
	if(cpu.eflags.CF)
		cpu.eflags.CF=(result<=src);
	else
		cpu.eflags.CF=(result<src);
}
void set_CF_sub(uint32_t result, uint32_t src,uint32_t dest){
		cpu.eflags.CF=(dest<src);
}
void set_CF_sbb(uint32_t result,uint32_t src,uint32_t dest){
		if(cpu.eflags.CF==1){
			cpu.eflags.CF=(dest<=src);
		}
		else{
			cpu.eflags.CF=(dest<src);
		}
}

void set_PF(uint32_t result){
	int pf=1;
	int k=result;
	for(int i=0;i<8;i++){
			pf^=(k&0x1);
			k=k>>1;
	}
	cpu.eflags.PF=pf;
}

void set_ZF(uint32_t result){
		cpu.eflags.ZF=(result==0);
}

void set_SF(uint32_t result){
		cpu.eflags.SF=sign(result);
}

void set_OF_add(uint32_t result,uint32_t src,uint32_t dest){
		if(sign(src)==sign(dest)){
				if(sign(src)!=sign(result)){
					cpu.eflags.OF=1;
				}
				else{
					cpu.eflags.OF=0;
				}
		}	
		else{
				cpu.eflags.OF=0;
		}
}
void set_OF_sub(uint32_t result,uint32_t src,uint32_t dest){
		//src=~src;
		if(sign(~src)!=sign(dest)){//sub between both pos/neg
			cpu.eflags.OF=0;
		}
		else{
			if(sign(dest)==sign(result)){
				cpu.eflags.OF=0;//pos-neg==pos|neg-pos==neg
			}
			else if(sign(dest)!=sign(result)){
				cpu.eflags.OF=1;
			}
		}
}



uint32_t alu_add(uint32_t src, uint32_t dest) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	uint32_t result=dest+src;
	set_SF(result);
	set_OF_add(result,src,dest);
	set_ZF(result);
	set_PF(result);
	set_CF_add(result,src);
	
	//assert(0);
	return result;
}
uint32_t alu_adc(uint32_t src, uint32_t dest) {
//	printf("[0;31mPlease implement me at alu.c\e[0m\n");
	uint32_t res=src+dest+cpu.eflags.CF;
	set_ZF(res);
	set_SF(res);
	set_OF_add(res,src,dest);
    set_CF_adc(res,src);//+cpu.eflags.CF);
	set_PF(res);
//	int cf=(res<src);
//	if(res<src){
//		res+=1;
//		printf("IN\n");
//	}
//	assert(0);
	return res;
}
uint32_t alu_sub(uint32_t src, uint32_t dest) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	uint32_t res=dest-src;
	set_CF_sub(res,src,dest);
	set_OF_sub(res,src,dest);
	set_SF(res);
	set_PF(res);
	set_ZF(res);
	
	return res;
}
uint32_t alu_sbb(uint32_t src, uint32_t dest) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	uint32_t res=dest-src-cpu.eflags.CF;
	set_OF_sub(res,src,dest);
	set_ZF(res);
	set_PF(res);
	set_CF_sbb(res,src,dest);
	set_SF(res);
	return res;

}


uint64_t alu_mul(uint32_t src, uint32_t dest, size_t data_size) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//only test 'data_size==32'
	uint64_t res=(uint64_t)dest*(uint64_t)src;
	uint64_t test=(res>>(data_size))&(((uint64_t)1<<(data_size))-1);
	if(test==0){
			cpu.eflags.CF=0;
			cpu.eflags.OF=0;
	}
	else{
			cpu.eflags.CF=1;
			cpu.eflags.OF=1;
	}
	set_PF(res);
	set_ZF(res);
	set_SF(res);

	return res;
}

int64_t alu_imul(int32_t src, int32_t dest, size_t data_size) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	int64_t res=(int64_t)src*(int64_t)dest;
	return res;
}

uint32_t alu_div(uint64_t src, uint64_t dest, size_t data_size) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	if(src==0){
		exit(0);
	}
	uint32_t res=dest/src;	
	return res;
}

int32_t alu_idiv(int64_t src, int64_t dest, size_t data_size) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	if(src==0){
		exit(0);
	}
	int32_t res=dest/src;
	return res;
}

uint32_t alu_mod(uint64_t src, uint64_t dest) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	if(src==0){
			exit(0);
	}
	uint32_t res=dest%src;
	return res;
}

int32_t alu_imod(int64_t src, int64_t dest) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	//assert(0);
	if(src==0){
		exit(0);
	}
	int32_t res=dest%src;
	return res;
}



uint32_t alu_and(uint32_t src, uint32_t dest) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	uint32_t res=src&dest;
	set_PF(res);
	set_SF(res);
	set_ZF(res);
	cpu.eflags.CF=0;
	cpu.eflags.OF=0;
	return res;
}
uint32_t alu_xor(uint32_t src, uint32_t dest) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	uint32_t res=src^dest;
	set_PF(res);
	set_SF(res);
	set_ZF(res);
	cpu.eflags.CF=0;
	cpu.eflags.OF=0;
	return res;
}
uint32_t alu_or(uint32_t src, uint32_t dest) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);	
	uint32_t res=src|dest;
	set_PF(res);
	set_SF(res);
	set_ZF(res);
	cpu.eflags.CF=0;
	cpu.eflags.OF=0;
	return res;
}
		

uint32_t alu_shl(uint32_t src, uint32_t dest, size_t data_size) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);	
	
	uint32_t mask=0xffffffff;//uesless initial
	switch(data_size)
	{
			case 8:mask=0xff;break;
			case 16:mask=0xffff;break;
			case 32:mask=0xffffffff;break;
	}
	uint32_t low_data=dest&mask;
	cpu.eflags.CF=(low_data&(1<<(data_size-src)))>>(data_size-src);//directly visit the high-order bit

	low_data=low_data<<src;
	cpu.eflags.SF=sign(low_data<<(32-data_size));

	low_data=low_data&mask;
	set_ZF(low_data);

	dest=(dest&~mask)|low_data;
	set_PF(dest);
	return dest;
}
uint32_t alu_shr(uint32_t src, uint32_t dest, size_t data_size) {
	uint32_t mask=0xffffffff;//uesless initial
	switch(data_size)
	{
			case 8:mask=0xff;break;
			case 16:mask=0xffff;break;
			case 32:mask=0xffffffff;break;
	}
	uint32_t low_data=dest&mask;
	cpu.eflags.CF=(low_data&(1<<(src-1)))>>(src-1);//directly visit the high-order bit

	low_data=low_data>>src;
	cpu.eflags.SF=sign(low_data<<(32-data_size));

	low_data=low_data&mask;
	set_ZF(low_data);

	dest=(dest&~mask)|low_data;
	set_PF(dest);
	return dest;
}
uint32_t alu_sar(uint32_t src, uint32_t dest, size_t data_size) {
	//printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	uint32_t mask=0xffffffff;//uesless initial
	switch(data_size)
	{
			case 8:mask=0xff;break;
			case 16:mask=0xffff;break;
			case 32:mask=0xffffffff;break;
	}
	uint32_t low_data=dest&mask;
	cpu.eflags.CF=(low_data&(1<<(src-1)))>>(src-1);//directly visit the high-order bit

	low_data=low_data<<(32-data_size);
	low_data=(int)low_data>>src;
	low_data=low_data>>(32-data_size);
	cpu.eflags.SF=sign(low_data<<(32-data_size));

	low_data=low_data&mask;
	set_ZF(low_data);

	dest=(dest&~mask)|low_data;
	set_PF(dest);
	return dest;
}
uint32_t alu_sal(uint32_t src, uint32_t dest, size_t data_size) {

	uint32_t mask=0xffffffff;//uesless initial
	switch(data_size)
	{
			case 8:mask=0xff;break;
			case 16:mask=0xffff;break;
			case 32:mask=0xffffffff;break;
	}
	uint32_t low_data=dest&mask;
	cpu.eflags.CF=(low_data&(1<<(data_size-src)))>>(data_size-src);//directly visit the high-order bit

	low_data=low_data<<src;
	cpu.eflags.SF=sign(low_data<<(32-data_size));

	low_data=low_data&mask;
	set_ZF(low_data);

	dest=(dest&~mask)|low_data;
	set_PF(dest);
	return dest;
}

