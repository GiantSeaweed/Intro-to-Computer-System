#include "nemu.h"
#include "cpu/reg.h"
#include "memory/memory.h"

#include <stdlib.h>
#include "monitor/elf.h"
/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>

bool match_parentheses(int p,int q);
bool check_parentheses(int p,int q);
uint32_t level(int c);
uint32_t dominant_op(int p ,int q);

enum {
	NOTYPE = 256, EQ,NEQ,NUM,NEG,POINTER,
	VAR,REG,HEX,AND,OR,NOT
	/* TODO: Add more token types */

};

static struct rule {
	char *regex;
	int token_type;
} rules[] = {

	/* TODO: Add more rules.
	 * Pay attention to the precedence level of different rules.
	 */
	{"0[xX][0-9a-fA-F]+",HEX},
	{" +",	NOTYPE},	// white space
	{"[0-9]+",NUM},
	{"\\$[a-zA-Z]+",REG},
	{"\\+", '+'},
	{"-",'-'},
	{"\\*",'*'},
	{"/",'/'},
	{"\\(",'('},
	{"\\)",')'},
	{"[a-zA-Z_0-9]+",VAR},
	{"&&",AND},
	{"\\|\\|",OR},
	{"==", EQ},
	{"!=",NEQ},
	{"!",NOT}
};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]) )

static regex_t re[NR_REGEX];

/* Rules are used for more times.
 * Therefore we compile them only once before any usage.
 */
void init_regex() {
	int i;
	char error_msg[128];
	int ret;

	for(i = 0; i < NR_REGEX; i ++) {
		ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
		if(ret != 0) {
			regerror(ret, &re[i], error_msg, 128);
			assert(ret != 0);
		}
	}
}

typedef struct token {
	int type;
	char str[32];
} Token;

Token tokens[32];
int nr_token;

static bool make_token(char *e) {
	int position = 0;
	int i;
	regmatch_t pmatch;
	
	nr_token = 0;
	while(e[position] != '\0') {
		/* Try all rules one by one. */
		for(i = 0; i < NR_REGEX; i ++) {
			if(regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
				char *substr_start = e + position;
				int substr_len = pmatch.rm_eo;

				printf("match regex[%d] at position %d with len %d: %.*s\n", i, position, substr_len, substr_len, substr_start);
				
				position += substr_len;
					
				/* TODO: Now a new token is recognized with rules[i]. 
				 * Add codes to perform some actions with this token.
				 */


				switch(rules[i].token_type) {
				   	default :strncpy(tokens[nr_token].str,substr_start,substr_len);
						     tokens[nr_token].str[substr_len]='\0';            
							 tokens[nr_token].type = rules[i].token_type;
							 //printf("expr.c fsw tokens.str=%s type=%d\n",tokens[nr_token].str,tokens[nr_token].type);
							 nr_token ++;
				}
				
				break;
			}
		}

		if(i == NR_REGEX) {
			printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
			return false;
		}
	}

	return true; 
}

uint32_t eval(int p,int q,bool *success){
	//char* tmp;sscanf(tmp,e+p,q-p+1);
	//printf("fsw in eval p=%d,q=%d\n p--q:",p,q);
	//for(int i=p;i<=q;i++){
		//printf("%s ",tokens[i].str);
	//}
	//printf("\n");

	if(p>q){
		/*Bad expression*/
		*success=false;
		return 0;
	}
	else if(p==q){
			/*single token. From now this token should be a number
			 * Return the value of the number
			 */
		if(tokens[p].type==NUM){
			uint32_t value;
			sscanf(tokens[p].str,"%d",&value);
			//printf("fsw tokens.str=%s value=%d\n",tokens[p].str,value);
			return value;
		}
		else if(tokens[p].type==HEX){
			uint32_t value;
			sscanf(tokens[p].str+2,"%x",&value);
			//printf("fsw tokens.str=%s value=%d\n",tokens[p].str,value);
			return value;
		}
		else if(tokens[p].type==VAR){
			return look_up_symtab(tokens[p].str,success);
		}
		else if(tokens[p].type==REG){
			int len=strlen(tokens[p].str);
			for(int i=0;i<=len-1;i++){
				if(tokens[p].str[i]=='$')
					tokens[p].str[i]='%';
				else if(tokens[p].str[i]>='A'&& tokens[p].str[i]<='Z'){
					tokens[p].str[i]+=32;
				}			
			}
			//printf("reg! tokens[p].str=%s\n",tokens[p].str);
			return get_reg_val(tokens[p].str+1,success);
					
		}

	}
	else if(check_parentheses(p,q)==true){
		/*This expression is surrounded by a matched pair of parentheses
		 * If that is the case,just throw away the parenthese.
		 */
			return eval(p+1,q-1,success);
	}
	else{
		/* TODO:op=the position of dominant operator in the token expression*/
		
		uint32_t op=dominant_op(p,q);
		//printf("dominant_op:%d,%d\n",op,tokens[op].type);
		if(tokens[op].type==NEG){//one opeartor '-'
			int tmp;
			if(tokens[op+1].type=='('||tokens[op+1].type==POINTER)
				tmp=eval(op+1,q,success);
			else
				sscanf(tokens[op+1].str,"%d",&tmp);
			
			tmp=0-tmp;
			sprintf(tokens[op+1].str,"%d",tmp);
			//printf("sprintf! str=%s\n",tokens[op+1].str);
			return tmp;//eval(op+1,q,success);
		}
		else if(tokens[op].type==NOT){//one opeartor '!'
			int tmp;
			if(tokens[op+1].type=='('||tokens[op+1].type==POINTER)
				tmp=eval(op+1,q,success);
			else
				sscanf(tokens[op+1].str,"%d",&tmp);
			tmp=!tmp;
			sprintf(tokens[op+1].str,"%d",tmp);
			//printf("sprintf! str=%s\n",tokens[op+1].str);
			return tmp;//eval(op+1,q,success);
		}
		else if(tokens[op].type==POINTER){
			int data=eval(op+1,q,success);
			return paddr_read(data,4);
		}
		else{	
			uint32_t val1=eval(p,op-1,success);
			uint32_t val2=eval(op+1,q,success);
			switch(tokens[op].type){
					case'+':return val1+val2;
					case'-':return val1-val2;
					case'*':return val1*val2;
					case'/':return val1/val2;
					case EQ:return (val1==val2);
					case NEQ:return (val1!=val2);
					case AND:return (val1&&val2);
					case OR:return (val1||val2);
				    default:*success=false;return 0;//assert(0);
			}	
		}
	}
    return 33;
}

