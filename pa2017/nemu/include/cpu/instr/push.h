#ifndef __INSTR_PUSH_H
#define __INSTR_PUSH_H

make_instr_func(push_r_v);
make_instr_func(push_i_v);
make_instr_func(push_rm_v);
make_instr_func(push_i_b);
//int push_r_v(uint32_t eip,uint8_t opcode);
//int push_i_v(uint32_t eip,uint8_t opcode);
void push_eip(uint32_t eip);

#endif
