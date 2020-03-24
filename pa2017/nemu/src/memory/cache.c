#include "nemu.h"
#include "memory/mmu/segment.h"
#include "memory/mmu/page.h"
#include "memory/mmu/tlb.h"
#include "cpu/cpu.h"
#include "memory/memory.h"
#include "device/mm_io.h"
#include <memory.h>
#include <stdio.h>
#include <memory/cache.h>
#include <time.h>
#include <stdlib.h>


int CACHE_ROW=1024;
//CacheLine cachelist[1024];

void init_cache(){
	
	for(int i=0;i<CACHE_ROW;i++){
		cachelist[i].valid_bit=0;
		cachelist[i].tag=0;
		memset(cachelist[i].data,0,64);
	}
	//printf("init_cache succ!\n");
}
/*
uint32_t cache_read(paddr_t paddr, size_t len, CacheLine *cache)
{
	uint16_t t,q,b;
	t = (paddr>>13) & 0x3fff;
	q = (paddr>>6) & 0x7f;
	b = paddr & 0x3f;

	if(b+len>64)
	{
		uint32_t value=0;
		value = hw_mem_read(paddr, len);
		return value;
	}
	uint32_t no_line=q*8;
	for(int i=0;i<8;i++)
	{
		if(t==cache[no_line+i].tag && cache[no_line+i].valid_bit==1)
		{
			uint32_t value=0;
			memcpy(&value,&cache[no_line+i].data[b],len);
			return value;
		}
	}

	int32_t no=-1;
	for(int i=0;i<8;i++)
	{
		if(cache[no_line+i].valid_bit==0)
		{
			no=no_line+i;
			break;
		}
	}
	if(no==-1)
	{
		srand((int)time(0));
		no=no_line+rand()%(7-0+1);
	}

	cache[no].valid_bit=1;
	cache[no].tag=(uint16_t)t;
	memcpy(&cache[no].data[0],hw_mem+(paddr&0x7ffffc0),64);

	uint32_t value=0;
	memcpy(&value,&cache[no].data[b],len);
	return value;
}
*/
uint32_t cache_read(paddr_t paddr,size_t len,CacheLine* cache){
	uint16_t target_tag=(paddr>>13)&0x3fff;
	uint16_t target_group=(paddr>>6)&0x7f;
	uint16_t target_offset=paddr&0x3f;
	uint32_t value=0;
	int i=8*target_group;

	if(target_offset+len>64){
		value=hw_mem_read(paddr,len);
		return value;
	}
	for(;i<8*target_group+8;i++){
		if(cache[i].tag==target_tag
			&& cache[i].valid_bit==1){//hit!
			//printf("hit\n");
			//if(target_offset <= 64-len)
				//value=0;
				memcpy(&value, &cache[i].data[target_offset], len);
				//hw_mem_write(&value,len,cache[i].data[target_offset]);
			//else{
				//memcpy(&value,hw_mem+paddr,len);
			//	value=hw_mem_read(paddr,len);
			    return value;
			//}
		}
	}
	//printf("here2\n");
	int empty=-1;
	//if(i==8*target_group+8){//miss!
		for(int j=8*target_group;j<8*target_group+8;j++){
			if(cache[j].valid_bit==0){//find an empty room
				empty=j;
				break;
			}
		}
		if(empty!=-1){//find an empty room
			//printf("here4.1 empty=%d\n",empty);
			//memset(cache[empty].data,0,64);
			//printf("here4.11 paddr=0x%x\n",paddr);
			memcpy(cache[empty].data,hw_mem+(paddr&0x7ffffc0),64);
			//value=0;
			memcpy(&value,&cache[empty].data[target_offset],len);
			cache[empty].valid_bit=1;
			cache[empty].tag=target_tag;
		}
		else{//no empty room --> randomly replace
			srand((unsigned)time(0));
			int random_target=rand()%8;
			//memset(cache[8*target_group+random_target].data,0,64);
			memcpy(cache[8*target_group+random_target].data,hw_mem+(paddr&0x7ffffc0),64);
			//value=0;
			memcpy(&value,&cache[8*target_group+random_target].data[target_offset],len);
			cache[8*target_group+random_target].valid_bit=1;
			cache[8*target_group+random_target].tag=target_tag;
			//memcpy(&value,&cache[8*target_group+random_target].data[target_offset],len);
		}

	return value;
}

void cache_write(paddr_t paddr,size_t len,uint32_t data,CacheLine* cache){
	uint32_t target_tag=(paddr>>13)&0x3fff;
	uint32_t target_group=(paddr>>6)&0x7f;
	uint32_t target_offset=paddr&0x3f;
	int i=8*target_group;
	if(target_offset>64-len){
		hw_mem_write(paddr,len,data);
		return;
	}
	for(;i<8*target_group+8;i++){
		if(cache[i].tag==target_tag
			&& cache[i].valid_bit==1){//hit!
			memcpy(&cache[i].data[target_offset],&data,len);
			//memcpy(hw_mem+paddr,&data,len);
			hw_mem_write(paddr,len,data);
			return;
		}
	}
	if(i==8*target_group+8){//miss
		//memcpy(hw_mem+paddr,&data,len);
		hw_mem_write(paddr,len,data);
	}	
}