bool check_parentheses(int p,int q){//obey the rules
	if(tokens[p].type=='(' && tokens[q].type==')'){
		if(match_parentheses(p+1,q-1)==true){
			return true;
		}
		else
			return false;
	}
	else{
		return false;
	}	
	
}
bool match_parentheses(int p,int q){//number is the the same
	int left_num=0,right_num=0;
	for(int i=p;i<=q;i++){
		if(tokens[i].type=='(')
			left_num++;
		else if(tokens[i].type==')')
			right_num++;
		
		if(right_num>left_num)
			return false;	
	}
	if(left_num==right_num)
		return true;
	else
		return false;
}
uint32_t dominant_op(int p,int q){
	int i=p,result_level=20,result_pos=p;
	for(;i<=q;i++){
		if(tokens[i].type=='('){
			while(tokens[i].type!=')')
				i++;
			i++;
		}
	//	i++;

		if(tokens[i].type!='+'&&tokens[i].type!='-'
			&&tokens[i].type!='*'&&tokens[i].type!='/'
			&&tokens[i].type!=EQ &&tokens[i].type!=NEQ
			&&tokens[i].type!=AND&&tokens[i].type!=OR
			&&tokens[i].type!=NOT
			){
				continue;
		}
		else{
			//printf("ha level(tokens[%d].type=%d),resultlevel=%d\n",i,level((int)tokens[i].type),result_level);
			if(level((int)tokens[i].type)<=result_level){
				result_level=level((int)tokens[i].type);
				result_pos=i;
			}
		}

	}
	return result_pos;
}
uint32_t level(int c){
		switch(c){
			case NOT:
			case NEG:return 9;
			case '*':
			case '/':return 7;
			case '+':
			case '-':return 5;
			case NEQ:
			case EQ:return 3;
			case AND:
			case OR:return 1;
			default:return 0;
		}
}

uint32_t expr(char *e, bool *success) {
	if(!make_token(e)) {
		*success = false;
		return 0;
	}
	for(int i=0;i<nr_token-1;i++){
		if((i==0 && tokens[i].type=='-' && (tokens[i+1].type==NUM||tokens[i+1].type==HEX||tokens[i+1].type=='('))
			||((tokens[i-1].type!=NUM&&tokens[i-1].type!=HEX )&& tokens[i].type=='-' 
			   && (tokens[i+1].type==NUM||tokens[i+1].type==HEX))){

			tokens[i].type=NEG;
		}	
	}
	for(int i=0;i<nr_token-1;i++){
		if((i==0 && tokens[i].type=='*')
			||((tokens[i-1].type!=NUM&&tokens[i-1].type!=HEX )
			   && tokens[i-1].type!=')'
			   && tokens[i-1].type!=VAR 
			   && tokens[i-1].type!=REG && tokens[i-1].type!=HEX && tokens[i].type=='*' )){
			tokens[i].type=POINTER;
		}	
	}
	//printf("\nPlease implement expr at expr.c\n");
	//assert(0);
	return eval(0,nr_token-1,success);
	//return 0;
}


