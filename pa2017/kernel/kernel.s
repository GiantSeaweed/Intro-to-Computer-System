
kernel:     file format elf32-i386


Disassembly of section .text:

c0030000 <start>:
c0030000:	f1                   	icebp  
c0030001:	0f 01 15 4c 00 03 00 	lgdtl  0x3004c
c0030008:	0f 20 c0             	mov    %cr0,%eax
c003000b:	83 c8 01             	or     $0x1,%eax
c003000e:	0f 22 c0             	mov    %eax,%cr0
c0030011:	ea 18 00 03 00 08 00 	ljmp   $0x8,$0x30018

c0030018 <start_cond>:
c0030018:	66 b8 10 00          	mov    $0x10,%ax
c003001c:	8e d8                	mov    %eax,%ds
c003001e:	8e c0                	mov    %eax,%es
c0030020:	8e d0                	mov    %eax,%ss
c0030022:	bd 00 00 00 00       	mov    $0x0,%ebp
c0030027:	bc 00 00 00 08       	mov    $0x8000000,%esp
c003002c:	83 ec 10             	sub    $0x10,%esp
c003002f:	e9 4a 0b 00 00       	jmp    c0030b7e <init>

c0030034 <gdt>:
	...
c003003c:	ff                   	(bad)  
c003003d:	ff 00                	incl   (%eax)
c003003f:	00 00                	add    %al,(%eax)
c0030041:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
c0030048:	00                   	.byte 0x0
c0030049:	92                   	xchg   %eax,%edx
c003004a:	cf                   	iret   
	...

c003004c <gdtdesc>:
c003004c:	17                   	pop    %ss
c003004d:	00 34 00             	add    %dh,(%eax,%eax,1)
c0030050:	03 00                	add    (%eax),%eax

c0030052 <vec0>:
c0030052:	6a 00                	push   $0x0
c0030054:	6a 00                	push   $0x0
c0030056:	eb 72                	jmp    c00300ca <asm_do_irq>

c0030058 <vec1>:
c0030058:	6a 00                	push   $0x0
c003005a:	6a 01                	push   $0x1
c003005c:	eb 6c                	jmp    c00300ca <asm_do_irq>

c003005e <vec2>:
c003005e:	6a 00                	push   $0x0
c0030060:	6a 02                	push   $0x2
c0030062:	eb 66                	jmp    c00300ca <asm_do_irq>

c0030064 <vec3>:
c0030064:	6a 00                	push   $0x0
c0030066:	6a 03                	push   $0x3
c0030068:	eb 60                	jmp    c00300ca <asm_do_irq>

c003006a <vec4>:
c003006a:	6a 00                	push   $0x0
c003006c:	6a 04                	push   $0x4
c003006e:	eb 5a                	jmp    c00300ca <asm_do_irq>

c0030070 <vec5>:
c0030070:	6a 00                	push   $0x0
c0030072:	6a 05                	push   $0x5
c0030074:	eb 54                	jmp    c00300ca <asm_do_irq>

c0030076 <vec6>:
c0030076:	6a 00                	push   $0x0
c0030078:	6a 06                	push   $0x6
c003007a:	eb 4e                	jmp    c00300ca <asm_do_irq>

c003007c <vec7>:
c003007c:	6a 00                	push   $0x0
c003007e:	6a 07                	push   $0x7
c0030080:	eb 48                	jmp    c00300ca <asm_do_irq>

c0030082 <vec8>:
c0030082:	6a 08                	push   $0x8
c0030084:	eb 44                	jmp    c00300ca <asm_do_irq>

c0030086 <vec9>:
c0030086:	6a 00                	push   $0x0
c0030088:	6a 09                	push   $0x9
c003008a:	eb 3e                	jmp    c00300ca <asm_do_irq>

c003008c <vec10>:
c003008c:	6a 0a                	push   $0xa
c003008e:	eb 3a                	jmp    c00300ca <asm_do_irq>

c0030090 <vec11>:
c0030090:	6a 0b                	push   $0xb
c0030092:	eb 36                	jmp    c00300ca <asm_do_irq>

c0030094 <vec12>:
c0030094:	6a 0c                	push   $0xc
c0030096:	eb 32                	jmp    c00300ca <asm_do_irq>

c0030098 <vec13>:
c0030098:	6a 0d                	push   $0xd
c003009a:	eb 2e                	jmp    c00300ca <asm_do_irq>

c003009c <vec14>:
c003009c:	6a 0e                	push   $0xe
c003009e:	eb 2a                	jmp    c00300ca <asm_do_irq>

c00300a0 <vecsys>:
c00300a0:	6a 00                	push   $0x0
c00300a2:	68 80 00 00 00       	push   $0x80
c00300a7:	eb 21                	jmp    c00300ca <asm_do_irq>

c00300a9 <irq0>:
c00300a9:	6a 00                	push   $0x0
c00300ab:	68 e8 03 00 00       	push   $0x3e8
c00300b0:	eb 18                	jmp    c00300ca <asm_do_irq>

c00300b2 <irq1>:
c00300b2:	6a 00                	push   $0x0
c00300b4:	68 e9 03 00 00       	push   $0x3e9
c00300b9:	eb 0f                	jmp    c00300ca <asm_do_irq>

c00300bb <irq14>:
c00300bb:	6a 00                	push   $0x0
c00300bd:	68 f6 03 00 00       	push   $0x3f6
c00300c2:	eb 06                	jmp    c00300ca <asm_do_irq>

c00300c4 <irq_empty>:
c00300c4:	6a 00                	push   $0x0
c00300c6:	6a ff                	push   $0xffffffff
c00300c8:	eb 00                	jmp    c00300ca <asm_do_irq>

c00300ca <asm_do_irq>:
c00300ca:	60                   	pusha  
c00300cb:	54                   	push   %esp
c00300cc:	e8 69 08 00 00       	call   c003093a <irq_handle>
c00300d1:	83 c4 04             	add    $0x4,%esp
c00300d4:	61                   	popa   
c00300d5:	83 c4 08             	add    $0x8,%esp
c00300d8:	cf                   	iret   

c00300d9 <in_byte>:
c00300d9:	55                   	push   %ebp
c00300da:	89 e5                	mov    %esp,%ebp
c00300dc:	83 ec 14             	sub    $0x14,%esp
c00300df:	e8 a1 00 00 00       	call   c0030185 <__x86.get_pc_thunk.ax>
c00300e4:	05 1c bf 00 00       	add    $0xbf1c,%eax
c00300e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00300ec:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c00300f0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00300f3:	89 c2                	mov    %eax,%edx
c00300f5:	ec                   	in     (%dx),%al
c00300f6:	88 45 ff             	mov    %al,-0x1(%ebp)
c00300f9:	8a 45 ff             	mov    -0x1(%ebp),%al
c00300fc:	c9                   	leave  
c00300fd:	c3                   	ret    

c00300fe <init_serial>:
c00300fe:	55                   	push   %ebp
c00300ff:	89 e5                	mov    %esp,%ebp
c0030101:	e8 7f 00 00 00       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030106:	05 fa be 00 00       	add    $0xbefa,%eax
c003010b:	90                   	nop
c003010c:	5d                   	pop    %ebp
c003010d:	c3                   	ret    

c003010e <serial_idle>:
c003010e:	55                   	push   %ebp
c003010f:	89 e5                	mov    %esp,%ebp
c0030111:	e8 6f 00 00 00       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030116:	05 ea be 00 00       	add    $0xbeea,%eax
c003011b:	68 fd 03 00 00       	push   $0x3fd
c0030120:	e8 b4 ff ff ff       	call   c00300d9 <in_byte>
c0030125:	83 c4 04             	add    $0x4,%esp
c0030128:	0f b6 c0             	movzbl %al,%eax
c003012b:	83 e0 20             	and    $0x20,%eax
c003012e:	85 c0                	test   %eax,%eax
c0030130:	0f 95 c0             	setne  %al
c0030133:	0f b6 c0             	movzbl %al,%eax
c0030136:	c9                   	leave  
c0030137:	c3                   	ret    

c0030138 <serial_printc>:
c0030138:	55                   	push   %ebp
c0030139:	89 e5                	mov    %esp,%ebp
c003013b:	53                   	push   %ebx
c003013c:	83 ec 14             	sub    $0x14,%esp
c003013f:	e8 45 00 00 00       	call   c0030189 <__x86.get_pc_thunk.bx>
c0030144:	81 c3 bc be 00 00    	add    $0xbebc,%ebx
c003014a:	8b 45 08             	mov    0x8(%ebp),%eax
c003014d:	88 45 f4             	mov    %al,-0xc(%ebp)
c0030150:	90                   	nop
c0030151:	e8 b8 ff ff ff       	call   c003010e <serial_idle>
c0030156:	85 c0                	test   %eax,%eax
c0030158:	74 f7                	je     c0030151 <serial_printc+0x19>
c003015a:	8d 83 d0 c6 ff ff    	lea    -0x3930(%ebx),%eax
c0030160:	50                   	push   %eax
c0030161:	6a 11                	push   $0x11
c0030163:	8d 83 60 c6 ff ff    	lea    -0x39a0(%ebx),%eax
c0030169:	50                   	push   %eax
c003016a:	8d 83 74 c6 ff ff    	lea    -0x398c(%ebx),%eax
c0030170:	50                   	push   %eax
c0030171:	e8 63 00 00 00       	call   c00301d9 <printk>
c0030176:	83 c4 10             	add    $0x10,%esp
c0030179:	b8 01 00 00 00       	mov    $0x1,%eax
c003017e:	82 90 8b 5d fc c9 c3 	adcb   $0xc3,-0x3603a275(%eax)

c0030185 <__x86.get_pc_thunk.ax>:
c0030185:	8b 04 24             	mov    (%esp),%eax
c0030188:	c3                   	ret    

c0030189 <__x86.get_pc_thunk.bx>:
c0030189:	8b 1c 24             	mov    (%esp),%ebx
c003018c:	c3                   	ret    

c003018d <sbrk>:
c003018d:	55                   	push   %ebp
c003018e:	89 e5                	mov    %esp,%ebp
c0030190:	53                   	push   %ebx
c0030191:	83 ec 04             	sub    $0x4,%esp
c0030194:	e8 ec ff ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030199:	05 67 be 00 00       	add    $0xbe67,%eax
c003019e:	83 ec 0c             	sub    $0xc,%esp
c00301a1:	8d 90 e0 c6 ff ff    	lea    -0x3920(%eax),%edx
c00301a7:	52                   	push   %edx
c00301a8:	8d 90 40 c7 ff ff    	lea    -0x38c0(%eax),%edx
c00301ae:	52                   	push   %edx
c00301af:	6a 08                	push   $0x8
c00301b1:	8d 90 e2 c6 ff ff    	lea    -0x391e(%eax),%edx
c00301b7:	52                   	push   %edx
c00301b8:	8d 90 f4 c6 ff ff    	lea    -0x390c(%eax),%edx
c00301be:	52                   	push   %edx
c00301bf:	89 c3                	mov    %eax,%ebx
c00301c1:	e8 13 00 00 00       	call   c00301d9 <printk>
c00301c6:	83 c4 20             	add    $0x20,%esp
c00301c9:	b8 01 00 00 00       	mov    $0x1,%eax
c00301ce:	82 b8 00 00 00 00 8b 	cmpb   $0x8b,0x0(%eax)
c00301d5:	5d                   	pop    %ebp
c00301d6:	fc                   	cld    
c00301d7:	c9                   	leave  
c00301d8:	c3                   	ret    

c00301d9 <printk>:
c00301d9:	55                   	push   %ebp
c00301da:	89 e5                	mov    %esp,%ebp
c00301dc:	53                   	push   %ebx
c00301dd:	83 ec 14             	sub    $0x14,%esp
c00301e0:	e8 a4 ff ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c00301e5:	81 c3 1b be 00 00    	add    $0xbe1b,%ebx
c00301eb:	8d 45 0c             	lea    0xc(%ebp),%eax
c00301ee:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00301f1:	8b 45 08             	mov    0x8(%ebp),%eax
c00301f4:	ff 75 f4             	pushl  -0xc(%ebp)
c00301f7:	50                   	push   %eax
c00301f8:	68 00 01 00 00       	push   $0x100
c00301fd:	8d 83 00 10 00 00    	lea    0x1000(%ebx),%eax
c0030203:	50                   	push   %eax
c0030204:	e8 07 1d 00 00       	call   c0031f10 <vsnprintf>
c0030209:	83 c4 10             	add    $0x10,%esp
c003020c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c003020f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030212:	83 ec 04             	sub    $0x4,%esp
c0030215:	50                   	push   %eax
c0030216:	8d 83 00 10 00 00    	lea    0x1000(%ebx),%eax
c003021c:	50                   	push   %eax
c003021d:	6a 01                	push   $0x1
c003021f:	e8 fc 12 00 00       	call   c0031520 <fs_write>
c0030224:	83 c4 10             	add    $0x10,%esp
c0030227:	90                   	nop
c0030228:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003022b:	c9                   	leave  
c003022c:	c3                   	ret    

c003022d <sti>:
c003022d:	55                   	push   %ebp
c003022e:	89 e5                	mov    %esp,%ebp
c0030230:	e8 50 ff ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030235:	05 cb bd 00 00       	add    $0xbdcb,%eax
c003023a:	fb                   	sti    
c003023b:	90                   	nop
c003023c:	5d                   	pop    %ebp
c003023d:	c3                   	ret    

c003023e <cli>:
c003023e:	55                   	push   %ebp
c003023f:	89 e5                	mov    %esp,%ebp
c0030241:	e8 3f ff ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030246:	05 ba bd 00 00       	add    $0xbdba,%eax
c003024b:	fa                   	cli    
c003024c:	90                   	nop
c003024d:	5d                   	pop    %ebp
c003024e:	c3                   	ret    

c003024f <sys_brk>:
c003024f:	55                   	push   %ebp
c0030250:	89 e5                	mov    %esp,%ebp
c0030252:	53                   	push   %ebx
c0030253:	83 ec 04             	sub    $0x4,%esp
c0030256:	e8 2a ff ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c003025b:	05 a5 bd 00 00       	add    $0xbda5,%eax
c0030260:	8b 55 08             	mov    0x8(%ebp),%edx
c0030263:	8b 52 10             	mov    0x10(%edx),%edx
c0030266:	83 ec 0c             	sub    $0xc,%esp
c0030269:	52                   	push   %edx
c003026a:	89 c3                	mov    %eax,%ebx
c003026c:	e8 d7 17 00 00       	call   c0031a48 <mm_brk>
c0030271:	83 c4 10             	add    $0x10,%esp
c0030274:	8b 45 08             	mov    0x8(%ebp),%eax
c0030277:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c003027e:	90                   	nop
c003027f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030282:	c9                   	leave  
c0030283:	c3                   	ret    

c0030284 <sys_open>:
c0030284:	55                   	push   %ebp
c0030285:	89 e5                	mov    %esp,%ebp
c0030287:	53                   	push   %ebx
c0030288:	83 ec 04             	sub    $0x4,%esp
c003028b:	e8 f5 fe ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030290:	05 70 bd 00 00       	add    $0xbd70,%eax
c0030295:	8b 55 08             	mov    0x8(%ebp),%edx
c0030298:	8b 52 18             	mov    0x18(%edx),%edx
c003029b:	89 d1                	mov    %edx,%ecx
c003029d:	8b 55 08             	mov    0x8(%ebp),%edx
c00302a0:	8b 52 10             	mov    0x10(%edx),%edx
c00302a3:	83 ec 08             	sub    $0x8,%esp
c00302a6:	51                   	push   %ecx
c00302a7:	52                   	push   %edx
c00302a8:	89 c3                	mov    %eax,%ebx
c00302aa:	e8 b9 11 00 00       	call   c0031468 <fs_open>
c00302af:	83 c4 10             	add    $0x10,%esp
c00302b2:	89 c2                	mov    %eax,%edx
c00302b4:	8b 45 08             	mov    0x8(%ebp),%eax
c00302b7:	89 50 1c             	mov    %edx,0x1c(%eax)
c00302ba:	90                   	nop
c00302bb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00302be:	c9                   	leave  
c00302bf:	c3                   	ret    

c00302c0 <sys_read>:
c00302c0:	55                   	push   %ebp
c00302c1:	89 e5                	mov    %esp,%ebp
c00302c3:	53                   	push   %ebx
c00302c4:	83 ec 04             	sub    $0x4,%esp
c00302c7:	e8 b9 fe ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c00302cc:	05 34 bd 00 00       	add    $0xbd34,%eax
c00302d1:	8b 55 08             	mov    0x8(%ebp),%edx
c00302d4:	8b 52 14             	mov    0x14(%edx),%edx
c00302d7:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00302da:	8b 49 18             	mov    0x18(%ecx),%ecx
c00302dd:	89 cb                	mov    %ecx,%ebx
c00302df:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00302e2:	8b 49 10             	mov    0x10(%ecx),%ecx
c00302e5:	83 ec 04             	sub    $0x4,%esp
c00302e8:	52                   	push   %edx
c00302e9:	53                   	push   %ebx
c00302ea:	51                   	push   %ecx
c00302eb:	89 c3                	mov    %eax,%ebx
c00302ed:	e8 b8 11 00 00       	call   c00314aa <fs_read>
c00302f2:	83 c4 10             	add    $0x10,%esp
c00302f5:	89 c2                	mov    %eax,%edx
c00302f7:	8b 45 08             	mov    0x8(%ebp),%eax
c00302fa:	89 50 1c             	mov    %edx,0x1c(%eax)
c00302fd:	90                   	nop
c00302fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030301:	c9                   	leave  
c0030302:	c3                   	ret    

c0030303 <sys_write>:
c0030303:	55                   	push   %ebp
c0030304:	89 e5                	mov    %esp,%ebp
c0030306:	53                   	push   %ebx
c0030307:	83 ec 04             	sub    $0x4,%esp
c003030a:	e8 76 fe ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c003030f:	05 f1 bc 00 00       	add    $0xbcf1,%eax
c0030314:	8b 55 08             	mov    0x8(%ebp),%edx
c0030317:	8b 52 14             	mov    0x14(%edx),%edx
c003031a:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003031d:	8b 49 18             	mov    0x18(%ecx),%ecx
c0030320:	89 cb                	mov    %ecx,%ebx
c0030322:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0030325:	8b 49 10             	mov    0x10(%ecx),%ecx
c0030328:	83 ec 04             	sub    $0x4,%esp
c003032b:	52                   	push   %edx
c003032c:	53                   	push   %ebx
c003032d:	51                   	push   %ecx
c003032e:	89 c3                	mov    %eax,%ebx
c0030330:	e8 eb 11 00 00       	call   c0031520 <fs_write>
c0030335:	83 c4 10             	add    $0x10,%esp
c0030338:	89 c2                	mov    %eax,%edx
c003033a:	8b 45 08             	mov    0x8(%ebp),%eax
c003033d:	89 50 1c             	mov    %edx,0x1c(%eax)
c0030340:	90                   	nop
c0030341:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030344:	c9                   	leave  
c0030345:	c3                   	ret    

c0030346 <sys_lseek>:
c0030346:	55                   	push   %ebp
c0030347:	89 e5                	mov    %esp,%ebp
c0030349:	53                   	push   %ebx
c003034a:	83 ec 04             	sub    $0x4,%esp
c003034d:	e8 33 fe ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030352:	05 ae bc 00 00       	add    $0xbcae,%eax
c0030357:	8b 55 08             	mov    0x8(%ebp),%edx
c003035a:	8b 52 14             	mov    0x14(%edx),%edx
c003035d:	89 d3                	mov    %edx,%ebx
c003035f:	8b 55 08             	mov    0x8(%ebp),%edx
c0030362:	8b 52 18             	mov    0x18(%edx),%edx
c0030365:	89 d1                	mov    %edx,%ecx
c0030367:	8b 55 08             	mov    0x8(%ebp),%edx
c003036a:	8b 52 10             	mov    0x10(%edx),%edx
c003036d:	83 ec 04             	sub    $0x4,%esp
c0030370:	53                   	push   %ebx
c0030371:	51                   	push   %ecx
c0030372:	52                   	push   %edx
c0030373:	89 c3                	mov    %eax,%ebx
c0030375:	e8 08 12 00 00       	call   c0031582 <fs_lseek>
c003037a:	83 c4 10             	add    $0x10,%esp
c003037d:	89 c2                	mov    %eax,%edx
c003037f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030382:	89 50 1c             	mov    %edx,0x1c(%eax)
c0030385:	90                   	nop
c0030386:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030389:	c9                   	leave  
c003038a:	c3                   	ret    

c003038b <sys_close>:
c003038b:	55                   	push   %ebp
c003038c:	89 e5                	mov    %esp,%ebp
c003038e:	53                   	push   %ebx
c003038f:	83 ec 04             	sub    $0x4,%esp
c0030392:	e8 ee fd ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030397:	05 69 bc 00 00       	add    $0xbc69,%eax
c003039c:	8b 55 08             	mov    0x8(%ebp),%edx
c003039f:	8b 52 10             	mov    0x10(%edx),%edx
c00303a2:	83 ec 0c             	sub    $0xc,%esp
c00303a5:	52                   	push   %edx
c00303a6:	89 c3                	mov    %eax,%ebx
c00303a8:	e8 17 12 00 00       	call   c00315c4 <fs_close>
c00303ad:	83 c4 10             	add    $0x10,%esp
c00303b0:	89 c2                	mov    %eax,%edx
c00303b2:	8b 45 08             	mov    0x8(%ebp),%eax
c00303b5:	89 50 1c             	mov    %edx,0x1c(%eax)
c00303b8:	90                   	nop
c00303b9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00303bc:	c9                   	leave  
c00303bd:	c3                   	ret    

c00303be <do_syscall>:
c00303be:	55                   	push   %ebp
c00303bf:	89 e5                	mov    %esp,%ebp
c00303c1:	53                   	push   %ebx
c00303c2:	83 ec 04             	sub    $0x4,%esp
c00303c5:	e8 bf fd ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c00303ca:	81 c3 36 bc 00 00    	add    $0xbc36,%ebx
c00303d0:	8b 45 08             	mov    0x8(%ebp),%eax
c00303d3:	8b 40 1c             	mov    0x1c(%eax),%eax
c00303d6:	83 f8 2d             	cmp    $0x2d,%eax
c00303d9:	0f 87 98 00 00 00    	ja     c0030477 <.L10>
c00303df:	c1 e0 02             	shl    $0x2,%eax
c00303e2:	8b 84 18 b8 c7 ff ff 	mov    -0x3848(%eax,%ebx,1),%eax
c00303e9:	01 d8                	add    %ebx,%eax
c00303eb:	ff e0                	jmp    *%eax

c00303ed <.L11>:
c00303ed:	e8 4c fe ff ff       	call   c003023e <cli>
c00303f2:	8b 45 08             	mov    0x8(%ebp),%eax
c00303f5:	8b 40 18             	mov    0x18(%eax),%eax
c00303f8:	89 c2                	mov    %eax,%edx
c00303fa:	8b 45 08             	mov    0x8(%ebp),%eax
c00303fd:	8b 40 10             	mov    0x10(%eax),%eax
c0030400:	83 ec 08             	sub    $0x8,%esp
c0030403:	52                   	push   %edx
c0030404:	50                   	push   %eax
c0030405:	e8 63 04 00 00       	call   c003086d <add_irq_handle>
c003040a:	83 c4 10             	add    $0x10,%esp
c003040d:	e8 1b fe ff ff       	call   c003022d <sti>
c0030412:	e9 8f 00 00 00       	jmp    c00304a6 <.L10+0x2f>

c0030417 <.L18>:
c0030417:	83 ec 0c             	sub    $0xc,%esp
c003041a:	ff 75 08             	pushl  0x8(%ebp)
c003041d:	e8 2d fe ff ff       	call   c003024f <sys_brk>
c0030422:	83 c4 10             	add    $0x10,%esp
c0030425:	eb 7f                	jmp    c00304a6 <.L10+0x2f>

c0030427 <.L15>:
c0030427:	83 ec 0c             	sub    $0xc,%esp
c003042a:	ff 75 08             	pushl  0x8(%ebp)
c003042d:	e8 52 fe ff ff       	call   c0030284 <sys_open>
c0030432:	83 c4 10             	add    $0x10,%esp
c0030435:	eb 6f                	jmp    c00304a6 <.L10+0x2f>

c0030437 <.L13>:
c0030437:	83 ec 0c             	sub    $0xc,%esp
c003043a:	ff 75 08             	pushl  0x8(%ebp)
c003043d:	e8 7e fe ff ff       	call   c00302c0 <sys_read>
c0030442:	83 c4 10             	add    $0x10,%esp
c0030445:	eb 5f                	jmp    c00304a6 <.L10+0x2f>

c0030447 <.L14>:
c0030447:	83 ec 0c             	sub    $0xc,%esp
c003044a:	ff 75 08             	pushl  0x8(%ebp)
c003044d:	e8 b1 fe ff ff       	call   c0030303 <sys_write>
c0030452:	83 c4 10             	add    $0x10,%esp
c0030455:	eb 4f                	jmp    c00304a6 <.L10+0x2f>

c0030457 <.L17>:
c0030457:	83 ec 0c             	sub    $0xc,%esp
c003045a:	ff 75 08             	pushl  0x8(%ebp)
c003045d:	e8 e4 fe ff ff       	call   c0030346 <sys_lseek>
c0030462:	83 c4 10             	add    $0x10,%esp
c0030465:	eb 3f                	jmp    c00304a6 <.L10+0x2f>

c0030467 <.L16>:
c0030467:	83 ec 0c             	sub    $0xc,%esp
c003046a:	ff 75 08             	pushl  0x8(%ebp)
c003046d:	e8 19 ff ff ff       	call   c003038b <sys_close>
c0030472:	83 c4 10             	add    $0x10,%esp
c0030475:	eb 2f                	jmp    c00304a6 <.L10+0x2f>

c0030477 <.L10>:
c0030477:	8b 45 08             	mov    0x8(%ebp),%eax
c003047a:	8b 40 1c             	mov    0x1c(%eax),%eax
c003047d:	83 ec 0c             	sub    $0xc,%esp
c0030480:	50                   	push   %eax
c0030481:	8d 83 70 c8 ff ff    	lea    -0x3790(%ebx),%eax
c0030487:	50                   	push   %eax
c0030488:	6a 35                	push   $0x35
c003048a:	8d 83 48 c7 ff ff    	lea    -0x38b8(%ebx),%eax
c0030490:	50                   	push   %eax
c0030491:	8d 83 64 c7 ff ff    	lea    -0x389c(%ebx),%eax
c0030497:	50                   	push   %eax
c0030498:	e8 3c fd ff ff       	call   c00301d9 <printk>
c003049d:	83 c4 20             	add    $0x20,%esp
c00304a0:	b8 01 00 00 00       	mov    $0x1,%eax
c00304a5:	82 90 8b 5d fc c9 c3 	adcb   $0xc3,-0x3603a275(%eax)

c00304ac <write_idtr>:
c00304ac:	55                   	push   %ebp
c00304ad:	89 e5                	mov    %esp,%ebp
c00304af:	e8 d1 fc ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c00304b4:	05 4c bb 00 00       	add    $0xbb4c,%eax
c00304b9:	8b 55 0c             	mov    0xc(%ebp),%edx
c00304bc:	4a                   	dec    %edx
c00304bd:	66 89 90 00 19 00 00 	mov    %dx,0x1900(%eax)
c00304c4:	8b 55 08             	mov    0x8(%ebp),%edx
c00304c7:	66 89 90 02 19 00 00 	mov    %dx,0x1902(%eax)
c00304ce:	8b 55 08             	mov    0x8(%ebp),%edx
c00304d1:	c1 ea 10             	shr    $0x10,%edx
c00304d4:	66 89 90 04 19 00 00 	mov    %dx,0x1904(%eax)
c00304db:	8d 80 00 19 00 00    	lea    0x1900(%eax),%eax
c00304e1:	0f 01 18             	lidtl  (%eax)
c00304e4:	90                   	nop
c00304e5:	5d                   	pop    %ebp
c00304e6:	c3                   	ret    

c00304e7 <sti>:
c00304e7:	55                   	push   %ebp
c00304e8:	89 e5                	mov    %esp,%ebp
c00304ea:	e8 96 fc ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c00304ef:	05 11 bb 00 00       	add    $0xbb11,%eax
c00304f4:	fb                   	sti    
c00304f5:	90                   	nop
c00304f6:	5d                   	pop    %ebp
c00304f7:	c3                   	ret    

c00304f8 <set_intr>:
c00304f8:	55                   	push   %ebp
c00304f9:	89 e5                	mov    %esp,%ebp
c00304fb:	e8 85 fc ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030500:	05 00 bb 00 00       	add    $0xbb00,%eax
c0030505:	8b 45 10             	mov    0x10(%ebp),%eax
c0030508:	8b 55 08             	mov    0x8(%ebp),%edx
c003050b:	66 89 02             	mov    %ax,(%edx)
c003050e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030511:	8b 55 08             	mov    0x8(%ebp),%edx
c0030514:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030518:	8b 45 08             	mov    0x8(%ebp),%eax
c003051b:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c003051f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030522:	8a 50 05             	mov    0x5(%eax),%dl
c0030525:	83 e2 f0             	and    $0xfffffff0,%edx
c0030528:	83 ca 0e             	or     $0xe,%edx
c003052b:	88 50 05             	mov    %dl,0x5(%eax)
c003052e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030531:	8a 50 05             	mov    0x5(%eax),%dl
c0030534:	83 e2 ef             	and    $0xffffffef,%edx
c0030537:	88 50 05             	mov    %dl,0x5(%eax)
c003053a:	8b 45 14             	mov    0x14(%ebp),%eax
c003053d:	83 e0 03             	and    $0x3,%eax
c0030540:	88 c2                	mov    %al,%dl
c0030542:	8b 45 08             	mov    0x8(%ebp),%eax
c0030545:	83 e2 03             	and    $0x3,%edx
c0030548:	88 d1                	mov    %dl,%cl
c003054a:	c1 e1 05             	shl    $0x5,%ecx
c003054d:	8a 50 05             	mov    0x5(%eax),%dl
c0030550:	83 e2 9f             	and    $0xffffff9f,%edx
c0030553:	09 ca                	or     %ecx,%edx
c0030555:	88 50 05             	mov    %dl,0x5(%eax)
c0030558:	8b 45 08             	mov    0x8(%ebp),%eax
c003055b:	8a 50 05             	mov    0x5(%eax),%dl
c003055e:	83 ca 80             	or     $0xffffff80,%edx
c0030561:	88 50 05             	mov    %dl,0x5(%eax)
c0030564:	8b 45 10             	mov    0x10(%ebp),%eax
c0030567:	c1 e8 10             	shr    $0x10,%eax
c003056a:	8b 55 08             	mov    0x8(%ebp),%edx
c003056d:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030571:	90                   	nop
c0030572:	5d                   	pop    %ebp
c0030573:	c3                   	ret    

c0030574 <set_trap>:
c0030574:	55                   	push   %ebp
c0030575:	89 e5                	mov    %esp,%ebp
c0030577:	e8 09 fc ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c003057c:	05 84 ba 00 00       	add    $0xba84,%eax
c0030581:	8b 45 10             	mov    0x10(%ebp),%eax
c0030584:	8b 55 08             	mov    0x8(%ebp),%edx
c0030587:	66 89 02             	mov    %ax,(%edx)
c003058a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003058d:	8b 55 08             	mov    0x8(%ebp),%edx
c0030590:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030594:	8b 45 08             	mov    0x8(%ebp),%eax
c0030597:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c003059b:	8b 45 08             	mov    0x8(%ebp),%eax
c003059e:	8a 50 05             	mov    0x5(%eax),%dl
c00305a1:	83 ca 0f             	or     $0xf,%edx
c00305a4:	88 50 05             	mov    %dl,0x5(%eax)
c00305a7:	8b 45 08             	mov    0x8(%ebp),%eax
c00305aa:	8a 50 05             	mov    0x5(%eax),%dl
c00305ad:	83 e2 ef             	and    $0xffffffef,%edx
c00305b0:	88 50 05             	mov    %dl,0x5(%eax)
c00305b3:	8b 45 14             	mov    0x14(%ebp),%eax
c00305b6:	83 e0 03             	and    $0x3,%eax
c00305b9:	88 c2                	mov    %al,%dl
c00305bb:	8b 45 08             	mov    0x8(%ebp),%eax
c00305be:	83 e2 03             	and    $0x3,%edx
c00305c1:	88 d1                	mov    %dl,%cl
c00305c3:	c1 e1 05             	shl    $0x5,%ecx
c00305c6:	8a 50 05             	mov    0x5(%eax),%dl
c00305c9:	83 e2 9f             	and    $0xffffff9f,%edx
c00305cc:	09 ca                	or     %ecx,%edx
c00305ce:	88 50 05             	mov    %dl,0x5(%eax)
c00305d1:	8b 45 08             	mov    0x8(%ebp),%eax
c00305d4:	8a 50 05             	mov    0x5(%eax),%dl
c00305d7:	83 ca 80             	or     $0xffffff80,%edx
c00305da:	88 50 05             	mov    %dl,0x5(%eax)
c00305dd:	8b 45 10             	mov    0x10(%ebp),%eax
c00305e0:	c1 e8 10             	shr    $0x10,%eax
c00305e3:	8b 55 08             	mov    0x8(%ebp),%edx
c00305e6:	66 89 42 06          	mov    %ax,0x6(%edx)
c00305ea:	90                   	nop
c00305eb:	5d                   	pop    %ebp
c00305ec:	c3                   	ret    

c00305ed <init_idt>:
c00305ed:	55                   	push   %ebp
c00305ee:	89 e5                	mov    %esp,%ebp
c00305f0:	53                   	push   %ebx
c00305f1:	83 ec 10             	sub    $0x10,%esp
c00305f4:	e8 90 fb ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c00305f9:	81 c3 07 ba 00 00    	add    $0xba07,%ebx
c00305ff:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030606:	eb 2b                	jmp    c0030633 <init_idt+0x46>
c0030608:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c003060e:	89 c2                	mov    %eax,%edx
c0030610:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030613:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c003061a:	8d 83 00 11 00 00    	lea    0x1100(%ebx),%eax
c0030620:	01 c8                	add    %ecx,%eax
c0030622:	6a 00                	push   $0x0
c0030624:	52                   	push   %edx
c0030625:	6a 08                	push   $0x8
c0030627:	50                   	push   %eax
c0030628:	e8 47 ff ff ff       	call   c0030574 <set_trap>
c003062d:	83 c4 10             	add    $0x10,%esp
c0030630:	ff 45 f8             	incl   -0x8(%ebp)
c0030633:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c003063a:	7e cc                	jle    c0030608 <init_idt+0x1b>
c003063c:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c0030642:	6a 00                	push   $0x0
c0030644:	50                   	push   %eax
c0030645:	6a 08                	push   $0x8
c0030647:	8d 83 00 11 00 00    	lea    0x1100(%ebx),%eax
c003064d:	50                   	push   %eax
c003064e:	e8 21 ff ff ff       	call   c0030574 <set_trap>
c0030653:	83 c4 10             	add    $0x10,%esp
c0030656:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c003065c:	89 c2                	mov    %eax,%edx
c003065e:	8d 83 08 11 00 00    	lea    0x1108(%ebx),%eax
c0030664:	6a 00                	push   $0x0
c0030666:	52                   	push   %edx
c0030667:	6a 08                	push   $0x8
c0030669:	50                   	push   %eax
c003066a:	e8 05 ff ff ff       	call   c0030574 <set_trap>
c003066f:	83 c4 10             	add    $0x10,%esp
c0030672:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c0030678:	89 c2                	mov    %eax,%edx
c003067a:	8d 83 10 11 00 00    	lea    0x1110(%ebx),%eax
c0030680:	6a 00                	push   $0x0
c0030682:	52                   	push   %edx
c0030683:	6a 08                	push   $0x8
c0030685:	50                   	push   %eax
c0030686:	e8 e9 fe ff ff       	call   c0030574 <set_trap>
c003068b:	83 c4 10             	add    $0x10,%esp
c003068e:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c0030694:	89 c2                	mov    %eax,%edx
c0030696:	8d 83 18 11 00 00    	lea    0x1118(%ebx),%eax
c003069c:	6a 00                	push   $0x0
c003069e:	52                   	push   %edx
c003069f:	6a 08                	push   $0x8
c00306a1:	50                   	push   %eax
c00306a2:	e8 cd fe ff ff       	call   c0030574 <set_trap>
c00306a7:	83 c4 10             	add    $0x10,%esp
c00306aa:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c00306b0:	89 c2                	mov    %eax,%edx
c00306b2:	8d 83 20 11 00 00    	lea    0x1120(%ebx),%eax
c00306b8:	6a 00                	push   $0x0
c00306ba:	52                   	push   %edx
c00306bb:	6a 08                	push   $0x8
c00306bd:	50                   	push   %eax
c00306be:	e8 b1 fe ff ff       	call   c0030574 <set_trap>
c00306c3:	83 c4 10             	add    $0x10,%esp
c00306c6:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c00306cc:	89 c2                	mov    %eax,%edx
c00306ce:	8d 83 28 11 00 00    	lea    0x1128(%ebx),%eax
c00306d4:	6a 00                	push   $0x0
c00306d6:	52                   	push   %edx
c00306d7:	6a 08                	push   $0x8
c00306d9:	50                   	push   %eax
c00306da:	e8 95 fe ff ff       	call   c0030574 <set_trap>
c00306df:	83 c4 10             	add    $0x10,%esp
c00306e2:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c00306e8:	89 c2                	mov    %eax,%edx
c00306ea:	8d 83 30 11 00 00    	lea    0x1130(%ebx),%eax
c00306f0:	6a 00                	push   $0x0
c00306f2:	52                   	push   %edx
c00306f3:	6a 08                	push   $0x8
c00306f5:	50                   	push   %eax
c00306f6:	e8 79 fe ff ff       	call   c0030574 <set_trap>
c00306fb:	83 c4 10             	add    $0x10,%esp
c00306fe:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c0030704:	89 c2                	mov    %eax,%edx
c0030706:	8d 83 38 11 00 00    	lea    0x1138(%ebx),%eax
c003070c:	6a 00                	push   $0x0
c003070e:	52                   	push   %edx
c003070f:	6a 08                	push   $0x8
c0030711:	50                   	push   %eax
c0030712:	e8 5d fe ff ff       	call   c0030574 <set_trap>
c0030717:	83 c4 10             	add    $0x10,%esp
c003071a:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c0030720:	89 c2                	mov    %eax,%edx
c0030722:	8d 83 40 11 00 00    	lea    0x1140(%ebx),%eax
c0030728:	6a 00                	push   $0x0
c003072a:	52                   	push   %edx
c003072b:	6a 08                	push   $0x8
c003072d:	50                   	push   %eax
c003072e:	e8 41 fe ff ff       	call   c0030574 <set_trap>
c0030733:	83 c4 10             	add    $0x10,%esp
c0030736:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c003073c:	89 c2                	mov    %eax,%edx
c003073e:	8d 83 48 11 00 00    	lea    0x1148(%ebx),%eax
c0030744:	6a 00                	push   $0x0
c0030746:	52                   	push   %edx
c0030747:	6a 08                	push   $0x8
c0030749:	50                   	push   %eax
c003074a:	e8 25 fe ff ff       	call   c0030574 <set_trap>
c003074f:	83 c4 10             	add    $0x10,%esp
c0030752:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c0030758:	89 c2                	mov    %eax,%edx
c003075a:	8d 83 50 11 00 00    	lea    0x1150(%ebx),%eax
c0030760:	6a 00                	push   $0x0
c0030762:	52                   	push   %edx
c0030763:	6a 08                	push   $0x8
c0030765:	50                   	push   %eax
c0030766:	e8 09 fe ff ff       	call   c0030574 <set_trap>
c003076b:	83 c4 10             	add    $0x10,%esp
c003076e:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c0030774:	89 c2                	mov    %eax,%edx
c0030776:	8d 83 58 11 00 00    	lea    0x1158(%ebx),%eax
c003077c:	6a 00                	push   $0x0
c003077e:	52                   	push   %edx
c003077f:	6a 08                	push   $0x8
c0030781:	50                   	push   %eax
c0030782:	e8 ed fd ff ff       	call   c0030574 <set_trap>
c0030787:	83 c4 10             	add    $0x10,%esp
c003078a:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c0030790:	89 c2                	mov    %eax,%edx
c0030792:	8d 83 60 11 00 00    	lea    0x1160(%ebx),%eax
c0030798:	6a 00                	push   $0x0
c003079a:	52                   	push   %edx
c003079b:	6a 08                	push   $0x8
c003079d:	50                   	push   %eax
c003079e:	e8 d1 fd ff ff       	call   c0030574 <set_trap>
c00307a3:	83 c4 10             	add    $0x10,%esp
c00307a6:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c00307ac:	89 c2                	mov    %eax,%edx
c00307ae:	8d 83 68 11 00 00    	lea    0x1168(%ebx),%eax
c00307b4:	6a 00                	push   $0x0
c00307b6:	52                   	push   %edx
c00307b7:	6a 08                	push   $0x8
c00307b9:	50                   	push   %eax
c00307ba:	e8 b5 fd ff ff       	call   c0030574 <set_trap>
c00307bf:	83 c4 10             	add    $0x10,%esp
c00307c2:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c00307c8:	89 c2                	mov    %eax,%edx
c00307ca:	8d 83 70 11 00 00    	lea    0x1170(%ebx),%eax
c00307d0:	6a 00                	push   $0x0
c00307d2:	52                   	push   %edx
c00307d3:	6a 08                	push   $0x8
c00307d5:	50                   	push   %eax
c00307d6:	e8 99 fd ff ff       	call   c0030574 <set_trap>
c00307db:	83 c4 10             	add    $0x10,%esp
c00307de:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c00307e4:	89 c2                	mov    %eax,%edx
c00307e6:	8d 83 00 15 00 00    	lea    0x1500(%ebx),%eax
c00307ec:	6a 03                	push   $0x3
c00307ee:	52                   	push   %edx
c00307ef:	6a 08                	push   $0x8
c00307f1:	50                   	push   %eax
c00307f2:	e8 7d fd ff ff       	call   c0030574 <set_trap>
c00307f7:	83 c4 10             	add    $0x10,%esp
c00307fa:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c0030800:	89 c2                	mov    %eax,%edx
c0030802:	8d 83 00 12 00 00    	lea    0x1200(%ebx),%eax
c0030808:	6a 00                	push   $0x0
c003080a:	52                   	push   %edx
c003080b:	6a 08                	push   $0x8
c003080d:	50                   	push   %eax
c003080e:	e8 e5 fc ff ff       	call   c00304f8 <set_intr>
c0030813:	83 c4 10             	add    $0x10,%esp
c0030816:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c003081c:	89 c2                	mov    %eax,%edx
c003081e:	8d 83 08 12 00 00    	lea    0x1208(%ebx),%eax
c0030824:	6a 00                	push   $0x0
c0030826:	52                   	push   %edx
c0030827:	6a 08                	push   $0x8
c0030829:	50                   	push   %eax
c003082a:	e8 c9 fc ff ff       	call   c00304f8 <set_intr>
c003082f:	83 c4 10             	add    $0x10,%esp
c0030832:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c0030838:	89 c2                	mov    %eax,%edx
c003083a:	8d 83 70 12 00 00    	lea    0x1270(%ebx),%eax
c0030840:	6a 00                	push   $0x0
c0030842:	52                   	push   %edx
c0030843:	6a 08                	push   $0x8
c0030845:	50                   	push   %eax
c0030846:	e8 ad fc ff ff       	call   c00304f8 <set_intr>
c003084b:	83 c4 10             	add    $0x10,%esp
c003084e:	68 00 08 00 00       	push   $0x800
c0030853:	8d 83 00 11 00 00    	lea    0x1100(%ebx),%eax
c0030859:	50                   	push   %eax
c003085a:	e8 4d fc ff ff       	call   c00304ac <write_idtr>
c003085f:	83 c4 08             	add    $0x8,%esp
c0030862:	e8 80 fc ff ff       	call   c00304e7 <sti>
c0030867:	90                   	nop
c0030868:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003086b:	c9                   	leave  
c003086c:	c3                   	ret    

c003086d <add_irq_handle>:
c003086d:	55                   	push   %ebp
c003086e:	89 e5                	mov    %esp,%ebp
c0030870:	53                   	push   %ebx
c0030871:	83 ec 14             	sub    $0x14,%esp
c0030874:	e8 10 f9 ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c0030879:	81 c3 87 b7 00 00    	add    $0xb787,%ebx
c003087f:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c0030883:	7e 2f                	jle    c00308b4 <add_irq_handle+0x47>
c0030885:	83 ec 0c             	sub    $0xc,%esp
c0030888:	8d 83 7c c8 ff ff    	lea    -0x3784(%ebx),%eax
c003088e:	50                   	push   %eax
c003088f:	8d 83 68 ca ff ff    	lea    -0x3598(%ebx),%eax
c0030895:	50                   	push   %eax
c0030896:	6a 16                	push   $0x16
c0030898:	8d 83 8f c8 ff ff    	lea    -0x3771(%ebx),%eax
c003089e:	50                   	push   %eax
c003089f:	8d 83 a4 c8 ff ff    	lea    -0x375c(%ebx),%eax
c00308a5:	50                   	push   %eax
c00308a6:	e8 2e f9 ff ff       	call   c00301d9 <printk>
c00308ab:	83 c4 20             	add    $0x20,%esp
c00308ae:	b8 01 00 00 00       	mov    $0x1,%eax
c00308b3:	82 8b 83 60 1a 00 00 	orb    $0x0,0x1a6083(%ebx)
c00308ba:	83 f8 20             	cmp    $0x20,%eax
c00308bd:	7e 2f                	jle    c00308ee <add_irq_handle+0x81>
c00308bf:	83 ec 0c             	sub    $0xc,%esp
c00308c2:	8d 83 ee c8 ff ff    	lea    -0x3712(%ebx),%eax
c00308c8:	50                   	push   %eax
c00308c9:	8d 83 68 ca ff ff    	lea    -0x3598(%ebx),%eax
c00308cf:	50                   	push   %eax
c00308d0:	6a 17                	push   $0x17
c00308d2:	8d 83 8f c8 ff ff    	lea    -0x3771(%ebx),%eax
c00308d8:	50                   	push   %eax
c00308d9:	8d 83 a4 c8 ff ff    	lea    -0x375c(%ebx),%eax
c00308df:	50                   	push   %eax
c00308e0:	e8 f4 f8 ff ff       	call   c00301d9 <printk>
c00308e5:	83 c4 20             	add    $0x20,%esp
c00308e8:	b8 01 00 00 00       	mov    $0x1,%eax
c00308ed:	82 8b 83 60 1a 00 00 	orb    $0x0,0x1a6083(%ebx)
c00308f4:	8d 50 01             	lea    0x1(%eax),%edx
c00308f7:	89 93 60 1a 00 00    	mov    %edx,0x1a60(%ebx)
c00308fd:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c0030904:	8d 83 20 19 00 00    	lea    0x1920(%ebx),%eax
c003090a:	01 d0                	add    %edx,%eax
c003090c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003090f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030912:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030915:	89 10                	mov    %edx,(%eax)
c0030917:	8b 45 08             	mov    0x8(%ebp),%eax
c003091a:	8b 94 83 20 1a 00 00 	mov    0x1a20(%ebx,%eax,4),%edx
c0030921:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030924:	89 50 04             	mov    %edx,0x4(%eax)
c0030927:	8b 45 08             	mov    0x8(%ebp),%eax
c003092a:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003092d:	89 94 83 20 1a 00 00 	mov    %edx,0x1a20(%ebx,%eax,4)
c0030934:	90                   	nop
c0030935:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030938:	c9                   	leave  
c0030939:	c3                   	ret    

c003093a <irq_handle>:
c003093a:	55                   	push   %ebp
c003093b:	89 e5                	mov    %esp,%ebp
c003093d:	53                   	push   %ebx
c003093e:	83 ec 14             	sub    $0x14,%esp
c0030941:	e8 43 f8 ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c0030946:	81 c3 ba b6 00 00    	add    $0xb6ba,%ebx
c003094c:	8b 45 08             	mov    0x8(%ebp),%eax
c003094f:	8b 40 20             	mov    0x20(%eax),%eax
c0030952:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030955:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0030959:	79 2a                	jns    c0030985 <irq_handle+0x4b>
c003095b:	8d 83 78 ca ff ff    	lea    -0x3588(%ebx),%eax
c0030961:	50                   	push   %eax
c0030962:	6a 24                	push   $0x24
c0030964:	8d 83 8f c8 ff ff    	lea    -0x3771(%ebx),%eax
c003096a:	50                   	push   %eax
c003096b:	8d 83 0c c9 ff ff    	lea    -0x36f4(%ebx),%eax
c0030971:	50                   	push   %eax
c0030972:	e8 62 f8 ff ff       	call   c00301d9 <printk>
c0030977:	83 c4 10             	add    $0x10,%esp
c003097a:	b8 01 00 00 00       	mov    $0x1,%eax
c003097f:	82 e9 f9             	sub    $0xf9,%cl
c0030982:	00 00                	add    %al,(%eax)
c0030984:	00 81 7d f0 80 00    	add    %al,0x80f07d(%ecx)
c003098a:	00 00                	add    %al,(%eax)
c003098c:	75 13                	jne    c00309a1 <irq_handle+0x67>
c003098e:	83 ec 0c             	sub    $0xc,%esp
c0030991:	ff 75 08             	pushl  0x8(%ebp)
c0030994:	e8 25 fa ff ff       	call   c00303be <do_syscall>
c0030999:	83 c4 10             	add    $0x10,%esp
c003099c:	e9 dd 00 00 00       	jmp    c0030a7e <irq_handle+0x144>
c00309a1:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c00309a8:	7f 37                	jg     c00309e1 <irq_handle+0xa7>
c00309aa:	8b 45 08             	mov    0x8(%ebp),%eax
c00309ad:	8b 40 28             	mov    0x28(%eax),%eax
c00309b0:	83 ec 08             	sub    $0x8,%esp
c00309b3:	50                   	push   %eax
c00309b4:	ff 75 f0             	pushl  -0x10(%ebp)
c00309b7:	8d 83 78 ca ff ff    	lea    -0x3588(%ebx),%eax
c00309bd:	50                   	push   %eax
c00309be:	6a 28                	push   $0x28
c00309c0:	8d 83 8f c8 ff ff    	lea    -0x3771(%ebx),%eax
c00309c6:	50                   	push   %eax
c00309c7:	8d 83 58 c9 ff ff    	lea    -0x36a8(%ebx),%eax
c00309cd:	50                   	push   %eax
c00309ce:	e8 06 f8 ff ff       	call   c00301d9 <printk>
c00309d3:	83 c4 20             	add    $0x20,%esp
c00309d6:	b8 01 00 00 00       	mov    $0x1,%eax
c00309db:	82 e9 9d             	sub    $0x9d,%cl
c00309de:	00 00                	add    %al,(%eax)
c00309e0:	00 81 7d f0 e7 03    	add    %al,0x3e7f07d(%ecx)
c00309e6:	00 00                	add    %al,(%eax)
c00309e8:	0f 8e 90 00 00 00    	jle    c0030a7e <irq_handle+0x144>
c00309ee:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00309f1:	2d e8 03 00 00       	sub    $0x3e8,%eax
c00309f6:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00309f9:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c00309fd:	7e 2f                	jle    c0030a2e <irq_handle+0xf4>
c00309ff:	83 ec 0c             	sub    $0xc,%esp
c0030a02:	8d 83 b2 c9 ff ff    	lea    -0x364e(%ebx),%eax
c0030a08:	50                   	push   %eax
c0030a09:	8d 83 78 ca ff ff    	lea    -0x3588(%ebx),%eax
c0030a0f:	50                   	push   %eax
c0030a10:	6a 2b                	push   $0x2b
c0030a12:	8d 83 8f c8 ff ff    	lea    -0x3771(%ebx),%eax
c0030a18:	50                   	push   %eax
c0030a19:	8d 83 a4 c8 ff ff    	lea    -0x375c(%ebx),%eax
c0030a1f:	50                   	push   %eax
c0030a20:	e8 b4 f7 ff ff       	call   c00301d9 <printk>
c0030a25:	83 c4 20             	add    $0x20,%esp
c0030a28:	b8 01 00 00 00       	mov    $0x1,%eax
c0030a2d:	82 83 7d ec 00 75 25 	addb   $0x25,0x7500ec7d(%ebx)
c0030a34:	8d 83 78 ca ff ff    	lea    -0x3588(%ebx),%eax
c0030a3a:	50                   	push   %eax
c0030a3b:	6a 2d                	push   $0x2d
c0030a3d:	8d 83 8f c8 ff ff    	lea    -0x3771(%ebx),%eax
c0030a43:	50                   	push   %eax
c0030a44:	8d 83 c8 c9 ff ff    	lea    -0x3638(%ebx),%eax
c0030a4a:	50                   	push   %eax
c0030a4b:	e8 89 f7 ff ff       	call   c00301d9 <printk>
c0030a50:	83 c4 10             	add    $0x10,%esp
c0030a53:	b8 01 00 00 00       	mov    $0x1,%eax
c0030a58:	82 8b 45 ec 8b 84 83 	orb    $0x83,-0x7b7413bb(%ebx)
c0030a5f:	20 1a                	and    %bl,(%edx)
c0030a61:	00 00                	add    %al,(%eax)
c0030a63:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030a66:	eb 10                	jmp    c0030a78 <irq_handle+0x13e>
c0030a68:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a6b:	8b 00                	mov    (%eax),%eax
c0030a6d:	ff d0                	call   *%eax
c0030a6f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a72:	8b 40 04             	mov    0x4(%eax),%eax
c0030a75:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030a78:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0030a7c:	75 ea                	jne    c0030a68 <irq_handle+0x12e>
c0030a7e:	90                   	nop
c0030a7f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030a82:	c9                   	leave  
c0030a83:	c3                   	ret    

c0030a84 <out_byte>:
c0030a84:	55                   	push   %ebp
c0030a85:	89 e5                	mov    %esp,%ebp
c0030a87:	83 ec 08             	sub    $0x8,%esp
c0030a8a:	e8 f6 f6 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030a8f:	05 71 b5 00 00       	add    $0xb571,%eax
c0030a94:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a97:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030a9a:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030a9e:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030aa1:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030aa4:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030aa7:	ee                   	out    %al,(%dx)
c0030aa8:	90                   	nop
c0030aa9:	c9                   	leave  
c0030aaa:	c3                   	ret    

c0030aab <init_i8259>:
c0030aab:	55                   	push   %ebp
c0030aac:	89 e5                	mov    %esp,%ebp
c0030aae:	e8 d2 f6 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030ab3:	05 4d b5 00 00       	add    $0xb54d,%eax
c0030ab8:	68 ff 00 00 00       	push   $0xff
c0030abd:	6a 21                	push   $0x21
c0030abf:	e8 c0 ff ff ff       	call   c0030a84 <out_byte>
c0030ac4:	83 c4 08             	add    $0x8,%esp
c0030ac7:	68 ff 00 00 00       	push   $0xff
c0030acc:	68 a1 00 00 00       	push   $0xa1
c0030ad1:	e8 ae ff ff ff       	call   c0030a84 <out_byte>
c0030ad6:	83 c4 08             	add    $0x8,%esp
c0030ad9:	6a 11                	push   $0x11
c0030adb:	6a 20                	push   $0x20
c0030add:	e8 a2 ff ff ff       	call   c0030a84 <out_byte>
c0030ae2:	83 c4 08             	add    $0x8,%esp
c0030ae5:	6a 20                	push   $0x20
c0030ae7:	6a 21                	push   $0x21
c0030ae9:	e8 96 ff ff ff       	call   c0030a84 <out_byte>
c0030aee:	83 c4 08             	add    $0x8,%esp
c0030af1:	6a 04                	push   $0x4
c0030af3:	6a 21                	push   $0x21
c0030af5:	e8 8a ff ff ff       	call   c0030a84 <out_byte>
c0030afa:	83 c4 08             	add    $0x8,%esp
c0030afd:	6a 03                	push   $0x3
c0030aff:	6a 21                	push   $0x21
c0030b01:	e8 7e ff ff ff       	call   c0030a84 <out_byte>
c0030b06:	83 c4 08             	add    $0x8,%esp
c0030b09:	6a 11                	push   $0x11
c0030b0b:	68 a0 00 00 00       	push   $0xa0
c0030b10:	e8 6f ff ff ff       	call   c0030a84 <out_byte>
c0030b15:	83 c4 08             	add    $0x8,%esp
c0030b18:	6a 28                	push   $0x28
c0030b1a:	68 a1 00 00 00       	push   $0xa1
c0030b1f:	e8 60 ff ff ff       	call   c0030a84 <out_byte>
c0030b24:	83 c4 08             	add    $0x8,%esp
c0030b27:	6a 02                	push   $0x2
c0030b29:	68 a1 00 00 00       	push   $0xa1
c0030b2e:	e8 51 ff ff ff       	call   c0030a84 <out_byte>
c0030b33:	83 c4 08             	add    $0x8,%esp
c0030b36:	6a 03                	push   $0x3
c0030b38:	68 a1 00 00 00       	push   $0xa1
c0030b3d:	e8 42 ff ff ff       	call   c0030a84 <out_byte>
c0030b42:	83 c4 08             	add    $0x8,%esp
c0030b45:	6a 68                	push   $0x68
c0030b47:	6a 20                	push   $0x20
c0030b49:	e8 36 ff ff ff       	call   c0030a84 <out_byte>
c0030b4e:	83 c4 08             	add    $0x8,%esp
c0030b51:	6a 0a                	push   $0xa
c0030b53:	6a 20                	push   $0x20
c0030b55:	e8 2a ff ff ff       	call   c0030a84 <out_byte>
c0030b5a:	83 c4 08             	add    $0x8,%esp
c0030b5d:	6a 68                	push   $0x68
c0030b5f:	68 a0 00 00 00       	push   $0xa0
c0030b64:	e8 1b ff ff ff       	call   c0030a84 <out_byte>
c0030b69:	83 c4 08             	add    $0x8,%esp
c0030b6c:	6a 0a                	push   $0xa
c0030b6e:	68 a0 00 00 00       	push   $0xa0
c0030b73:	e8 0c ff ff ff       	call   c0030a84 <out_byte>
c0030b78:	83 c4 08             	add    $0x8,%esp
c0030b7b:	90                   	nop
c0030b7c:	c9                   	leave  
c0030b7d:	c3                   	ret    

c0030b7e <init>:
c0030b7e:	55                   	push   %ebp
c0030b7f:	89 e5                	mov    %esp,%ebp
c0030b81:	53                   	push   %ebx
c0030b82:	83 ec 04             	sub    $0x4,%esp
c0030b85:	e8 ff f5 ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c0030b8a:	81 c3 76 b4 00 00    	add    $0xb476,%ebx
c0030b90:	e8 34 0c 00 00       	call   c00317c9 <init_page>
c0030b95:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c0030b9b:	8d 83 b0 4b ff bf    	lea    -0x4000b450(%ebx),%eax
c0030ba1:	ff e0                	jmp    *%eax
c0030ba3:	b8 01 00 00 00       	mov    $0x1,%eax
c0030ba8:	82 90 83 c4 04 5b 5d 	adcb   $0x5d,0x5b04c483(%eax)
c0030baf:	c3                   	ret    

c0030bb0 <init_cond>:
c0030bb0:	55                   	push   %ebp
c0030bb1:	89 e5                	mov    %esp,%ebp
c0030bb3:	53                   	push   %ebx
c0030bb4:	83 ec 14             	sub    $0x14,%esp
c0030bb7:	e8 cd f5 ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c0030bbc:	81 c3 44 b4 00 00    	add    $0xb444,%ebx
c0030bc2:	e8 cf 0e 00 00       	call   c0031a96 <init_mm>
c0030bc7:	8d 83 c4 ca ff ff    	lea    -0x353c(%ebx),%eax
c0030bcd:	50                   	push   %eax
c0030bce:	6a 4c                	push   $0x4c
c0030bd0:	8d 83 84 ca ff ff    	lea    -0x357c(%ebx),%eax
c0030bd6:	50                   	push   %eax
c0030bd7:	8d 83 90 ca ff ff    	lea    -0x3570(%ebx),%eax
c0030bdd:	50                   	push   %eax
c0030bde:	e8 f6 f5 ff ff       	call   c00301d9 <printk>
c0030be3:	83 c4 10             	add    $0x10,%esp
c0030be6:	e8 25 07 00 00       	call   c0031310 <loader>
c0030beb:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030bee:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c0030bf3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030bf6:	ff d0                	call   *%eax
c0030bf8:	90                   	nop
c0030bf9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030bfc:	c9                   	leave  
c0030bfd:	c3                   	ret    

c0030bfe <in_byte>:
c0030bfe:	55                   	push   %ebp
c0030bff:	89 e5                	mov    %esp,%ebp
c0030c01:	83 ec 14             	sub    $0x14,%esp
c0030c04:	e8 7c f5 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030c09:	05 f7 b3 00 00       	add    $0xb3f7,%eax
c0030c0e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c11:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030c15:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030c18:	89 c2                	mov    %eax,%edx
c0030c1a:	ec                   	in     (%dx),%al
c0030c1b:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030c1e:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030c21:	c9                   	leave  
c0030c22:	c3                   	ret    

c0030c23 <in_long>:
c0030c23:	55                   	push   %ebp
c0030c24:	89 e5                	mov    %esp,%ebp
c0030c26:	83 ec 14             	sub    $0x14,%esp
c0030c29:	e8 57 f5 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030c2e:	05 d2 b3 00 00       	add    $0xb3d2,%eax
c0030c33:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c36:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030c3a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030c3d:	89 c2                	mov    %eax,%edx
c0030c3f:	ed                   	in     (%dx),%eax
c0030c40:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0030c43:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030c46:	c9                   	leave  
c0030c47:	c3                   	ret    

c0030c48 <out_byte>:
c0030c48:	55                   	push   %ebp
c0030c49:	89 e5                	mov    %esp,%ebp
c0030c4b:	83 ec 08             	sub    $0x8,%esp
c0030c4e:	e8 32 f5 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030c53:	05 ad b3 00 00       	add    $0xb3ad,%eax
c0030c58:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c5b:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030c5e:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030c62:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030c65:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030c68:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030c6b:	ee                   	out    %al,(%dx)
c0030c6c:	90                   	nop
c0030c6d:	c9                   	leave  
c0030c6e:	c3                   	ret    

c0030c6f <out_long>:
c0030c6f:	55                   	push   %ebp
c0030c70:	89 e5                	mov    %esp,%ebp
c0030c72:	83 ec 04             	sub    $0x4,%esp
c0030c75:	e8 0b f5 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030c7a:	05 86 b3 00 00       	add    $0xb386,%eax
c0030c7f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c82:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030c86:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030c89:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030c8c:	ef                   	out    %eax,(%dx)
c0030c8d:	90                   	nop
c0030c8e:	c9                   	leave  
c0030c8f:	c3                   	ret    

c0030c90 <waitdisk>:
c0030c90:	55                   	push   %ebp
c0030c91:	89 e5                	mov    %esp,%ebp
c0030c93:	e8 ed f4 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030c98:	05 68 b3 00 00       	add    $0xb368,%eax
c0030c9d:	90                   	nop
c0030c9e:	68 f7 01 00 00       	push   $0x1f7
c0030ca3:	e8 56 ff ff ff       	call   c0030bfe <in_byte>
c0030ca8:	83 c4 04             	add    $0x4,%esp
c0030cab:	0f b6 c0             	movzbl %al,%eax
c0030cae:	25 c0 00 00 00       	and    $0xc0,%eax
c0030cb3:	83 f8 40             	cmp    $0x40,%eax
c0030cb6:	75 e6                	jne    c0030c9e <waitdisk+0xe>
c0030cb8:	90                   	nop
c0030cb9:	c9                   	leave  
c0030cba:	c3                   	ret    

c0030cbb <ide_prepare>:
c0030cbb:	55                   	push   %ebp
c0030cbc:	89 e5                	mov    %esp,%ebp
c0030cbe:	e8 c2 f4 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030cc3:	05 3d b3 00 00       	add    $0xb33d,%eax
c0030cc8:	e8 c3 ff ff ff       	call   c0030c90 <waitdisk>
c0030ccd:	6a 00                	push   $0x0
c0030ccf:	68 f1 01 00 00       	push   $0x1f1
c0030cd4:	e8 6f ff ff ff       	call   c0030c48 <out_byte>
c0030cd9:	83 c4 08             	add    $0x8,%esp
c0030cdc:	6a 01                	push   $0x1
c0030cde:	68 f2 01 00 00       	push   $0x1f2
c0030ce3:	e8 60 ff ff ff       	call   c0030c48 <out_byte>
c0030ce8:	83 c4 08             	add    $0x8,%esp
c0030ceb:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cee:	0f b6 c0             	movzbl %al,%eax
c0030cf1:	50                   	push   %eax
c0030cf2:	68 f3 01 00 00       	push   $0x1f3
c0030cf7:	e8 4c ff ff ff       	call   c0030c48 <out_byte>
c0030cfc:	83 c4 08             	add    $0x8,%esp
c0030cff:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d02:	c1 e8 08             	shr    $0x8,%eax
c0030d05:	0f b6 c0             	movzbl %al,%eax
c0030d08:	50                   	push   %eax
c0030d09:	68 f4 01 00 00       	push   $0x1f4
c0030d0e:	e8 35 ff ff ff       	call   c0030c48 <out_byte>
c0030d13:	83 c4 08             	add    $0x8,%esp
c0030d16:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d19:	c1 e8 10             	shr    $0x10,%eax
c0030d1c:	0f b6 c0             	movzbl %al,%eax
c0030d1f:	50                   	push   %eax
c0030d20:	68 f5 01 00 00       	push   $0x1f5
c0030d25:	e8 1e ff ff ff       	call   c0030c48 <out_byte>
c0030d2a:	83 c4 08             	add    $0x8,%esp
c0030d2d:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d30:	c1 e8 18             	shr    $0x18,%eax
c0030d33:	83 c8 e0             	or     $0xffffffe0,%eax
c0030d36:	0f b6 c0             	movzbl %al,%eax
c0030d39:	50                   	push   %eax
c0030d3a:	68 f6 01 00 00       	push   $0x1f6
c0030d3f:	e8 04 ff ff ff       	call   c0030c48 <out_byte>
c0030d44:	83 c4 08             	add    $0x8,%esp
c0030d47:	90                   	nop
c0030d48:	c9                   	leave  
c0030d49:	c3                   	ret    

c0030d4a <issue_read>:
c0030d4a:	55                   	push   %ebp
c0030d4b:	89 e5                	mov    %esp,%ebp
c0030d4d:	e8 33 f4 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030d52:	05 ae b2 00 00       	add    $0xb2ae,%eax
c0030d57:	6a 20                	push   $0x20
c0030d59:	68 f7 01 00 00       	push   $0x1f7
c0030d5e:	e8 e5 fe ff ff       	call   c0030c48 <out_byte>
c0030d63:	83 c4 08             	add    $0x8,%esp
c0030d66:	90                   	nop
c0030d67:	c9                   	leave  
c0030d68:	c3                   	ret    

c0030d69 <issue_write>:
c0030d69:	55                   	push   %ebp
c0030d6a:	89 e5                	mov    %esp,%ebp
c0030d6c:	e8 14 f4 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030d71:	05 8f b2 00 00       	add    $0xb28f,%eax
c0030d76:	6a 30                	push   $0x30
c0030d78:	68 f7 01 00 00       	push   $0x1f7
c0030d7d:	e8 c6 fe ff ff       	call   c0030c48 <out_byte>
c0030d82:	83 c4 08             	add    $0x8,%esp
c0030d85:	90                   	nop
c0030d86:	c9                   	leave  
c0030d87:	c3                   	ret    

c0030d88 <disk_do_read>:
c0030d88:	55                   	push   %ebp
c0030d89:	89 e5                	mov    %esp,%ebp
c0030d8b:	53                   	push   %ebx
c0030d8c:	83 ec 14             	sub    $0x14,%esp
c0030d8f:	e8 f5 f3 ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c0030d94:	81 c3 6c b2 00 00    	add    $0xb26c,%ebx
c0030d9a:	e8 d3 04 00 00       	call   c0031272 <clear_ide_intr>
c0030d9f:	83 ec 0c             	sub    $0xc,%esp
c0030da2:	ff 75 0c             	pushl  0xc(%ebp)
c0030da5:	e8 11 ff ff ff       	call   c0030cbb <ide_prepare>
c0030daa:	83 c4 10             	add    $0x10,%esp
c0030dad:	e8 98 ff ff ff       	call   c0030d4a <issue_read>
c0030db2:	e8 d5 04 00 00       	call   c003128c <wait_ide_intr>
c0030db7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030dbe:	eb 25                	jmp    c0030de5 <disk_do_read+0x5d>
c0030dc0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030dc3:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030dca:	8b 45 08             	mov    0x8(%ebp),%eax
c0030dcd:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0030dd0:	83 ec 0c             	sub    $0xc,%esp
c0030dd3:	68 f0 01 00 00       	push   $0x1f0
c0030dd8:	e8 46 fe ff ff       	call   c0030c23 <in_long>
c0030ddd:	83 c4 10             	add    $0x10,%esp
c0030de0:	89 03                	mov    %eax,(%ebx)
c0030de2:	ff 45 f4             	incl   -0xc(%ebp)
c0030de5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030de8:	83 f8 7f             	cmp    $0x7f,%eax
c0030deb:	76 d3                	jbe    c0030dc0 <disk_do_read+0x38>
c0030ded:	90                   	nop
c0030dee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030df1:	c9                   	leave  
c0030df2:	c3                   	ret    

c0030df3 <disk_do_write>:
c0030df3:	55                   	push   %ebp
c0030df4:	89 e5                	mov    %esp,%ebp
c0030df6:	83 ec 10             	sub    $0x10,%esp
c0030df9:	e8 87 f3 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030dfe:	05 02 b2 00 00       	add    $0xb202,%eax
c0030e03:	ff 75 0c             	pushl  0xc(%ebp)
c0030e06:	e8 b0 fe ff ff       	call   c0030cbb <ide_prepare>
c0030e0b:	83 c4 04             	add    $0x4,%esp
c0030e0e:	e8 56 ff ff ff       	call   c0030d69 <issue_write>
c0030e13:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0030e1a:	eb 22                	jmp    c0030e3e <disk_do_write+0x4b>
c0030e1c:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030e1f:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030e26:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e29:	01 d0                	add    %edx,%eax
c0030e2b:	8b 00                	mov    (%eax),%eax
c0030e2d:	50                   	push   %eax
c0030e2e:	68 f0 01 00 00       	push   $0x1f0
c0030e33:	e8 37 fe ff ff       	call   c0030c6f <out_long>
c0030e38:	83 c4 08             	add    $0x8,%esp
c0030e3b:	ff 45 fc             	incl   -0x4(%ebp)
c0030e3e:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030e41:	83 f8 7f             	cmp    $0x7f,%eax
c0030e44:	76 d6                	jbe    c0030e1c <disk_do_write+0x29>
c0030e46:	90                   	nop
c0030e47:	c9                   	leave  
c0030e48:	c3                   	ret    

c0030e49 <in_byte>:
c0030e49:	55                   	push   %ebp
c0030e4a:	89 e5                	mov    %esp,%ebp
c0030e4c:	83 ec 14             	sub    $0x14,%esp
c0030e4f:	e8 31 f3 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030e54:	05 ac b1 00 00       	add    $0xb1ac,%eax
c0030e59:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e5c:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030e60:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030e63:	89 c2                	mov    %eax,%edx
c0030e65:	ec                   	in     (%dx),%al
c0030e66:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030e69:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030e6c:	c9                   	leave  
c0030e6d:	c3                   	ret    

c0030e6e <out_byte>:
c0030e6e:	55                   	push   %ebp
c0030e6f:	89 e5                	mov    %esp,%ebp
c0030e71:	83 ec 08             	sub    $0x8,%esp
c0030e74:	e8 0c f3 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030e79:	05 87 b1 00 00       	add    $0xb187,%eax
c0030e7e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e81:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030e84:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030e88:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030e8b:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030e8e:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030e91:	ee                   	out    %al,(%dx)
c0030e92:	90                   	nop
c0030e93:	c9                   	leave  
c0030e94:	c3                   	ret    

c0030e95 <out_long>:
c0030e95:	55                   	push   %ebp
c0030e96:	89 e5                	mov    %esp,%ebp
c0030e98:	83 ec 04             	sub    $0x4,%esp
c0030e9b:	e8 e5 f2 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030ea0:	05 60 b1 00 00       	add    $0xb160,%eax
c0030ea5:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ea8:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030eac:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030eaf:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030eb2:	ef                   	out    %eax,(%dx)
c0030eb3:	90                   	nop
c0030eb4:	c9                   	leave  
c0030eb5:	c3                   	ret    

c0030eb6 <dma_prepare>:
c0030eb6:	55                   	push   %ebp
c0030eb7:	89 e5                	mov    %esp,%ebp
c0030eb9:	83 ec 10             	sub    $0x10,%esp
c0030ebc:	e8 c4 f2 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030ec1:	05 3f b1 00 00       	add    $0xb13f,%eax
c0030ec6:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ec9:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0030ecf:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0030ed2:	c7 c2 54 f0 06 c0    	mov    $0xc006f054,%edx
c0030ed8:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0030edb:	89 0a                	mov    %ecx,(%edx)
c0030edd:	c7 c2 54 f0 06 c0    	mov    $0xc006f054,%edx
c0030ee3:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
c0030ee9:	c7 c2 54 f0 06 c0    	mov    $0xc006f054,%edx
c0030eef:	8a 4a 07             	mov    0x7(%edx),%cl
c0030ef2:	83 c9 80             	or     $0xffffff80,%ecx
c0030ef5:	88 4a 07             	mov    %cl,0x7(%edx)
c0030ef8:	c7 c1 54 f0 06 c0    	mov    $0xc006f054,%ecx
c0030efe:	66 8b 51 06          	mov    0x6(%ecx),%dx
c0030f02:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
c0030f08:	66 89 51 06          	mov    %dx,0x6(%ecx)
c0030f0c:	c7 c0 54 f0 06 c0    	mov    $0xc006f054,%eax
c0030f12:	05 00 00 00 40       	add    $0x40000000,%eax
c0030f17:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0030f1a:	ff 75 f8             	pushl  -0x8(%ebp)
c0030f1d:	68 44 c0 00 00       	push   $0xc044
c0030f22:	e8 6e ff ff ff       	call   c0030e95 <out_long>
c0030f27:	83 c4 08             	add    $0x8,%esp
c0030f2a:	90                   	nop
c0030f2b:	c9                   	leave  
c0030f2c:	c3                   	ret    

c0030f2d <dma_issue_read>:
c0030f2d:	55                   	push   %ebp
c0030f2e:	89 e5                	mov    %esp,%ebp
c0030f30:	e8 50 f2 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0030f35:	05 cb b0 00 00       	add    $0xb0cb,%eax
c0030f3a:	68 40 c0 00 00       	push   $0xc040
c0030f3f:	e8 05 ff ff ff       	call   c0030e49 <in_byte>
c0030f44:	83 c4 04             	add    $0x4,%esp
c0030f47:	83 c8 09             	or     $0x9,%eax
c0030f4a:	0f b6 c0             	movzbl %al,%eax
c0030f4d:	50                   	push   %eax
c0030f4e:	68 40 c0 00 00       	push   $0xc040
c0030f53:	e8 16 ff ff ff       	call   c0030e6e <out_byte>
c0030f58:	83 c4 08             	add    $0x8,%esp
c0030f5b:	90                   	nop
c0030f5c:	c9                   	leave  
c0030f5d:	c3                   	ret    

c0030f5e <cache_init>:
c0030f5e:	55                   	push   %ebp
c0030f5f:	89 e5                	mov    %esp,%ebp
c0030f61:	53                   	push   %ebx
c0030f62:	83 ec 10             	sub    $0x10,%esp
c0030f65:	e8 fd 01 00 00       	call   c0031167 <__x86.get_pc_thunk.dx>
c0030f6a:	81 c2 96 b0 00 00    	add    $0xb096,%edx
c0030f70:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030f77:	eb 1b                	jmp    c0030f94 <cache_init+0x36>
c0030f79:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0030f7c:	8d 9a 84 1a 00 00    	lea    0x1a84(%edx),%ebx
c0030f82:	89 c8                	mov    %ecx,%eax
c0030f84:	c1 e0 06             	shl    $0x6,%eax
c0030f87:	01 c8                	add    %ecx,%eax
c0030f89:	c1 e0 03             	shl    $0x3,%eax
c0030f8c:	01 d8                	add    %ebx,%eax
c0030f8e:	c6 00 00             	movb   $0x0,(%eax)
c0030f91:	ff 45 f8             	incl   -0x8(%ebp)
c0030f94:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
c0030f98:	7e df                	jle    c0030f79 <cache_init+0x1b>
c0030f9a:	90                   	nop
c0030f9b:	83 c4 10             	add    $0x10,%esp
c0030f9e:	5b                   	pop    %ebx
c0030f9f:	5d                   	pop    %ebp
c0030fa0:	c3                   	ret    

c0030fa1 <cache_writeback>:
c0030fa1:	55                   	push   %ebp
c0030fa2:	89 e5                	mov    %esp,%ebp
c0030fa4:	53                   	push   %ebx
c0030fa5:	83 ec 14             	sub    $0x14,%esp
c0030fa8:	e8 dc f1 ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c0030fad:	81 c3 53 b0 00 00    	add    $0xb053,%ebx
c0030fb3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030fba:	eb 72                	jmp    c003102e <cache_writeback+0x8d>
c0030fbc:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030fbf:	8d 8b 85 1a 00 00    	lea    0x1a85(%ebx),%ecx
c0030fc5:	89 d0                	mov    %edx,%eax
c0030fc7:	c1 e0 06             	shl    $0x6,%eax
c0030fca:	01 d0                	add    %edx,%eax
c0030fcc:	c1 e0 03             	shl    $0x3,%eax
c0030fcf:	01 c8                	add    %ecx,%eax
c0030fd1:	8a 00                	mov    (%eax),%al
c0030fd3:	3c 01                	cmp    $0x1,%al
c0030fd5:	75 54                	jne    c003102b <cache_writeback+0x8a>
c0030fd7:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030fda:	8d 8b 80 1a 00 00    	lea    0x1a80(%ebx),%ecx
c0030fe0:	89 d0                	mov    %edx,%eax
c0030fe2:	c1 e0 06             	shl    $0x6,%eax
c0030fe5:	01 d0                	add    %edx,%eax
c0030fe7:	c1 e0 03             	shl    $0x3,%eax
c0030fea:	01 c8                	add    %ecx,%eax
c0030fec:	8b 10                	mov    (%eax),%edx
c0030fee:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0030ff1:	89 c8                	mov    %ecx,%eax
c0030ff3:	c1 e0 06             	shl    $0x6,%eax
c0030ff6:	01 c8                	add    %ecx,%eax
c0030ff8:	c1 e0 03             	shl    $0x3,%eax
c0030ffb:	8d 8b 80 1a 00 00    	lea    0x1a80(%ebx),%ecx
c0031001:	01 c8                	add    %ecx,%eax
c0031003:	83 c0 06             	add    $0x6,%eax
c0031006:	83 ec 08             	sub    $0x8,%esp
c0031009:	52                   	push   %edx
c003100a:	50                   	push   %eax
c003100b:	e8 e3 fd ff ff       	call   c0030df3 <disk_do_write>
c0031010:	83 c4 10             	add    $0x10,%esp
c0031013:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031016:	8d 8b 85 1a 00 00    	lea    0x1a85(%ebx),%ecx
c003101c:	89 d0                	mov    %edx,%eax
c003101e:	c1 e0 06             	shl    $0x6,%eax
c0031021:	01 d0                	add    %edx,%eax
c0031023:	c1 e0 03             	shl    $0x3,%eax
c0031026:	01 c8                	add    %ecx,%eax
c0031028:	c6 00 00             	movb   $0x0,(%eax)
c003102b:	ff 45 f4             	incl   -0xc(%ebp)
c003102e:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
c0031032:	7e 88                	jle    c0030fbc <cache_writeback+0x1b>
c0031034:	90                   	nop
c0031035:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031038:	c9                   	leave  
c0031039:	c3                   	ret    

c003103a <cache_fetch>:
c003103a:	55                   	push   %ebp
c003103b:	89 e5                	mov    %esp,%ebp
c003103d:	53                   	push   %ebx
c003103e:	83 ec 14             	sub    $0x14,%esp
c0031041:	e8 43 f1 ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c0031046:	81 c3 ba af 00 00    	add    $0xafba,%ebx
c003104c:	8b 45 08             	mov    0x8(%ebp),%eax
c003104f:	83 e0 7f             	and    $0x7f,%eax
c0031052:	89 c2                	mov    %eax,%edx
c0031054:	89 d0                	mov    %edx,%eax
c0031056:	c1 e0 06             	shl    $0x6,%eax
c0031059:	01 d0                	add    %edx,%eax
c003105b:	c1 e0 03             	shl    $0x3,%eax
c003105e:	8d 93 80 1a 00 00    	lea    0x1a80(%ebx),%edx
c0031064:	01 d0                	add    %edx,%eax
c0031066:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031069:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003106c:	8a 40 04             	mov    0x4(%eax),%al
c003106f:	3c 01                	cmp    $0x1,%al
c0031071:	75 0a                	jne    c003107d <cache_fetch+0x43>
c0031073:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031076:	8b 00                	mov    (%eax),%eax
c0031078:	3b 45 08             	cmp    0x8(%ebp),%eax
c003107b:	74 57                	je     c00310d4 <cache_fetch+0x9a>
c003107d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031080:	8a 40 04             	mov    0x4(%eax),%al
c0031083:	3c 01                	cmp    $0x1,%al
c0031085:	75 22                	jne    c00310a9 <cache_fetch+0x6f>
c0031087:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003108a:	8a 40 05             	mov    0x5(%eax),%al
c003108d:	3c 01                	cmp    $0x1,%al
c003108f:	75 18                	jne    c00310a9 <cache_fetch+0x6f>
c0031091:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031094:	8b 00                	mov    (%eax),%eax
c0031096:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031099:	83 c2 06             	add    $0x6,%edx
c003109c:	83 ec 08             	sub    $0x8,%esp
c003109f:	50                   	push   %eax
c00310a0:	52                   	push   %edx
c00310a1:	e8 4d fd ff ff       	call   c0030df3 <disk_do_write>
c00310a6:	83 c4 10             	add    $0x10,%esp
c00310a9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310ac:	83 c0 06             	add    $0x6,%eax
c00310af:	83 ec 08             	sub    $0x8,%esp
c00310b2:	ff 75 08             	pushl  0x8(%ebp)
c00310b5:	50                   	push   %eax
c00310b6:	e8 cd fc ff ff       	call   c0030d88 <disk_do_read>
c00310bb:	83 c4 10             	add    $0x10,%esp
c00310be:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310c1:	c6 40 04 01          	movb   $0x1,0x4(%eax)
c00310c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310c8:	8b 55 08             	mov    0x8(%ebp),%edx
c00310cb:	89 10                	mov    %edx,(%eax)
c00310cd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310d0:	c6 40 05 00          	movb   $0x0,0x5(%eax)
c00310d4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310d7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00310da:	c9                   	leave  
c00310db:	c3                   	ret    

c00310dc <read_byte>:
c00310dc:	55                   	push   %ebp
c00310dd:	89 e5                	mov    %esp,%ebp
c00310df:	83 ec 18             	sub    $0x18,%esp
c00310e2:	e8 9e f0 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c00310e7:	05 19 af 00 00       	add    $0xaf19,%eax
c00310ec:	8b 45 08             	mov    0x8(%ebp),%eax
c00310ef:	c1 e8 09             	shr    $0x9,%eax
c00310f2:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00310f5:	83 ec 0c             	sub    $0xc,%esp
c00310f8:	ff 75 f4             	pushl  -0xc(%ebp)
c00310fb:	e8 3a ff ff ff       	call   c003103a <cache_fetch>
c0031100:	83 c4 10             	add    $0x10,%esp
c0031103:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031106:	8b 45 08             	mov    0x8(%ebp),%eax
c0031109:	25 ff 01 00 00       	and    $0x1ff,%eax
c003110e:	89 c2                	mov    %eax,%edx
c0031110:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031113:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
c0031117:	c9                   	leave  
c0031118:	c3                   	ret    

c0031119 <write_byte>:
c0031119:	55                   	push   %ebp
c003111a:	89 e5                	mov    %esp,%ebp
c003111c:	83 ec 28             	sub    $0x28,%esp
c003111f:	e8 61 f0 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0031124:	05 dc ae 00 00       	add    $0xaedc,%eax
c0031129:	8b 45 0c             	mov    0xc(%ebp),%eax
c003112c:	88 45 e4             	mov    %al,-0x1c(%ebp)
c003112f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031132:	c1 e8 09             	shr    $0x9,%eax
c0031135:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031138:	83 ec 0c             	sub    $0xc,%esp
c003113b:	ff 75 f4             	pushl  -0xc(%ebp)
c003113e:	e8 f7 fe ff ff       	call   c003103a <cache_fetch>
c0031143:	83 c4 10             	add    $0x10,%esp
c0031146:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031149:	8b 45 08             	mov    0x8(%ebp),%eax
c003114c:	25 ff 01 00 00       	and    $0x1ff,%eax
c0031151:	89 c1                	mov    %eax,%ecx
c0031153:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031156:	8a 55 e4             	mov    -0x1c(%ebp),%dl
c0031159:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
c003115d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031160:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c0031164:	90                   	nop
c0031165:	c9                   	leave  
c0031166:	c3                   	ret    

c0031167 <__x86.get_pc_thunk.dx>:
c0031167:	8b 14 24             	mov    (%esp),%edx
c003116a:	c3                   	ret    

c003116b <wait_intr>:
c003116b:	55                   	push   %ebp
c003116c:	89 e5                	mov    %esp,%ebp
c003116e:	e8 12 f0 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0031173:	05 8d ae 00 00       	add    $0xae8d,%eax
c0031178:	f4                   	hlt    
c0031179:	90                   	nop
c003117a:	5d                   	pop    %ebp
c003117b:	c3                   	ret    

c003117c <ide_read>:
c003117c:	55                   	push   %ebp
c003117d:	89 e5                	mov    %esp,%ebp
c003117f:	56                   	push   %esi
c0031180:	53                   	push   %ebx
c0031181:	83 ec 10             	sub    $0x10,%esp
c0031184:	e8 00 f0 ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c0031189:	81 c3 77 ae 00 00    	add    $0xae77,%ebx
c003118f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031196:	eb 22                	jmp    c00311ba <ide_read+0x3e>
c0031198:	8b 55 08             	mov    0x8(%ebp),%edx
c003119b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003119e:	8d 34 02             	lea    (%edx,%eax,1),%esi
c00311a1:	8b 55 0c             	mov    0xc(%ebp),%edx
c00311a4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00311a7:	01 d0                	add    %edx,%eax
c00311a9:	83 ec 0c             	sub    $0xc,%esp
c00311ac:	50                   	push   %eax
c00311ad:	e8 2a ff ff ff       	call   c00310dc <read_byte>
c00311b2:	83 c4 10             	add    $0x10,%esp
c00311b5:	88 06                	mov    %al,(%esi)
c00311b7:	ff 45 f4             	incl   -0xc(%ebp)
c00311ba:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00311bd:	3b 45 10             	cmp    0x10(%ebp),%eax
c00311c0:	72 d6                	jb     c0031198 <ide_read+0x1c>
c00311c2:	90                   	nop
c00311c3:	8d 65 f8             	lea    -0x8(%ebp),%esp
c00311c6:	5b                   	pop    %ebx
c00311c7:	5e                   	pop    %esi
c00311c8:	5d                   	pop    %ebp
c00311c9:	c3                   	ret    

c00311ca <ide_write>:
c00311ca:	55                   	push   %ebp
c00311cb:	89 e5                	mov    %esp,%ebp
c00311cd:	53                   	push   %ebx
c00311ce:	83 ec 14             	sub    $0x14,%esp
c00311d1:	e8 b3 ef ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c00311d6:	81 c3 2a ae 00 00    	add    $0xae2a,%ebx
c00311dc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00311e3:	eb 25                	jmp    c003120a <ide_write+0x40>
c00311e5:	8b 55 08             	mov    0x8(%ebp),%edx
c00311e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00311eb:	01 d0                	add    %edx,%eax
c00311ed:	8a 00                	mov    (%eax),%al
c00311ef:	0f b6 c0             	movzbl %al,%eax
c00311f2:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00311f5:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00311f8:	01 ca                	add    %ecx,%edx
c00311fa:	83 ec 08             	sub    $0x8,%esp
c00311fd:	50                   	push   %eax
c00311fe:	52                   	push   %edx
c00311ff:	e8 15 ff ff ff       	call   c0031119 <write_byte>
c0031204:	83 c4 10             	add    $0x10,%esp
c0031207:	ff 45 f4             	incl   -0xc(%ebp)
c003120a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003120d:	3b 45 10             	cmp    0x10(%ebp),%eax
c0031210:	72 d3                	jb     c00311e5 <ide_write+0x1b>
c0031212:	90                   	nop
c0031213:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031216:	c9                   	leave  
c0031217:	c3                   	ret    

c0031218 <ide_writeback>:
c0031218:	55                   	push   %ebp
c0031219:	89 e5                	mov    %esp,%ebp
c003121b:	53                   	push   %ebx
c003121c:	83 ec 04             	sub    $0x4,%esp
c003121f:	e8 65 ef ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c0031224:	81 c3 dc ad 00 00    	add    $0xaddc,%ebx
c003122a:	8b 83 84 1e 01 00    	mov    0x11e84(%ebx),%eax
c0031230:	40                   	inc    %eax
c0031231:	89 83 84 1e 01 00    	mov    %eax,0x11e84(%ebx)
c0031237:	8b 83 84 1e 01 00    	mov    0x11e84(%ebx),%eax
c003123d:	83 f8 64             	cmp    $0x64,%eax
c0031240:	75 0f                	jne    c0031251 <ide_writeback+0x39>
c0031242:	e8 5a fd ff ff       	call   c0030fa1 <cache_writeback>
c0031247:	c7 83 84 1e 01 00 00 	movl   $0x0,0x11e84(%ebx)
c003124e:	00 00 00 
c0031251:	90                   	nop
c0031252:	83 c4 04             	add    $0x4,%esp
c0031255:	5b                   	pop    %ebx
c0031256:	5d                   	pop    %ebp
c0031257:	c3                   	ret    

c0031258 <ide_intr>:
c0031258:	55                   	push   %ebp
c0031259:	89 e5                	mov    %esp,%ebp
c003125b:	e8 25 ef ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0031260:	05 a0 ad 00 00       	add    $0xada0,%eax
c0031265:	c7 80 80 1e 01 00 01 	movl   $0x1,0x11e80(%eax)
c003126c:	00 00 00 
c003126f:	90                   	nop
c0031270:	5d                   	pop    %ebp
c0031271:	c3                   	ret    

c0031272 <clear_ide_intr>:
c0031272:	55                   	push   %ebp
c0031273:	89 e5                	mov    %esp,%ebp
c0031275:	e8 0b ef ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c003127a:	05 86 ad 00 00       	add    $0xad86,%eax
c003127f:	c7 80 80 1e 01 00 00 	movl   $0x0,0x11e80(%eax)
c0031286:	00 00 00 
c0031289:	90                   	nop
c003128a:	5d                   	pop    %ebp
c003128b:	c3                   	ret    

c003128c <wait_ide_intr>:
c003128c:	55                   	push   %ebp
c003128d:	89 e5                	mov    %esp,%ebp
c003128f:	53                   	push   %ebx
c0031290:	e8 f4 ee ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c0031295:	81 c3 6b ad 00 00    	add    $0xad6b,%ebx
c003129b:	eb 05                	jmp    c00312a2 <wait_ide_intr+0x16>
c003129d:	e8 c9 fe ff ff       	call   c003116b <wait_intr>
c00312a2:	8b 83 80 1e 01 00    	mov    0x11e80(%ebx),%eax
c00312a8:	85 c0                	test   %eax,%eax
c00312aa:	74 f1                	je     c003129d <wait_ide_intr+0x11>
c00312ac:	e8 c1 ff ff ff       	call   c0031272 <clear_ide_intr>
c00312b1:	90                   	nop
c00312b2:	5b                   	pop    %ebx
c00312b3:	5d                   	pop    %ebp
c00312b4:	c3                   	ret    

c00312b5 <init_ide>:
c00312b5:	55                   	push   %ebp
c00312b6:	89 e5                	mov    %esp,%ebp
c00312b8:	53                   	push   %ebx
c00312b9:	83 ec 04             	sub    $0x4,%esp
c00312bc:	e8 c8 ee ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c00312c1:	81 c3 3f ad 00 00    	add    $0xad3f,%ebx
c00312c7:	e8 92 fc ff ff       	call   c0030f5e <cache_init>
c00312cc:	83 ec 08             	sub    $0x8,%esp
c00312cf:	8d 83 18 52 ff ff    	lea    -0xade8(%ebx),%eax
c00312d5:	50                   	push   %eax
c00312d6:	6a 00                	push   $0x0
c00312d8:	e8 90 f5 ff ff       	call   c003086d <add_irq_handle>
c00312dd:	83 c4 10             	add    $0x10,%esp
c00312e0:	83 ec 08             	sub    $0x8,%esp
c00312e3:	8d 83 58 52 ff ff    	lea    -0xada8(%ebx),%eax
c00312e9:	50                   	push   %eax
c00312ea:	6a 0e                	push   $0xe
c00312ec:	e8 7c f5 ff ff       	call   c003086d <add_irq_handle>
c00312f1:	83 c4 10             	add    $0x10,%esp
c00312f4:	90                   	nop
c00312f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00312f8:	c9                   	leave  
c00312f9:	c3                   	ret    

c00312fa <write_cr3>:
c00312fa:	55                   	push   %ebp
c00312fb:	89 e5                	mov    %esp,%ebp
c00312fd:	e8 83 ee ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0031302:	05 fe ac 00 00       	add    $0xacfe,%eax
c0031307:	8b 45 08             	mov    0x8(%ebp),%eax
c003130a:	0f 22 d8             	mov    %eax,%cr3
c003130d:	90                   	nop
c003130e:	5d                   	pop    %ebp
c003130f:	c3                   	ret    

c0031310 <loader>:
c0031310:	55                   	push   %ebp
c0031311:	89 e5                	mov    %esp,%ebp
c0031313:	53                   	push   %ebx
c0031314:	83 ec 24             	sub    $0x24,%esp
c0031317:	e8 6d ee ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c003131c:	81 c3 e4 ac 00 00    	add    $0xace4,%ebx
c0031322:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0031329:	8d 83 1c cb ff ff    	lea    -0x34e4(%ebx),%eax
c003132f:	50                   	push   %eax
c0031330:	6a 20                	push   $0x20
c0031332:	8d 83 d0 ca ff ff    	lea    -0x3530(%ebx),%eax
c0031338:	50                   	push   %eax
c0031339:	8d 83 e0 ca ff ff    	lea    -0x3520(%ebx),%eax
c003133f:	50                   	push   %eax
c0031340:	e8 94 ee ff ff       	call   c00301d9 <printk>
c0031345:	83 c4 10             	add    $0x10,%esp
c0031348:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003134b:	8b 50 1c             	mov    0x1c(%eax),%edx
c003134e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031351:	01 d0                	add    %edx,%eax
c0031353:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031356:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031359:	8b 40 2c             	mov    0x2c(%eax),%eax
c003135c:	0f b7 c0             	movzwl %ax,%eax
c003135f:	c1 e0 05             	shl    $0x5,%eax
c0031362:	89 c2                	mov    %eax,%edx
c0031364:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031367:	01 d0                	add    %edx,%eax
c0031369:	89 45 ec             	mov    %eax,-0x14(%ebp)
c003136c:	e9 b4 00 00 00       	jmp    c0031425 <loader+0x115>
c0031371:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031374:	8b 00                	mov    (%eax),%eax
c0031376:	83 f8 01             	cmp    $0x1,%eax
c0031379:	0f 85 a2 00 00 00    	jne    c0031421 <loader+0x111>
c003137f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031382:	8b 40 14             	mov    0x14(%eax),%eax
c0031385:	89 c2                	mov    %eax,%edx
c0031387:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003138a:	8b 40 08             	mov    0x8(%eax),%eax
c003138d:	83 ec 08             	sub    $0x8,%esp
c0031390:	52                   	push   %edx
c0031391:	50                   	push   %eax
c0031392:	e8 79 07 00 00       	call   c0031b10 <mm_malloc>
c0031397:	83 c4 10             	add    $0x10,%esp
c003139a:	89 45 e8             	mov    %eax,-0x18(%ebp)
c003139d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313a0:	8b 50 10             	mov    0x10(%eax),%edx
c00313a3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313a6:	8b 48 04             	mov    0x4(%eax),%ecx
c00313a9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00313ac:	01 c1                	add    %eax,%ecx
c00313ae:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00313b1:	83 ec 04             	sub    $0x4,%esp
c00313b4:	52                   	push   %edx
c00313b5:	51                   	push   %ecx
c00313b6:	50                   	push   %eax
c00313b7:	e8 e8 09 00 00       	call   c0031da4 <memcpy>
c00313bc:	83 c4 10             	add    $0x10,%esp
c00313bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313c2:	8b 50 14             	mov    0x14(%eax),%edx
c00313c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313c8:	8b 40 10             	mov    0x10(%eax),%eax
c00313cb:	39 c2                	cmp    %eax,%edx
c00313cd:	76 28                	jbe    c00313f7 <loader+0xe7>
c00313cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313d2:	8b 50 14             	mov    0x14(%eax),%edx
c00313d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313d8:	8b 40 10             	mov    0x10(%eax),%eax
c00313db:	29 c2                	sub    %eax,%edx
c00313dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313e0:	8b 48 10             	mov    0x10(%eax),%ecx
c00313e3:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00313e6:	01 c8                	add    %ecx,%eax
c00313e8:	83 ec 04             	sub    $0x4,%esp
c00313eb:	52                   	push   %edx
c00313ec:	6a 00                	push   $0x0
c00313ee:	50                   	push   %eax
c00313ef:	e8 f8 09 00 00       	call   c0031dec <memset>
c00313f4:	83 c4 10             	add    $0x10,%esp
c00313f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313fa:	8b 50 08             	mov    0x8(%eax),%edx
c00313fd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031400:	8b 40 14             	mov    0x14(%eax),%eax
c0031403:	01 d0                	add    %edx,%eax
c0031405:	48                   	dec    %eax
c0031406:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031409:	c7 c0 90 de 04 c0    	mov    $0xc004de90,%eax
c003140f:	8b 00                	mov    (%eax),%eax
c0031411:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
c0031414:	73 0b                	jae    c0031421 <loader+0x111>
c0031416:	c7 c0 90 de 04 c0    	mov    $0xc004de90,%eax
c003141c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c003141f:	89 10                	mov    %edx,(%eax)
c0031421:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0031425:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031428:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c003142b:	0f 82 40 ff ff ff    	jb     c0031371 <loader+0x61>
c0031431:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031434:	8b 40 18             	mov    0x18(%eax),%eax
c0031437:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003143a:	83 ec 08             	sub    $0x8,%esp
c003143d:	68 00 00 10 00       	push   $0x100000
c0031442:	68 00 00 f0 bf       	push   $0xbff00000
c0031447:	e8 c4 06 00 00       	call   c0031b10 <mm_malloc>
c003144c:	83 c4 10             	add    $0x10,%esp
c003144f:	e8 dd 05 00 00       	call   c0031a31 <get_ucr3>
c0031454:	83 ec 0c             	sub    $0xc,%esp
c0031457:	50                   	push   %eax
c0031458:	e8 9d fe ff ff       	call   c00312fa <write_cr3>
c003145d:	83 c4 10             	add    $0x10,%esp
c0031460:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031463:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031466:	c9                   	leave  
c0031467:	c3                   	ret    

c0031468 <fs_open>:
c0031468:	55                   	push   %ebp
c0031469:	89 e5                	mov    %esp,%ebp
c003146b:	53                   	push   %ebx
c003146c:	83 ec 04             	sub    $0x4,%esp
c003146f:	e8 11 ed ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0031474:	05 8c ab 00 00       	add    $0xab8c,%eax
c0031479:	8d 90 b0 cd ff ff    	lea    -0x3250(%eax),%edx
c003147f:	52                   	push   %edx
c0031480:	6a 2c                	push   $0x2c
c0031482:	8d 90 e7 cb ff ff    	lea    -0x3419(%eax),%edx
c0031488:	52                   	push   %edx
c0031489:	8d 90 f4 cb ff ff    	lea    -0x340c(%eax),%edx
c003148f:	52                   	push   %edx
c0031490:	89 c3                	mov    %eax,%ebx
c0031492:	e8 42 ed ff ff       	call   c00301d9 <printk>
c0031497:	83 c4 10             	add    $0x10,%esp
c003149a:	b8 01 00 00 00       	mov    $0x1,%eax
c003149f:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c00314a6:	5d                   	pop    %ebp
c00314a7:	fc                   	cld    
c00314a8:	c9                   	leave  
c00314a9:	c3                   	ret    

c00314aa <fs_read>:
c00314aa:	55                   	push   %ebp
c00314ab:	89 e5                	mov    %esp,%ebp
c00314ad:	53                   	push   %ebx
c00314ae:	83 ec 04             	sub    $0x4,%esp
c00314b1:	e8 d3 ec ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c00314b6:	81 c3 4a ab 00 00    	add    $0xab4a,%ebx
c00314bc:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00314c0:	7f 2f                	jg     c00314f1 <fs_read+0x47>
c00314c2:	83 ec 0c             	sub    $0xc,%esp
c00314c5:	8d 83 4a cc ff ff    	lea    -0x33b6(%ebx),%eax
c00314cb:	50                   	push   %eax
c00314cc:	8d 83 b8 cd ff ff    	lea    -0x3248(%ebx),%eax
c00314d2:	50                   	push   %eax
c00314d3:	6a 31                	push   $0x31
c00314d5:	8d 83 e7 cb ff ff    	lea    -0x3419(%ebx),%eax
c00314db:	50                   	push   %eax
c00314dc:	8d 83 54 cc ff ff    	lea    -0x33ac(%ebx),%eax
c00314e2:	50                   	push   %eax
c00314e3:	e8 f1 ec ff ff       	call   c00301d9 <printk>
c00314e8:	83 c4 20             	add    $0x20,%esp
c00314eb:	b8 01 00 00 00       	mov    $0x1,%eax
c00314f0:	82 8d 83 b8 cd ff ff 	orb    $0xff,-0x32477d(%ebp)
c00314f7:	50                   	push   %eax
c00314f8:	6a 32                	push   $0x32
c00314fa:	8d 83 e7 cb ff ff    	lea    -0x3419(%ebx),%eax
c0031500:	50                   	push   %eax
c0031501:	8d 83 a0 cc ff ff    	lea    -0x3360(%ebx),%eax
c0031507:	50                   	push   %eax
c0031508:	e8 cc ec ff ff       	call   c00301d9 <printk>
c003150d:	83 c4 10             	add    $0x10,%esp
c0031510:	b8 01 00 00 00       	mov    $0x1,%eax
c0031515:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c003151c:	5d                   	pop    %ebp
c003151d:	fc                   	cld    
c003151e:	c9                   	leave  
c003151f:	c3                   	ret    

c0031520 <fs_write>:
c0031520:	55                   	push   %ebp
c0031521:	89 e5                	mov    %esp,%ebp
c0031523:	53                   	push   %ebx
c0031524:	83 ec 04             	sub    $0x4,%esp
c0031527:	e8 59 ec ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c003152c:	05 d4 aa 00 00       	add    $0xaad4,%eax
c0031531:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0031535:	7e 31                	jle    c0031568 <fs_write+0x48>
c0031537:	83 ec 0c             	sub    $0xc,%esp
c003153a:	8d 90 f6 cc ff ff    	lea    -0x330a(%eax),%edx
c0031540:	52                   	push   %edx
c0031541:	8d 90 c0 cd ff ff    	lea    -0x3240(%eax),%edx
c0031547:	52                   	push   %edx
c0031548:	6a 37                	push   $0x37
c003154a:	8d 90 e7 cb ff ff    	lea    -0x3419(%eax),%edx
c0031550:	52                   	push   %edx
c0031551:	8d 90 54 cc ff ff    	lea    -0x33ac(%eax),%edx
c0031557:	52                   	push   %edx
c0031558:	89 c3                	mov    %eax,%ebx
c003155a:	e8 7a ec ff ff       	call   c00301d9 <printk>
c003155f:	83 c4 20             	add    $0x20,%esp
c0031562:	b8 01 00 00 00       	mov    $0x1,%eax
c0031567:	82 b8 04 00 00 00 8b 	cmpb   $0x8b,0x4(%eax)
c003156e:	5d                   	pop    %ebp
c003156f:	08 8b 4d 0c 8b 55    	or     %cl,0x558b0c4d(%ebx)
c0031575:	10 82 89 45 10 8b    	adc    %al,-0x74efba77(%edx)
c003157b:	45                   	inc    %ebp
c003157c:	10 8b 5d fc c9 c3    	adc    %cl,-0x3c3603a3(%ebx)

c0031582 <fs_lseek>:
c0031582:	55                   	push   %ebp
c0031583:	89 e5                	mov    %esp,%ebp
c0031585:	53                   	push   %ebx
c0031586:	83 ec 04             	sub    $0x4,%esp
c0031589:	e8 f7 eb ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c003158e:	05 72 aa 00 00       	add    $0xaa72,%eax
c0031593:	8d 90 cc cd ff ff    	lea    -0x3234(%eax),%edx
c0031599:	52                   	push   %edx
c003159a:	6a 46                	push   $0x46
c003159c:	8d 90 e7 cb ff ff    	lea    -0x3419(%eax),%edx
c00315a2:	52                   	push   %edx
c00315a3:	8d 90 00 cd ff ff    	lea    -0x3300(%eax),%edx
c00315a9:	52                   	push   %edx
c00315aa:	89 c3                	mov    %eax,%ebx
c00315ac:	e8 28 ec ff ff       	call   c00301d9 <printk>
c00315b1:	83 c4 10             	add    $0x10,%esp
c00315b4:	b8 01 00 00 00       	mov    $0x1,%eax
c00315b9:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c00315c0:	5d                   	pop    %ebp
c00315c1:	fc                   	cld    
c00315c2:	c9                   	leave  
c00315c3:	c3                   	ret    

c00315c4 <fs_close>:
c00315c4:	55                   	push   %ebp
c00315c5:	89 e5                	mov    %esp,%ebp
c00315c7:	53                   	push   %ebx
c00315c8:	83 ec 04             	sub    $0x4,%esp
c00315cb:	e8 b5 eb ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c00315d0:	05 30 aa 00 00       	add    $0xaa30,%eax
c00315d5:	8d 90 d8 cd ff ff    	lea    -0x3228(%eax),%edx
c00315db:	52                   	push   %edx
c00315dc:	6a 4b                	push   $0x4b
c00315de:	8d 90 e7 cb ff ff    	lea    -0x3419(%eax),%edx
c00315e4:	52                   	push   %edx
c00315e5:	8d 90 58 cd ff ff    	lea    -0x32a8(%eax),%edx
c00315eb:	52                   	push   %edx
c00315ec:	89 c3                	mov    %eax,%ebx
c00315ee:	e8 e6 eb ff ff       	call   c00301d9 <printk>
c00315f3:	83 c4 10             	add    $0x10,%esp
c00315f6:	b8 01 00 00 00       	mov    $0x1,%eax
c00315fb:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c0031602:	5d                   	pop    %ebp
c0031603:	fc                   	cld    
c0031604:	c9                   	leave  
c0031605:	c3                   	ret    

c0031606 <create_video_mapping>:
c0031606:	55                   	push   %ebp
c0031607:	89 e5                	mov    %esp,%ebp
c0031609:	53                   	push   %ebx
c003160a:	83 ec 04             	sub    $0x4,%esp
c003160d:	e8 73 eb ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0031612:	05 ee a9 00 00       	add    $0xa9ee,%eax
c0031617:	8d 90 9c ce ff ff    	lea    -0x3164(%eax),%edx
c003161d:	52                   	push   %edx
c003161e:	6a 13                	push   $0x13
c0031620:	8d 90 e4 cd ff ff    	lea    -0x321c(%eax),%edx
c0031626:	52                   	push   %edx
c0031627:	8d 90 f8 cd ff ff    	lea    -0x3208(%eax),%edx
c003162d:	52                   	push   %edx
c003162e:	89 c3                	mov    %eax,%ebx
c0031630:	e8 a4 eb ff ff       	call   c00301d9 <printk>
c0031635:	83 c4 10             	add    $0x10,%esp
c0031638:	b8 01 00 00 00       	mov    $0x1,%eax
c003163d:	82 90 8b 5d fc c9 c3 	adcb   $0xc3,-0x3603a275(%eax)

c0031644 <video_mapping_write_test>:
c0031644:	55                   	push   %ebp
c0031645:	89 e5                	mov    %esp,%ebp
c0031647:	83 ec 10             	sub    $0x10,%esp
c003164a:	e8 36 eb ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c003164f:	05 b1 a9 00 00       	add    $0xa9b1,%eax
c0031654:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c003165b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0031662:	eb 17                	jmp    c003167b <video_mapping_write_test+0x37>
c0031664:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031667:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c003166e:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0031671:	01 c2                	add    %eax,%edx
c0031673:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031676:	89 02                	mov    %eax,(%edx)
c0031678:	ff 45 fc             	incl   -0x4(%ebp)
c003167b:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c0031682:	7e e0                	jle    c0031664 <video_mapping_write_test+0x20>
c0031684:	90                   	nop
c0031685:	c9                   	leave  
c0031686:	c3                   	ret    

c0031687 <video_mapping_read_test>:
c0031687:	55                   	push   %ebp
c0031688:	89 e5                	mov    %esp,%ebp
c003168a:	53                   	push   %ebx
c003168b:	83 ec 14             	sub    $0x14,%esp
c003168e:	e8 f6 ea ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c0031693:	81 c3 6d a9 00 00    	add    $0xa96d,%ebx
c0031699:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c00316a0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00316a7:	eb 4a                	jmp    c00316f3 <video_mapping_read_test+0x6c>
c00316a9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00316ac:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00316b3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00316b6:	01 d0                	add    %edx,%eax
c00316b8:	8b 10                	mov    (%eax),%edx
c00316ba:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00316bd:	39 c2                	cmp    %eax,%edx
c00316bf:	74 2f                	je     c00316f0 <video_mapping_read_test+0x69>
c00316c1:	83 ec 0c             	sub    $0xc,%esp
c00316c4:	8d 83 41 ce ff ff    	lea    -0x31bf(%ebx),%eax
c00316ca:	50                   	push   %eax
c00316cb:	8d 83 b4 ce ff ff    	lea    -0x314c(%ebx),%eax
c00316d1:	50                   	push   %eax
c00316d2:	6a 22                	push   $0x22
c00316d4:	8d 83 e4 cd ff ff    	lea    -0x321c(%ebx),%eax
c00316da:	50                   	push   %eax
c00316db:	8d 83 50 ce ff ff    	lea    -0x31b0(%ebx),%eax
c00316e1:	50                   	push   %eax
c00316e2:	e8 f2 ea ff ff       	call   c00301d9 <printk>
c00316e7:	83 c4 20             	add    $0x20,%esp
c00316ea:	b8 01 00 00 00       	mov    $0x1,%eax
c00316ef:	82 ff 45             	cmp    $0x45,%bh
c00316f2:	f4                   	hlt    
c00316f3:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c00316fa:	7e ad                	jle    c00316a9 <video_mapping_read_test+0x22>
c00316fc:	90                   	nop
c00316fd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031700:	c9                   	leave  
c0031701:	c3                   	ret    

c0031702 <video_mapping_clear>:
c0031702:	55                   	push   %ebp
c0031703:	89 e5                	mov    %esp,%ebp
c0031705:	53                   	push   %ebx
c0031706:	83 ec 04             	sub    $0x4,%esp
c0031709:	e8 77 ea ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c003170e:	05 f2 a8 00 00       	add    $0xa8f2,%eax
c0031713:	83 ec 04             	sub    $0x4,%esp
c0031716:	68 00 fa 00 00       	push   $0xfa00
c003171b:	6a 00                	push   $0x0
c003171d:	68 00 00 0a 00       	push   $0xa0000
c0031722:	89 c3                	mov    %eax,%ebx
c0031724:	e8 c3 06 00 00       	call   c0031dec <memset>
c0031729:	83 c4 10             	add    $0x10,%esp
c003172c:	90                   	nop
c003172d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031730:	c9                   	leave  
c0031731:	c3                   	ret    

c0031732 <read_cr0>:
c0031732:	55                   	push   %ebp
c0031733:	89 e5                	mov    %esp,%ebp
c0031735:	83 ec 10             	sub    $0x10,%esp
c0031738:	e8 48 ea ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c003173d:	05 c3 a8 00 00       	add    $0xa8c3,%eax
c0031742:	0f 20 c0             	mov    %cr0,%eax
c0031745:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0031748:	8b 45 fc             	mov    -0x4(%ebp),%eax
c003174b:	c9                   	leave  
c003174c:	c3                   	ret    

c003174d <write_cr0>:
c003174d:	55                   	push   %ebp
c003174e:	89 e5                	mov    %esp,%ebp
c0031750:	e8 30 ea ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0031755:	05 ab a8 00 00       	add    $0xa8ab,%eax
c003175a:	8b 45 08             	mov    0x8(%ebp),%eax
c003175d:	0f 22 c0             	mov    %eax,%cr0
c0031760:	90                   	nop
c0031761:	5d                   	pop    %ebp
c0031762:	c3                   	ret    

c0031763 <write_cr3>:
c0031763:	55                   	push   %ebp
c0031764:	89 e5                	mov    %esp,%ebp
c0031766:	e8 1a ea ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c003176b:	05 95 a8 00 00       	add    $0xa895,%eax
c0031770:	8b 45 08             	mov    0x8(%ebp),%eax
c0031773:	0f 22 d8             	mov    %eax,%cr3
c0031776:	90                   	nop
c0031777:	5d                   	pop    %ebp
c0031778:	c3                   	ret    

c0031779 <write_gdtr>:
c0031779:	55                   	push   %ebp
c003177a:	89 e5                	mov    %esp,%ebp
c003177c:	e8 04 ea ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0031781:	05 7f a8 00 00       	add    $0xa87f,%eax
c0031786:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031789:	4a                   	dec    %edx
c003178a:	66 89 90 88 1e 01 00 	mov    %dx,0x11e88(%eax)
c0031791:	8b 55 08             	mov    0x8(%ebp),%edx
c0031794:	66 89 90 8a 1e 01 00 	mov    %dx,0x11e8a(%eax)
c003179b:	8b 55 08             	mov    0x8(%ebp),%edx
c003179e:	c1 ea 10             	shr    $0x10,%edx
c00317a1:	66 89 90 8c 1e 01 00 	mov    %dx,0x11e8c(%eax)
c00317a8:	8d 80 88 1e 01 00    	lea    0x11e88(%eax),%eax
c00317ae:	0f 01 10             	lgdtl  (%eax)
c00317b1:	90                   	nop
c00317b2:	5d                   	pop    %ebp
c00317b3:	c3                   	ret    

c00317b4 <get_kpdir>:
c00317b4:	55                   	push   %ebp
c00317b5:	89 e5                	mov    %esp,%ebp
c00317b7:	e8 c9 e9 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c00317bc:	05 44 a8 00 00       	add    $0xa844,%eax
c00317c1:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c00317c7:	5d                   	pop    %ebp
c00317c8:	c3                   	ret    

c00317c9 <init_page>:
c00317c9:	55                   	push   %ebp
c00317ca:	89 e5                	mov    %esp,%ebp
c00317cc:	53                   	push   %ebx
c00317cd:	83 ec 24             	sub    $0x24,%esp
c00317d0:	e8 b0 e9 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c00317d5:	05 2b a8 00 00       	add    $0xa82b,%eax
c00317da:	c7 c2 00 10 07 c0    	mov    $0xc0071000,%edx
c00317e0:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c00317e6:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00317e9:	c7 c2 00 20 07 c0    	mov    $0xc0072000,%edx
c00317ef:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c00317f5:	89 55 f4             	mov    %edx,-0xc(%ebp)
c00317f8:	83 ec 04             	sub    $0x4,%esp
c00317fb:	68 00 10 00 00       	push   $0x1000
c0031800:	6a 00                	push   $0x0
c0031802:	ff 75 e4             	pushl  -0x1c(%ebp)
c0031805:	89 c3                	mov    %eax,%ebx
c0031807:	e8 e0 05 00 00       	call   c0031dec <memset>
c003180c:	83 c4 10             	add    $0x10,%esp
c003180f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0031816:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c003181d:	eb 6e                	jmp    c003188d <init_page+0xc4>
c003181f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031822:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031829:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003182c:	01 d0                	add    %edx,%eax
c003182e:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031831:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031837:	83 ca 07             	or     $0x7,%edx
c003183a:	89 10                	mov    %edx,(%eax)
c003183c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003183f:	05 00 03 00 00       	add    $0x300,%eax
c0031844:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c003184b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003184e:	01 d0                	add    %edx,%eax
c0031850:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031853:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031859:	83 ca 07             	or     $0x7,%edx
c003185c:	89 10                	mov    %edx,(%eax)
c003185e:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0031865:	eb 1a                	jmp    c0031881 <init_page+0xb8>
c0031867:	8b 45 e8             	mov    -0x18(%ebp),%eax
c003186a:	c1 e0 0c             	shl    $0xc,%eax
c003186d:	83 c8 07             	or     $0x7,%eax
c0031870:	89 c2                	mov    %eax,%edx
c0031872:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031875:	89 10                	mov    %edx,(%eax)
c0031877:	ff 45 e8             	incl   -0x18(%ebp)
c003187a:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c003187e:	ff 45 ec             	incl   -0x14(%ebp)
c0031881:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c0031888:	76 dd                	jbe    c0031867 <init_page+0x9e>
c003188a:	ff 45 f0             	incl   -0x10(%ebp)
c003188d:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c0031891:	76 8c                	jbe    c003181f <init_page+0x56>
c0031893:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c003189a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003189d:	c1 e8 0c             	shr    $0xc,%eax
c00318a0:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00318a5:	c1 e0 0c             	shl    $0xc,%eax
c00318a8:	89 c2                	mov    %eax,%edx
c00318aa:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00318ad:	25 ff 0f 00 00       	and    $0xfff,%eax
c00318b2:	09 d0                	or     %edx,%eax
c00318b4:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00318b7:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00318ba:	83 ec 0c             	sub    $0xc,%esp
c00318bd:	50                   	push   %eax
c00318be:	e8 a0 fe ff ff       	call   c0031763 <write_cr3>
c00318c3:	83 c4 10             	add    $0x10,%esp
c00318c6:	e8 67 fe ff ff       	call   c0031732 <read_cr0>
c00318cb:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00318ce:	8a 45 e3             	mov    -0x1d(%ebp),%al
c00318d1:	83 c8 80             	or     $0xffffff80,%eax
c00318d4:	88 45 e3             	mov    %al,-0x1d(%ebp)
c00318d7:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00318da:	83 ec 0c             	sub    $0xc,%esp
c00318dd:	50                   	push   %eax
c00318de:	e8 6a fe ff ff       	call   c003174d <write_cr0>
c00318e3:	83 c4 10             	add    $0x10,%esp
c00318e6:	90                   	nop
c00318e7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00318ea:	c9                   	leave  
c00318eb:	c3                   	ret    

c00318ec <set_segment>:
c00318ec:	55                   	push   %ebp
c00318ed:	89 e5                	mov    %esp,%ebp
c00318ef:	e8 91 e8 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c00318f4:	05 0c a7 00 00       	add    $0xa70c,%eax
c00318f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00318fc:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c0031901:	8b 45 08             	mov    0x8(%ebp),%eax
c0031904:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c003190a:	8b 45 08             	mov    0x8(%ebp),%eax
c003190d:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0031911:	8b 45 10             	mov    0x10(%ebp),%eax
c0031914:	83 e0 0f             	and    $0xf,%eax
c0031917:	88 c2                	mov    %al,%dl
c0031919:	8b 45 08             	mov    0x8(%ebp),%eax
c003191c:	88 d1                	mov    %dl,%cl
c003191e:	83 e1 0f             	and    $0xf,%ecx
c0031921:	8a 50 05             	mov    0x5(%eax),%dl
c0031924:	83 e2 f0             	and    $0xfffffff0,%edx
c0031927:	09 ca                	or     %ecx,%edx
c0031929:	88 50 05             	mov    %dl,0x5(%eax)
c003192c:	8b 45 08             	mov    0x8(%ebp),%eax
c003192f:	8a 50 05             	mov    0x5(%eax),%dl
c0031932:	83 ca 10             	or     $0x10,%edx
c0031935:	88 50 05             	mov    %dl,0x5(%eax)
c0031938:	8b 45 0c             	mov    0xc(%ebp),%eax
c003193b:	83 e0 03             	and    $0x3,%eax
c003193e:	88 c2                	mov    %al,%dl
c0031940:	8b 45 08             	mov    0x8(%ebp),%eax
c0031943:	83 e2 03             	and    $0x3,%edx
c0031946:	88 d1                	mov    %dl,%cl
c0031948:	c1 e1 05             	shl    $0x5,%ecx
c003194b:	8a 50 05             	mov    0x5(%eax),%dl
c003194e:	83 e2 9f             	and    $0xffffff9f,%edx
c0031951:	09 ca                	or     %ecx,%edx
c0031953:	88 50 05             	mov    %dl,0x5(%eax)
c0031956:	8b 45 08             	mov    0x8(%ebp),%eax
c0031959:	8a 50 05             	mov    0x5(%eax),%dl
c003195c:	83 ca 80             	or     $0xffffff80,%edx
c003195f:	88 50 05             	mov    %dl,0x5(%eax)
c0031962:	8b 45 08             	mov    0x8(%ebp),%eax
c0031965:	8a 50 06             	mov    0x6(%eax),%dl
c0031968:	83 ca 0f             	or     $0xf,%edx
c003196b:	88 50 06             	mov    %dl,0x6(%eax)
c003196e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031971:	8a 50 06             	mov    0x6(%eax),%dl
c0031974:	83 e2 ef             	and    $0xffffffef,%edx
c0031977:	88 50 06             	mov    %dl,0x6(%eax)
c003197a:	8b 45 08             	mov    0x8(%ebp),%eax
c003197d:	8a 50 06             	mov    0x6(%eax),%dl
c0031980:	83 e2 df             	and    $0xffffffdf,%edx
c0031983:	88 50 06             	mov    %dl,0x6(%eax)
c0031986:	8b 45 08             	mov    0x8(%ebp),%eax
c0031989:	8a 50 06             	mov    0x6(%eax),%dl
c003198c:	83 ca 40             	or     $0x40,%edx
c003198f:	88 50 06             	mov    %dl,0x6(%eax)
c0031992:	8b 45 08             	mov    0x8(%ebp),%eax
c0031995:	8a 50 06             	mov    0x6(%eax),%dl
c0031998:	83 ca 80             	or     $0xffffff80,%edx
c003199b:	88 50 06             	mov    %dl,0x6(%eax)
c003199e:	8b 45 08             	mov    0x8(%ebp),%eax
c00319a1:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c00319a5:	90                   	nop
c00319a6:	5d                   	pop    %ebp
c00319a7:	c3                   	ret    

c00319a8 <init_segment>:
c00319a8:	55                   	push   %ebp
c00319a9:	89 e5                	mov    %esp,%ebp
c00319ab:	53                   	push   %ebx
c00319ac:	83 ec 04             	sub    $0x4,%esp
c00319af:	e8 d5 e7 ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c00319b4:	81 c3 4c a6 00 00    	add    $0xa64c,%ebx
c00319ba:	83 ec 04             	sub    $0x4,%esp
c00319bd:	6a 18                	push   $0x18
c00319bf:	6a 00                	push   $0x0
c00319c1:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c00319c7:	50                   	push   %eax
c00319c8:	e8 1f 04 00 00       	call   c0031dec <memset>
c00319cd:	83 c4 10             	add    $0x10,%esp
c00319d0:	83 ec 04             	sub    $0x4,%esp
c00319d3:	6a 0a                	push   $0xa
c00319d5:	6a 00                	push   $0x0
c00319d7:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c00319dd:	8d 40 08             	lea    0x8(%eax),%eax
c00319e0:	50                   	push   %eax
c00319e1:	e8 06 ff ff ff       	call   c00318ec <set_segment>
c00319e6:	83 c4 10             	add    $0x10,%esp
c00319e9:	83 ec 04             	sub    $0x4,%esp
c00319ec:	6a 02                	push   $0x2
c00319ee:	6a 00                	push   $0x0
c00319f0:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c00319f6:	8d 40 10             	lea    0x10(%eax),%eax
c00319f9:	50                   	push   %eax
c00319fa:	e8 ed fe ff ff       	call   c00318ec <set_segment>
c00319ff:	83 c4 10             	add    $0x10,%esp
c0031a02:	83 ec 08             	sub    $0x8,%esp
c0031a05:	6a 18                	push   $0x18
c0031a07:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0031a0d:	50                   	push   %eax
c0031a0e:	e8 66 fd ff ff       	call   c0031779 <write_gdtr>
c0031a13:	83 c4 10             	add    $0x10,%esp
c0031a16:	90                   	nop
c0031a17:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a1a:	c9                   	leave  
c0031a1b:	c3                   	ret    

c0031a1c <get_updir>:
c0031a1c:	55                   	push   %ebp
c0031a1d:	89 e5                	mov    %esp,%ebp
c0031a1f:	e8 61 e7 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0031a24:	05 dc a5 00 00       	add    $0xa5dc,%eax
c0031a29:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0031a2f:	5d                   	pop    %ebp
c0031a30:	c3                   	ret    

c0031a31 <get_ucr3>:
c0031a31:	55                   	push   %ebp
c0031a32:	89 e5                	mov    %esp,%ebp
c0031a34:	e8 4c e7 ff ff       	call   c0030185 <__x86.get_pc_thunk.ax>
c0031a39:	05 c7 a5 00 00       	add    $0xa5c7,%eax
c0031a3e:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031a44:	8b 00                	mov    (%eax),%eax
c0031a46:	5d                   	pop    %ebp
c0031a47:	c3                   	ret    

c0031a48 <mm_brk>:
c0031a48:	55                   	push   %ebp
c0031a49:	89 e5                	mov    %esp,%ebp
c0031a4b:	53                   	push   %ebx
c0031a4c:	83 ec 04             	sub    $0x4,%esp
c0031a4f:	e8 35 e7 ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c0031a54:	81 c3 ac a5 00 00    	add    $0xa5ac,%ebx
c0031a5a:	8b 83 90 1e 01 00    	mov    0x11e90(%ebx),%eax
c0031a60:	39 45 08             	cmp    %eax,0x8(%ebp)
c0031a63:	76 22                	jbe    c0031a87 <mm_brk+0x3f>
c0031a65:	8b 83 90 1e 01 00    	mov    0x11e90(%ebx),%eax
c0031a6b:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a6e:	29 c2                	sub    %eax,%edx
c0031a70:	89 d0                	mov    %edx,%eax
c0031a72:	89 c2                	mov    %eax,%edx
c0031a74:	8b 83 90 1e 01 00    	mov    0x11e90(%ebx),%eax
c0031a7a:	83 ec 08             	sub    $0x8,%esp
c0031a7d:	52                   	push   %edx
c0031a7e:	50                   	push   %eax
c0031a7f:	e8 8c 00 00 00       	call   c0031b10 <mm_malloc>
c0031a84:	83 c4 10             	add    $0x10,%esp
c0031a87:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a8a:	89 83 90 1e 01 00    	mov    %eax,0x11e90(%ebx)
c0031a90:	90                   	nop
c0031a91:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a94:	c9                   	leave  
c0031a95:	c3                   	ret    

c0031a96 <init_mm>:
c0031a96:	55                   	push   %ebp
c0031a97:	89 e5                	mov    %esp,%ebp
c0031a99:	53                   	push   %ebx
c0031a9a:	83 ec 14             	sub    $0x14,%esp
c0031a9d:	e8 e7 e6 ff ff       	call   c0030189 <__x86.get_pc_thunk.bx>
c0031aa2:	81 c3 5e a5 00 00    	add    $0xa55e,%ebx
c0031aa8:	e8 07 fd ff ff       	call   c00317b4 <get_kpdir>
c0031aad:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031ab0:	83 ec 04             	sub    $0x4,%esp
c0031ab3:	68 00 10 00 00       	push   $0x1000
c0031ab8:	6a 00                	push   $0x0
c0031aba:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0031ac0:	50                   	push   %eax
c0031ac1:	e8 26 03 00 00       	call   c0031dec <memset>
c0031ac6:	83 c4 10             	add    $0x10,%esp
c0031ac9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031acc:	05 00 0c 00 00       	add    $0xc00,%eax
c0031ad1:	83 ec 04             	sub    $0x4,%esp
c0031ad4:	68 80 00 00 00       	push   $0x80
c0031ad9:	50                   	push   %eax
c0031ada:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0031ae0:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c0031ae6:	50                   	push   %eax
c0031ae7:	e8 b8 02 00 00       	call   c0031da4 <memcpy>
c0031aec:	83 c4 10             	add    $0x10,%esp
c0031aef:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0031af5:	05 00 00 00 40       	add    $0x40000000,%eax
c0031afa:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c0031aff:	89 c2                	mov    %eax,%edx
c0031b01:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031b07:	89 10                	mov    %edx,(%eax)
c0031b09:	90                   	nop
c0031b0a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031b0d:	c9                   	leave  
c0031b0e:	c3                   	ret    
c0031b0f:	90                   	nop

c0031b10 <mm_malloc>:
c0031b10:	55                   	push   %ebp
c0031b11:	31 c0                	xor    %eax,%eax
c0031b13:	89 e5                	mov    %esp,%ebp
c0031b15:	57                   	push   %edi
c0031b16:	56                   	push   %esi
c0031b17:	53                   	push   %ebx
c0031b18:	83 ec 3c             	sub    $0x3c,%esp
c0031b1b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031b1e:	85 db                	test   %ebx,%ebx
c0031b20:	0f 8e 36 02 00 00    	jle    c0031d5c <mm_malloc+0x24c>
c0031b26:	e8 f1 fe ff ff       	call   c0031a1c <get_updir>
c0031b2b:	89 c6                	mov    %eax,%esi
c0031b2d:	e8 ff fe ff ff       	call   c0031a31 <get_ucr3>
c0031b32:	8b 55 08             	mov    0x8(%ebp),%edx
c0031b35:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031b39:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031b3c:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031b3f:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031b44:	29 d0                	sub    %edx,%eax
c0031b46:	89 da                	mov    %ebx,%edx
c0031b48:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031b4e:	01 d0                	add    %edx,%eax
c0031b50:	85 c0                	test   %eax,%eax
c0031b52:	0f 8e c0 00 00 00    	jle    c0031c18 <mm_malloc+0x108>
c0031b58:	8b 55 08             	mov    0x8(%ebp),%edx
c0031b5b:	83 e8 01             	sub    $0x1,%eax
c0031b5e:	89 f7                	mov    %esi,%edi
c0031b60:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031b65:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031b6c:	89 d3                	mov    %edx,%ebx
c0031b6e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031b71:	eb 51                	jmp    c0031bc4 <mm_malloc+0xb4>
c0031b73:	90                   	nop
c0031b74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031b78:	8b 31                	mov    (%ecx),%esi
c0031b7a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031b80:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031b86:	89 d8                	mov    %ebx,%eax
c0031b88:	c1 e8 0a             	shr    $0xa,%eax
c0031b8b:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031b90:	01 c6                	add    %eax,%esi
c0031b92:	f6 06 01             	testb  $0x1,(%esi)
c0031b95:	75 22                	jne    c0031bb9 <mm_malloc+0xa9>
c0031b97:	a1 20 c0 03 c0       	mov    0xc003c020,%eax
c0031b9c:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031ba1:	0f 8f c1 01 00 00    	jg     c0031d68 <mm_malloc+0x258>
c0031ba7:	89 c1                	mov    %eax,%ecx
c0031ba9:	83 c0 01             	add    $0x1,%eax
c0031bac:	c1 e1 0c             	shl    $0xc,%ecx
c0031baf:	83 c9 07             	or     $0x7,%ecx
c0031bb2:	89 0e                	mov    %ecx,(%esi)
c0031bb4:	a3 20 c0 03 c0       	mov    %eax,0xc003c020
c0031bb9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031bbf:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031bc2:	74 54                	je     c0031c18 <mm_malloc+0x108>
c0031bc4:	89 d8                	mov    %ebx,%eax
c0031bc6:	c1 e8 16             	shr    $0x16,%eax
c0031bc9:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031bcc:	f6 01 01             	testb  $0x1,(%ecx)
c0031bcf:	75 a7                	jne    c0031b78 <mm_malloc+0x68>
c0031bd1:	a1 00 e0 04 c0       	mov    0xc004e000,%eax
c0031bd6:	89 c6                	mov    %eax,%esi
c0031bd8:	83 c0 01             	add    $0x1,%eax
c0031bdb:	c1 e6 0c             	shl    $0xc,%esi
c0031bde:	81 c6 00 f0 04 c0    	add    $0xc004f000,%esi
c0031be4:	a3 00 e0 04 c0       	mov    %eax,0xc004e000
c0031be9:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031bef:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031bf4:	83 c8 07             	or     $0x7,%eax
c0031bf7:	89 01                	mov    %eax,(%ecx)
c0031bf9:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031c00:	00 
c0031c01:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031c08:	00 
c0031c09:	89 34 24             	mov    %esi,(%esp)
c0031c0c:	e8 db 01 00 00       	call   c0031dec <memset>
c0031c11:	e9 70 ff ff ff       	jmp    c0031b86 <mm_malloc+0x76>
c0031c16:	66 90                	xchg   %ax,%ax
c0031c18:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031c1b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031c1e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031c24:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031c2a:	c1 e8 16             	shr    $0x16,%eax
c0031c2d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031c30:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031c36:	75 32                	jne    c0031c6a <mm_malloc+0x15a>
c0031c38:	c7 44 24 10 f0 8e 03 	movl   $0xc0038ef0,0x10(%esp)
c0031c3f:	c0 
c0031c40:	c7 44 24 0c 56 8f 03 	movl   $0xc0038f56,0xc(%esp)
c0031c47:	c0 
c0031c48:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031c4f:	00 
c0031c50:	c7 44 24 04 df 8e 03 	movl   $0xc0038edf,0x4(%esp)
c0031c57:	c0 
c0031c58:	c7 04 24 00 8f 03 c0 	movl   $0xc0038f00,(%esp)
c0031c5f:	e8 75 e5 ff ff       	call   c00301d9 <printk>
c0031c64:	b8 01 00 00 00       	mov    $0x1,%eax
c0031c69:	82 8b 55 e0 8d 86 00 	orb    $0x0,-0x79721fab(%ebx)
c0031c70:	00 00                	add    %al,(%eax)
c0031c72:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0031c79:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c0031c80:	00 f6                	add    %dh,%dh
c0031c82:	04 90                	add    $0x90,%al
c0031c84:	01 75 32             	add    %esi,0x32(%ebp)
c0031c87:	c7 44 24 10 f8 8e 03 	movl   $0xc0038ef8,0x10(%esp)
c0031c8e:	c0 
c0031c8f:	c7 44 24 0c 56 8f 03 	movl   $0xc0038f56,0xc(%esp)
c0031c96:	c0 
c0031c97:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031c9e:	00 
c0031c9f:	c7 44 24 04 df 8e 03 	movl   $0xc0038edf,0x4(%esp)
c0031ca6:	c0 
c0031ca7:	c7 04 24 00 8f 03 c0 	movl   $0xc0038f00,(%esp)
c0031cae:	e8 26 e5 ff ff       	call   c00301d9 <printk>
c0031cb3:	b8 01 00 00 00       	mov    $0x1,%eax
c0031cb8:	82 8b 45 08 c1 e8 16 	orb    $0x16,-0x173ef7bb(%ebx)
c0031cbf:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0031cc2:	f6 c3 01             	test   $0x1,%bl
c0031cc5:	75 32                	jne    c0031cf9 <mm_malloc+0x1e9>
c0031cc7:	c7 44 24 10 f0 8e 03 	movl   $0xc0038ef0,0x10(%esp)
c0031cce:	c0 
c0031ccf:	c7 44 24 0c 56 8f 03 	movl   $0xc0038f56,0xc(%esp)
c0031cd6:	c0 
c0031cd7:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031cde:	00 
c0031cdf:	c7 44 24 04 df 8e 03 	movl   $0xc0038edf,0x4(%esp)
c0031ce6:	c0 
c0031ce7:	c7 04 24 00 8f 03 c0 	movl   $0xc0038f00,(%esp)
c0031cee:	e8 e6 e4 ff ff       	call   c00301d9 <printk>
c0031cf3:	b8 01 00 00 00       	mov    $0x1,%eax
c0031cf8:	82 8b 55 08 8d 83 00 	orb    $0x0,-0x7c72f7ab(%ebx)
c0031cff:	00 00                	add    %al,(%eax)
c0031d01:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0031d08:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c0031d0f:	00 8b 1c 90 f6 c3    	add    %cl,-0x3c096fe4(%ebx)
c0031d15:	01 75 32             	add    %esi,0x32(%ebp)
c0031d18:	c7 44 24 10 f8 8e 03 	movl   $0xc0038ef8,0x10(%esp)
c0031d1f:	c0 
c0031d20:	c7 44 24 0c 56 8f 03 	movl   $0xc0038f56,0xc(%esp)
c0031d27:	c0 
c0031d28:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031d2f:	00 
c0031d30:	c7 44 24 04 df 8e 03 	movl   $0xc0038edf,0x4(%esp)
c0031d37:	c0 
c0031d38:	c7 04 24 00 8f 03 c0 	movl   $0xc0038f00,(%esp)
c0031d3f:	e8 95 e4 ff ff       	call   c00301d9 <printk>
c0031d44:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d49:	82 8b 55 08 89 d8 25 	orb    $0x25,-0x2776f7ab(%ebx)
c0031d50:	00 f0                	add    %dh,%al
c0031d52:	ff                   	(bad)  
c0031d53:	ff 81 e2 ff 0f 00    	incl   0xfffe2(%ecx)
c0031d59:	00 09                	add    %cl,(%ecx)
c0031d5b:	d0 83 c4 3c 5b 5e    	rolb   0x5e5b3cc4(%ebx)
c0031d61:	5f                   	pop    %edi
c0031d62:	5d                   	pop    %ebp
c0031d63:	c3                   	ret    
c0031d64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031d68:	c7 44 24 10 cc 8e 03 	movl   $0xc0038ecc,0x10(%esp)
c0031d6f:	c0 
c0031d70:	c7 44 24 0c 4c 8f 03 	movl   $0xc0038f4c,0xc(%esp)
c0031d77:	c0 
c0031d78:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c0031d7f:	00 
c0031d80:	c7 44 24 04 df 8e 03 	movl   $0xc0038edf,0x4(%esp)
c0031d87:	c0 
c0031d88:	c7 04 24 00 8f 03 c0 	movl   $0xc0038f00,(%esp)
c0031d8f:	e8 45 e4 ff ff       	call   c00301d9 <printk>
c0031d94:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d99:	82 a1 20 c0 03 c0 e9 	andb   $0xe9,-0x3ffc3fe0(%ecx)
c0031da0:	03 fe                	add    %esi,%edi
c0031da2:	ff                   	(bad)  
c0031da3:	ff                   	.byte 0xff

c0031da4 <memcpy>:
c0031da4:	55                   	push   %ebp
c0031da5:	89 e5                	mov    %esp,%ebp
c0031da7:	56                   	push   %esi
c0031da8:	57                   	push   %edi
c0031da9:	53                   	push   %ebx
c0031daa:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031dad:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031db0:	8b 75 0c             	mov    0xc(%ebp),%esi
c0031db3:	fc                   	cld    
c0031db4:	83 f9 08             	cmp    $0x8,%ecx
c0031db7:	76 26                	jbe    c0031ddf <memcpy+0x3b>
c0031db9:	89 fa                	mov    %edi,%edx
c0031dbb:	89 cb                	mov    %ecx,%ebx
c0031dbd:	83 e2 03             	and    $0x3,%edx
c0031dc0:	74 10                	je     c0031dd2 <memcpy+0x2e>
c0031dc2:	b9 04 00 00 00       	mov    $0x4,%ecx
c0031dc7:	29 d1                	sub    %edx,%ecx
c0031dc9:	83 e1 03             	and    $0x3,%ecx
c0031dcc:	29 cb                	sub    %ecx,%ebx
c0031dce:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031dd0:	89 d9                	mov    %ebx,%ecx
c0031dd2:	c1 e9 02             	shr    $0x2,%ecx
c0031dd5:	8d 76 00             	lea    0x0(%esi),%esi
c0031dd8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0031dda:	89 d9                	mov    %ebx,%ecx
c0031ddc:	83 e1 03             	and    $0x3,%ecx
c0031ddf:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031de1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031de4:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0031de7:	5b                   	pop    %ebx
c0031de8:	5f                   	pop    %edi
c0031de9:	5e                   	pop    %esi
c0031dea:	c9                   	leave  
c0031deb:	c3                   	ret    

c0031dec <memset>:
c0031dec:	55                   	push   %ebp
c0031ded:	89 e5                	mov    %esp,%ebp
c0031def:	57                   	push   %edi
c0031df0:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031df3:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0031df7:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031dfa:	fc                   	cld    
c0031dfb:	83 f9 10             	cmp    $0x10,%ecx
c0031dfe:	76 69                	jbe    c0031e69 <memset+0x7d>
c0031e00:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e06:	74 4c                	je     c0031e54 <memset+0x68>
c0031e08:	88 07                	mov    %al,(%edi)
c0031e0a:	47                   	inc    %edi
c0031e0b:	49                   	dec    %ecx
c0031e0c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e12:	74 40                	je     c0031e54 <memset+0x68>
c0031e14:	88 07                	mov    %al,(%edi)
c0031e16:	47                   	inc    %edi
c0031e17:	49                   	dec    %ecx
c0031e18:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e1e:	74 34                	je     c0031e54 <memset+0x68>
c0031e20:	88 07                	mov    %al,(%edi)
c0031e22:	47                   	inc    %edi
c0031e23:	49                   	dec    %ecx
c0031e24:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e2a:	74 28                	je     c0031e54 <memset+0x68>
c0031e2c:	88 07                	mov    %al,(%edi)
c0031e2e:	47                   	inc    %edi
c0031e2f:	49                   	dec    %ecx
c0031e30:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e36:	74 1c                	je     c0031e54 <memset+0x68>
c0031e38:	88 07                	mov    %al,(%edi)
c0031e3a:	47                   	inc    %edi
c0031e3b:	49                   	dec    %ecx
c0031e3c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e42:	74 10                	je     c0031e54 <memset+0x68>
c0031e44:	88 07                	mov    %al,(%edi)
c0031e46:	47                   	inc    %edi
c0031e47:	49                   	dec    %ecx
c0031e48:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e4e:	74 04                	je     c0031e54 <memset+0x68>
c0031e50:	88 07                	mov    %al,(%edi)
c0031e52:	47                   	inc    %edi
c0031e53:	49                   	dec    %ecx
c0031e54:	88 c4                	mov    %al,%ah
c0031e56:	89 c2                	mov    %eax,%edx
c0031e58:	c1 e2 10             	shl    $0x10,%edx
c0031e5b:	09 d0                	or     %edx,%eax
c0031e5d:	89 ca                	mov    %ecx,%edx
c0031e5f:	c1 e9 02             	shr    $0x2,%ecx
c0031e62:	83 e2 03             	and    $0x3,%edx
c0031e65:	f3 ab                	rep stos %eax,%es:(%edi)
c0031e67:	89 d1                	mov    %edx,%ecx
c0031e69:	f3 aa                	rep stos %al,%es:(%edi)
c0031e6b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e6e:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0031e71:	5f                   	pop    %edi
c0031e72:	c9                   	leave  
c0031e73:	c3                   	ret    
c0031e74:	66 90                	xchg   %ax,%ax
c0031e76:	66 90                	xchg   %ax,%ax
c0031e78:	66 90                	xchg   %ax,%ax
c0031e7a:	66 90                	xchg   %ax,%ax
c0031e7c:	66 90                	xchg   %ax,%ax
c0031e7e:	66 90                	xchg   %ax,%ax

c0031e80 <_vsnprintf_r>:
c0031e80:	55                   	push   %ebp
c0031e81:	89 e5                	mov    %esp,%ebp
c0031e83:	56                   	push   %esi
c0031e84:	53                   	push   %ebx
c0031e85:	83 c4 80             	add    $0xffffff80,%esp
c0031e88:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031e8b:	8b 75 08             	mov    0x8(%ebp),%esi
c0031e8e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031e91:	85 db                	test   %ebx,%ebx
c0031e93:	78 63                	js     c0031ef8 <_vsnprintf_r+0x78>
c0031e95:	ba 08 02 00 00       	mov    $0x208,%edx
c0031e9a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0031e9f:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0031ea3:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0031ea6:	89 45 90             	mov    %eax,-0x70(%ebp)
c0031ea9:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0031eac:	31 c0                	xor    %eax,%eax
c0031eae:	85 db                	test   %ebx,%ebx
c0031eb0:	0f 45 c2             	cmovne %edx,%eax
c0031eb3:	89 45 98             	mov    %eax,-0x68(%ebp)
c0031eb6:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0031eb9:	8b 45 18             	mov    0x18(%ebp),%eax
c0031ebc:	89 34 24             	mov    %esi,(%esp)
c0031ebf:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0031ec3:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0031ec7:	8b 45 14             	mov    0x14(%ebp),%eax
c0031eca:	89 44 24 08          	mov    %eax,0x8(%esp)
c0031ece:	8d 45 90             	lea    -0x70(%ebp),%eax
c0031ed1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0031ed5:	e8 86 00 00 00       	call   c0031f60 <_svfprintf_r>
c0031eda:	83 f8 ff             	cmp    $0xffffffff,%eax
c0031edd:	7c 11                	jl     c0031ef0 <_vsnprintf_r+0x70>
c0031edf:	85 db                	test   %ebx,%ebx
c0031ee1:	74 06                	je     c0031ee9 <_vsnprintf_r+0x69>
c0031ee3:	8b 55 90             	mov    -0x70(%ebp),%edx
c0031ee6:	c6 02 00             	movb   $0x0,(%edx)
c0031ee9:	83 ec 80             	sub    $0xffffff80,%esp
c0031eec:	5b                   	pop    %ebx
c0031eed:	5e                   	pop    %esi
c0031eee:	5d                   	pop    %ebp
c0031eef:	c3                   	ret    
c0031ef0:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031ef6:	eb e7                	jmp    c0031edf <_vsnprintf_r+0x5f>
c0031ef8:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031efe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031f03:	eb e4                	jmp    c0031ee9 <_vsnprintf_r+0x69>
c0031f05:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031f09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0031f10 <vsnprintf>:
c0031f10:	55                   	push   %ebp
c0031f11:	89 e5                	mov    %esp,%ebp
c0031f13:	83 ec 28             	sub    $0x28,%esp
c0031f16:	e8 35 00 00 00       	call   c0031f50 <__getreent>
c0031f1b:	8b 55 14             	mov    0x14(%ebp),%edx
c0031f1e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0031f22:	8b 55 10             	mov    0x10(%ebp),%edx
c0031f25:	89 04 24             	mov    %eax,(%esp)
c0031f28:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0031f2c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031f2f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0031f33:	8b 55 08             	mov    0x8(%ebp),%edx
c0031f36:	89 54 24 04          	mov    %edx,0x4(%esp)
c0031f3a:	e8 41 ff ff ff       	call   c0031e80 <_vsnprintf_r>
c0031f3f:	c9                   	leave  
c0031f40:	c3                   	ret    
c0031f41:	66 90                	xchg   %ax,%ax
c0031f43:	66 90                	xchg   %ax,%ax
c0031f45:	66 90                	xchg   %ax,%ax
c0031f47:	66 90                	xchg   %ax,%ax
c0031f49:	66 90                	xchg   %ax,%ax
c0031f4b:	66 90                	xchg   %ax,%ax
c0031f4d:	66 90                	xchg   %ax,%ax
c0031f4f:	90                   	nop

c0031f50 <__getreent>:
c0031f50:	55                   	push   %ebp
c0031f51:	a1 40 c0 03 c0       	mov    0xc003c040,%eax
c0031f56:	89 e5                	mov    %esp,%ebp
c0031f58:	5d                   	pop    %ebp
c0031f59:	c3                   	ret    
c0031f5a:	66 90                	xchg   %ax,%ax
c0031f5c:	66 90                	xchg   %ax,%ax
c0031f5e:	66 90                	xchg   %ax,%ax

c0031f60 <_svfprintf_r>:
c0031f60:	55                   	push   %ebp
c0031f61:	89 e5                	mov    %esp,%ebp
c0031f63:	57                   	push   %edi
c0031f64:	56                   	push   %esi
c0031f65:	53                   	push   %ebx
c0031f66:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c0031f6c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031f6f:	89 04 24             	mov    %eax,(%esp)
c0031f72:	e8 89 33 00 00       	call   c0035300 <_localeconv_r>
c0031f77:	8b 00                	mov    (%eax),%eax
c0031f79:	89 04 24             	mov    %eax,(%esp)
c0031f7c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0031f82:	e8 d9 4a 00 00       	call   c0036a60 <strlen>
c0031f87:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c0031f8d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031f90:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0031f94:	74 0b                	je     c0031fa1 <_svfprintf_r+0x41>
c0031f96:	8b 40 10             	mov    0x10(%eax),%eax
c0031f99:	85 c0                	test   %eax,%eax
c0031f9b:	0f 84 62 18 00 00    	je     c0033803 <_svfprintf_r+0x18a3>
c0031fa1:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0031fa4:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0031fa7:	89 c7                	mov    %eax,%edi
c0031fa9:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0031faf:	d9 ee                	fldz   
c0031fb1:	29 d0                	sub    %edx,%eax
c0031fb3:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0031fba:	00 00 00 
c0031fbd:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0031fc3:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0031fca:	00 00 00 
c0031fcd:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0031fd4:	00 00 00 
c0031fd7:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c0031fde:	00 00 00 
c0031fe1:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0031fe8:	00 00 00 
c0031feb:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0031ff2:	00 00 00 
c0031ff5:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c0031ffb:	8b 45 10             	mov    0x10(%ebp),%eax
c0031ffe:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0032001:	0f b6 00             	movzbl (%eax),%eax
c0032004:	3c 25                	cmp    $0x25,%al
c0032006:	74 4d                	je     c0032055 <_svfprintf_r+0xf5>
c0032008:	84 c0                	test   %al,%al
c003200a:	75 08                	jne    c0032014 <_svfprintf_r+0xb4>
c003200c:	eb 47                	jmp    c0032055 <_svfprintf_r+0xf5>
c003200e:	66 90                	xchg   %ax,%ax
c0032010:	84 c0                	test   %al,%al
c0032012:	74 0a                	je     c003201e <_svfprintf_r+0xbe>
c0032014:	83 c3 01             	add    $0x1,%ebx
c0032017:	0f b6 03             	movzbl (%ebx),%eax
c003201a:	3c 25                	cmp    $0x25,%al
c003201c:	75 f2                	jne    c0032010 <_svfprintf_r+0xb0>
c003201e:	89 de                	mov    %ebx,%esi
c0032020:	2b 75 10             	sub    0x10(%ebp),%esi
c0032023:	74 30                	je     c0032055 <_svfprintf_r+0xf5>
c0032025:	8b 45 10             	mov    0x10(%ebp),%eax
c0032028:	83 c7 08             	add    $0x8,%edi
c003202b:	89 77 fc             	mov    %esi,-0x4(%edi)
c003202e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0032034:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032037:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003203d:	83 c0 01             	add    $0x1,%eax
c0032040:	83 f8 07             	cmp    $0x7,%eax
c0032043:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032049:	0f 8f 91 00 00 00    	jg     c00320e0 <_svfprintf_r+0x180>
c003204f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0032055:	80 3b 00             	cmpb   $0x0,(%ebx)
c0032058:	0f 84 aa 00 00 00    	je     c0032108 <_svfprintf_r+0x1a8>
c003205e:	8d 43 01             	lea    0x1(%ebx),%eax
c0032061:	be 20 00 00 00       	mov    $0x20,%esi
c0032066:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003206d:	31 db                	xor    %ebx,%ebx
c003206f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0032076:	ff ff ff 
c0032079:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0032080:	00 00 00 
c0032083:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c003208a:	00 00 00 
c003208d:	8d 48 01             	lea    0x1(%eax),%ecx
c0032090:	0f be 00             	movsbl (%eax),%eax
c0032093:	8d 50 e0             	lea    -0x20(%eax),%edx
c0032096:	83 fa 58             	cmp    $0x58,%edx
c0032099:	0f 87 8f 07 00 00    	ja     c003282e <_svfprintf_r+0x8ce>
c003209f:	ff 24 95 a0 8f 03 c0 	jmp    *-0x3ffc7060(,%edx,4)
c00320a6:	66 90                	xchg   %ax,%ax
c00320a8:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00320af:	89 c8                	mov    %ecx,%eax
c00320b1:	eb da                	jmp    c003208d <_svfprintf_r+0x12d>
c00320b3:	8b 45 14             	mov    0x14(%ebp),%eax
c00320b6:	8b 55 14             	mov    0x14(%ebp),%edx
c00320b9:	8b 00                	mov    (%eax),%eax
c00320bb:	83 c2 04             	add    $0x4,%edx
c00320be:	89 55 14             	mov    %edx,0x14(%ebp)
c00320c1:	85 c0                	test   %eax,%eax
c00320c3:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c00320c9:	79 e4                	jns    c00320af <_svfprintf_r+0x14f>
c00320cb:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c00320d1:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c00320d8:	89 c8                	mov    %ecx,%eax
c00320da:	eb b1                	jmp    c003208d <_svfprintf_r+0x12d>
c00320dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00320e0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00320e6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00320ea:	8b 45 0c             	mov    0xc(%ebp),%eax
c00320ed:	89 44 24 04          	mov    %eax,0x4(%esp)
c00320f1:	8b 45 08             	mov    0x8(%ebp),%eax
c00320f4:	89 04 24             	mov    %eax,(%esp)
c00320f7:	e8 e4 49 00 00       	call   c0036ae0 <__ssprint_r>
c00320fc:	85 c0                	test   %eax,%eax
c00320fe:	75 30                	jne    c0032130 <_svfprintf_r+0x1d0>
c0032100:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032103:	e9 47 ff ff ff       	jmp    c003204f <_svfprintf_r+0xef>
c0032108:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c003210e:	85 c0                	test   %eax,%eax
c0032110:	74 1e                	je     c0032130 <_svfprintf_r+0x1d0>
c0032112:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032118:	89 44 24 08          	mov    %eax,0x8(%esp)
c003211c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003211f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032123:	8b 45 08             	mov    0x8(%ebp),%eax
c0032126:	89 04 24             	mov    %eax,(%esp)
c0032129:	e8 b2 49 00 00       	call   c0036ae0 <__ssprint_r>
c003212e:	66 90                	xchg   %ax,%ax
c0032130:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032133:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032138:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c003213c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0032143:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0032149:	5b                   	pop    %ebx
c003214a:	5e                   	pop    %esi
c003214b:	5f                   	pop    %edi
c003214c:	5d                   	pop    %ebp
c003214d:	c3                   	ret    
c003214e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0032153:	89 c8                	mov    %ecx,%eax
c0032155:	e9 33 ff ff ff       	jmp    c003208d <_svfprintf_r+0x12d>
c003215a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032160:	8b 45 14             	mov    0x14(%ebp),%eax
c0032163:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032166:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003216d:	8d 70 04             	lea    0x4(%eax),%esi
c0032170:	8b 00                	mov    (%eax),%eax
c0032172:	85 c0                	test   %eax,%eax
c0032174:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003217a:	0f 84 7f 18 00 00    	je     c00339ff <_svfprintf_r+0x1a9f>
c0032180:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0032186:	85 c0                	test   %eax,%eax
c0032188:	0f 88 b6 17 00 00    	js     c0033944 <_svfprintf_r+0x19e4>
c003218e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032192:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032198:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c003219f:	00 
c00321a0:	89 04 24             	mov    %eax,(%esp)
c00321a3:	e8 f8 38 00 00       	call   c0035aa0 <memchr>
c00321a8:	85 c0                	test   %eax,%eax
c00321aa:	0f 84 a0 19 00 00    	je     c0033b50 <_svfprintf_r+0x1bf0>
c00321b0:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00321b6:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00321bc:	39 d0                	cmp    %edx,%eax
c00321be:	0f 4f c2             	cmovg  %edx,%eax
c00321c1:	89 c2                	mov    %eax,%edx
c00321c3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00321ca:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00321d0:	31 c0                	xor    %eax,%eax
c00321d2:	85 d2                	test   %edx,%edx
c00321d4:	0f 49 c2             	cmovns %edx,%eax
c00321d7:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00321dd:	89 75 14             	mov    %esi,0x14(%ebp)
c00321e0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00321e7:	00 00 00 
c00321ea:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00321f1:	00 00 00 
c00321f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00321f8:	84 db                	test   %bl,%bl
c00321fa:	74 07                	je     c0032203 <_svfprintf_r+0x2a3>
c00321fc:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0032203:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032209:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003220f:	89 c8                	mov    %ecx,%eax
c0032211:	89 f2                	mov    %esi,%edx
c0032213:	83 c0 02             	add    $0x2,%eax
c0032216:	83 e2 02             	and    $0x2,%edx
c0032219:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c003221f:	89 f2                	mov    %esi,%edx
c0032221:	0f 44 c1             	cmove  %ecx,%eax
c0032224:	81 e2 84 00 00 00    	and    $0x84,%edx
c003222a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032230:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0032236:	0f 85 1c 06 00 00    	jne    c0032858 <_svfprintf_r+0x8f8>
c003223c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032242:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032248:	85 f6                	test   %esi,%esi
c003224a:	0f 8e 08 06 00 00    	jle    c0032858 <_svfprintf_r+0x8f8>
c0032250:	83 fe 10             	cmp    $0x10,%esi
c0032253:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032259:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003225f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032265:	7f 11                	jg     c0032278 <_svfprintf_r+0x318>
c0032267:	eb 6b                	jmp    c00322d4 <_svfprintf_r+0x374>
c0032269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032270:	83 ee 10             	sub    $0x10,%esi
c0032273:	83 fe 10             	cmp    $0x10,%esi
c0032276:	7e 5c                	jle    c00322d4 <_svfprintf_r+0x374>
c0032278:	83 c0 01             	add    $0x1,%eax
c003227b:	83 c1 10             	add    $0x10,%ecx
c003227e:	c7 07 14 91 03 c0    	movl   $0xc0039114,(%edi)
c0032284:	83 c7 08             	add    $0x8,%edi
c0032287:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003228e:	83 f8 07             	cmp    $0x7,%eax
c0032291:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032297:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003229d:	7e d1                	jle    c0032270 <_svfprintf_r+0x310>
c003229f:	8b 45 0c             	mov    0xc(%ebp),%eax
c00322a2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00322a6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00322aa:	8b 45 08             	mov    0x8(%ebp),%eax
c00322ad:	89 04 24             	mov    %eax,(%esp)
c00322b0:	e8 2b 48 00 00       	call   c0036ae0 <__ssprint_r>
c00322b5:	85 c0                	test   %eax,%eax
c00322b7:	0f 85 73 fe ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c00322bd:	83 ee 10             	sub    $0x10,%esi
c00322c0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00322c6:	83 fe 10             	cmp    $0x10,%esi
c00322c9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00322cf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00322d2:	7f a4                	jg     c0032278 <_svfprintf_r+0x318>
c00322d4:	83 c0 01             	add    $0x1,%eax
c00322d7:	01 f1                	add    %esi,%ecx
c00322d9:	83 f8 07             	cmp    $0x7,%eax
c00322dc:	c7 07 14 91 03 c0    	movl   $0xc0039114,(%edi)
c00322e2:	89 77 04             	mov    %esi,0x4(%edi)
c00322e5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00322eb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00322f1:	0f 8f 16 0e 00 00    	jg     c003310d <_svfprintf_r+0x11ad>
c00322f7:	83 c7 08             	add    $0x8,%edi
c00322fa:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032301:	e9 58 05 00 00       	jmp    c003285e <_svfprintf_r+0x8fe>
c0032306:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003230d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032313:	8b 45 14             	mov    0x14(%ebp),%eax
c0032316:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032319:	0f 85 fd 04 00 00    	jne    c003281c <_svfprintf_r+0x8bc>
c003231f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032326:	0f 84 f0 04 00 00    	je     c003281c <_svfprintf_r+0x8bc>
c003232c:	0f b7 08             	movzwl (%eax),%ecx
c003232f:	83 c0 04             	add    $0x4,%eax
c0032332:	89 45 14             	mov    %eax,0x14(%ebp)
c0032335:	b8 01 00 00 00       	mov    $0x1,%eax
c003233a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032340:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032347:	31 db                	xor    %ebx,%ebx
c0032349:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003234f:	89 f2                	mov    %esi,%edx
c0032351:	80 e2 7f             	and    $0x7f,%dl
c0032354:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c003235b:	0f 48 d6             	cmovs  %esi,%edx
c003235e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c0032364:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003236a:	85 d2                	test   %edx,%edx
c003236c:	75 08                	jne    c0032376 <_svfprintf_r+0x416>
c003236e:	85 c9                	test   %ecx,%ecx
c0032370:	0f 84 ea 08 00 00    	je     c0032c60 <_svfprintf_r+0xd00>
c0032376:	3c 01                	cmp    $0x1,%al
c0032378:	0f 84 6a 0d 00 00    	je     c00330e8 <_svfprintf_r+0x1188>
c003237e:	3c 02                	cmp    $0x2,%al
c0032380:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032383:	0f 85 bf 0b 00 00    	jne    c0032f48 <_svfprintf_r+0xfe8>
c0032389:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c003238f:	90                   	nop
c0032390:	89 ca                	mov    %ecx,%edx
c0032392:	83 e8 01             	sub    $0x1,%eax
c0032395:	83 e2 0f             	and    $0xf,%edx
c0032398:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c003239c:	c1 e9 04             	shr    $0x4,%ecx
c003239f:	85 c9                	test   %ecx,%ecx
c00323a1:	88 10                	mov    %dl,(%eax)
c00323a3:	75 eb                	jne    c0032390 <_svfprintf_r+0x430>
c00323a5:	8d 55 a8             	lea    -0x58(%ebp),%edx
c00323a8:	29 c2                	sub    %eax,%edx
c00323aa:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00323b0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00323b6:	66 90                	xchg   %ax,%ax
c00323b8:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00323be:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c00323c4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00323cb:	00 00 00 
c00323ce:	39 c2                	cmp    %eax,%edx
c00323d0:	0f 4d c2             	cmovge %edx,%eax
c00323d3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00323d9:	e9 1a fe ff ff       	jmp    c00321f8 <_svfprintf_r+0x298>
c00323de:	84 db                	test   %bl,%bl
c00323e0:	89 c8                	mov    %ecx,%eax
c00323e2:	0f 44 de             	cmove  %esi,%ebx
c00323e5:	e9 a3 fc ff ff       	jmp    c003208d <_svfprintf_r+0x12d>
c00323ea:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c00323f1:	89 c8                	mov    %ecx,%eax
c00323f3:	e9 95 fc ff ff       	jmp    c003208d <_svfprintf_r+0x12d>
c00323f8:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c00323ff:	00 00 00 
c0032402:	89 c8                	mov    %ecx,%eax
c0032404:	e9 84 fc ff ff       	jmp    c003208d <_svfprintf_r+0x12d>
c0032409:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c003240f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032412:	31 ff                	xor    %edi,%edi
c0032414:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c003241b:	00 00 00 
c003241e:	66 90                	xchg   %ax,%ax
c0032420:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032423:	83 c1 01             	add    $0x1,%ecx
c0032426:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032429:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c003242d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032430:	83 fa 09             	cmp    $0x9,%edx
c0032433:	76 eb                	jbe    c0032420 <_svfprintf_r+0x4c0>
c0032435:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c003243b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032441:	e9 4d fc ff ff       	jmp    c0032093 <_svfprintf_r+0x133>
c0032446:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003244d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032454:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003245a:	8b 45 14             	mov    0x14(%ebp),%eax
c003245d:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032460:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032466:	0f 85 61 02 00 00    	jne    c00326cd <_svfprintf_r+0x76d>
c003246c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032473:	0f 84 54 02 00 00    	je     c00326cd <_svfprintf_r+0x76d>
c0032479:	0f bf 08             	movswl (%eax),%ecx
c003247c:	83 c0 04             	add    $0x4,%eax
c003247f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032482:	85 c9                	test   %ecx,%ecx
c0032484:	0f 88 53 02 00 00    	js     c00326dd <_svfprintf_r+0x77d>
c003248a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032491:	b8 01 00 00 00       	mov    $0x1,%eax
c0032496:	e9 ae fe ff ff       	jmp    c0032349 <_svfprintf_r+0x3e9>
c003249b:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c00324a2:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00324a8:	8b 45 14             	mov    0x14(%ebp),%eax
c00324ab:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00324ae:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00324b4:	0f 84 15 10 00 00    	je     c00334cf <_svfprintf_r+0x156f>
c00324ba:	db 28                	fldt   (%eax)
c00324bc:	83 c0 0c             	add    $0xc,%eax
c00324bf:	89 45 14             	mov    %eax,0x14(%ebp)
c00324c2:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00324c8:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00324ce:	dd 1c 24             	fstpl  (%esp)
c00324d1:	e8 aa 44 00 00       	call   c0036980 <__fpclassifyd>
c00324d6:	83 f8 01             	cmp    $0x1,%eax
c00324d9:	0f 85 82 0f 00 00    	jne    c0033461 <_svfprintf_r+0x1501>
c00324df:	d9 ee                	fldz   
c00324e1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00324e7:	d9 c9                	fxch   %st(1)
c00324e9:	df e9                	fucomip %st(1),%st
c00324eb:	dd d8                	fstp   %st(0)
c00324ed:	0f 87 59 15 00 00    	ja     c0033a4c <_svfprintf_r+0x1aec>
c00324f3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00324fa:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0032501:	ba 62 8f 03 c0       	mov    $0xc0038f62,%edx
c0032506:	b8 66 8f 03 c0       	mov    $0xc0038f66,%eax
c003250b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032512:	00 00 00 
c0032515:	0f 4e c2             	cmovle %edx,%eax
c0032518:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003251e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032525:	ff ff ff 
c0032528:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c003252f:	00 00 00 
c0032532:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032539:	00 00 00 
c003253c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032543:	00 00 00 
c0032546:	e9 ad fc ff ff       	jmp    c00321f8 <_svfprintf_r+0x298>
c003254b:	8d 41 01             	lea    0x1(%ecx),%eax
c003254e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032554:	0f be 01             	movsbl (%ecx),%eax
c0032557:	83 f8 2a             	cmp    $0x2a,%eax
c003255a:	0f 84 84 18 00 00    	je     c0033de4 <_svfprintf_r+0x1e84>
c0032560:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032563:	31 c9                	xor    %ecx,%ecx
c0032565:	83 fa 09             	cmp    $0x9,%edx
c0032568:	0f 87 a8 16 00 00    	ja     c0033c16 <_svfprintf_r+0x1cb6>
c003256e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c0032574:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c003257a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032580:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c0032583:	83 c7 01             	add    $0x1,%edi
c0032586:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c0032589:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c003258d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032590:	83 fa 09             	cmp    $0x9,%edx
c0032593:	76 eb                	jbe    c0032580 <_svfprintf_r+0x620>
c0032595:	85 c9                	test   %ecx,%ecx
c0032597:	89 ca                	mov    %ecx,%edx
c0032599:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c003259e:	0f 48 d1             	cmovs  %ecx,%edx
c00325a1:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00325a7:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c00325ad:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00325b3:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c00325b9:	e9 d5 fa ff ff       	jmp    c0032093 <_svfprintf_r+0x133>
c00325be:	8b 45 14             	mov    0x14(%ebp),%eax
c00325c1:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00325c4:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c00325cb:	8b 08                	mov    (%eax),%ecx
c00325cd:	83 c0 04             	add    $0x4,%eax
c00325d0:	89 45 14             	mov    %eax,0x14(%ebp)
c00325d3:	b8 02 00 00 00       	mov    $0x2,%eax
c00325d8:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c00325df:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c00325e6:	c7 85 18 ff ff ff 83 	movl   $0xc0038f83,-0xe8(%ebp)
c00325ed:	8f 03 c0 
c00325f0:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c00325f7:	00 00 00 
c00325fa:	e9 41 fd ff ff       	jmp    c0032340 <_svfprintf_r+0x3e0>
c00325ff:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032606:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003260c:	8b 45 14             	mov    0x14(%ebp),%eax
c003260f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032612:	0f 85 87 00 00 00    	jne    c003269f <_svfprintf_r+0x73f>
c0032618:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003261f:	74 7e                	je     c003269f <_svfprintf_r+0x73f>
c0032621:	0f b7 08             	movzwl (%eax),%ecx
c0032624:	83 c0 04             	add    $0x4,%eax
c0032627:	89 45 14             	mov    %eax,0x14(%ebp)
c003262a:	31 c0                	xor    %eax,%eax
c003262c:	e9 0f fd ff ff       	jmp    c0032340 <_svfprintf_r+0x3e0>
c0032631:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032638:	89 c8                	mov    %ecx,%eax
c003263a:	e9 4e fa ff ff       	jmp    c003208d <_svfprintf_r+0x12d>
c003263f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032646:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032649:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003264f:	0f 85 97 0b 00 00    	jne    c00331ec <_svfprintf_r+0x128c>
c0032655:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003265c:	0f 84 8a 0b 00 00    	je     c00331ec <_svfprintf_r+0x128c>
c0032662:	8b 45 14             	mov    0x14(%ebp),%eax
c0032665:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c003266c:	8b 00                	mov    (%eax),%eax
c003266e:	66 89 10             	mov    %dx,(%eax)
c0032671:	8b 45 14             	mov    0x14(%ebp),%eax
c0032674:	83 c0 04             	add    $0x4,%eax
c0032677:	89 45 14             	mov    %eax,0x14(%ebp)
c003267a:	e9 7c f9 ff ff       	jmp    c0031ffb <_svfprintf_r+0x9b>
c003267f:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032686:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003268d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032693:	8b 45 14             	mov    0x14(%ebp),%eax
c0032696:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032699:	0f 84 79 ff ff ff    	je     c0032618 <_svfprintf_r+0x6b8>
c003269f:	8b 08                	mov    (%eax),%ecx
c00326a1:	83 c0 04             	add    $0x4,%eax
c00326a4:	89 45 14             	mov    %eax,0x14(%ebp)
c00326a7:	31 c0                	xor    %eax,%eax
c00326a9:	e9 92 fc ff ff       	jmp    c0032340 <_svfprintf_r+0x3e0>
c00326ae:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326b5:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326bb:	8b 45 14             	mov    0x14(%ebp),%eax
c00326be:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326c1:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00326c7:	0f 84 9f fd ff ff    	je     c003246c <_svfprintf_r+0x50c>
c00326cd:	8b 08                	mov    (%eax),%ecx
c00326cf:	83 c0 04             	add    $0x4,%eax
c00326d2:	89 45 14             	mov    %eax,0x14(%ebp)
c00326d5:	85 c9                	test   %ecx,%ecx
c00326d7:	0f 89 ad fd ff ff    	jns    c003248a <_svfprintf_r+0x52a>
c00326dd:	f7 d9                	neg    %ecx
c00326df:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c00326e4:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c00326eb:	b8 01 00 00 00       	mov    $0x1,%eax
c00326f0:	e9 54 fc ff ff       	jmp    c0032349 <_svfprintf_r+0x3e9>
c00326f5:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c00326fc:	89 c8                	mov    %ecx,%eax
c00326fe:	e9 8a f9 ff ff       	jmp    c003208d <_svfprintf_r+0x12d>
c0032703:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003270a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032710:	8b 45 14             	mov    0x14(%ebp),%eax
c0032713:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032716:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003271c:	c7 85 18 ff ff ff 83 	movl   $0xc0038f83,-0xe8(%ebp)
c0032723:	8f 03 c0 
c0032726:	75 71                	jne    c0032799 <_svfprintf_r+0x839>
c0032728:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003272f:	74 68                	je     c0032799 <_svfprintf_r+0x839>
c0032731:	0f b7 08             	movzwl (%eax),%ecx
c0032734:	83 c0 04             	add    $0x4,%eax
c0032737:	89 45 14             	mov    %eax,0x14(%ebp)
c003273a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032741:	b8 02 00 00 00       	mov    $0x2,%eax
c0032746:	0f 84 f4 fb ff ff    	je     c0032340 <_svfprintf_r+0x3e0>
c003274c:	85 c9                	test   %ecx,%ecx
c003274e:	0f 84 ec fb ff ff    	je     c0032340 <_svfprintf_r+0x3e0>
c0032754:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c003275b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032762:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032769:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c003276f:	e9 cc fb ff ff       	jmp    c0032340 <_svfprintf_r+0x3e0>
c0032774:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003277b:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032781:	8b 45 14             	mov    0x14(%ebp),%eax
c0032784:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032787:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003278d:	c7 85 18 ff ff ff 72 	movl   $0xc0038f72,-0xe8(%ebp)
c0032794:	8f 03 c0 
c0032797:	74 8f                	je     c0032728 <_svfprintf_r+0x7c8>
c0032799:	8b 08                	mov    (%eax),%ecx
c003279b:	83 c0 04             	add    $0x4,%eax
c003279e:	89 45 14             	mov    %eax,0x14(%ebp)
c00327a1:	eb 97                	jmp    c003273a <_svfprintf_r+0x7da>
c00327a3:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327a9:	8b 45 14             	mov    0x14(%ebp),%eax
c00327ac:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327af:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00327b6:	8b 00                	mov    (%eax),%eax
c00327b8:	88 45 80             	mov    %al,-0x80(%ebp)
c00327bb:	8b 45 14             	mov    0x14(%ebp),%eax
c00327be:	83 c0 04             	add    $0x4,%eax
c00327c1:	89 45 14             	mov    %eax,0x14(%ebp)
c00327c4:	8d 45 80             	lea    -0x80(%ebp),%eax
c00327c7:	31 db                	xor    %ebx,%ebx
c00327c9:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c00327d0:	00 00 00 
c00327d3:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c00327da:	00 00 00 
c00327dd:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00327e4:	00 00 00 
c00327e7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00327ee:	00 00 00 
c00327f1:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00327f7:	e9 07 fa ff ff       	jmp    c0032203 <_svfprintf_r+0x2a3>
c00327fc:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032803:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003280a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032810:	8b 45 14             	mov    0x14(%ebp),%eax
c0032813:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032816:	0f 84 03 fb ff ff    	je     c003231f <_svfprintf_r+0x3bf>
c003281c:	8b 08                	mov    (%eax),%ecx
c003281e:	83 c0 04             	add    $0x4,%eax
c0032821:	89 45 14             	mov    %eax,0x14(%ebp)
c0032824:	b8 01 00 00 00       	mov    $0x1,%eax
c0032829:	e9 12 fb ff ff       	jmp    c0032340 <_svfprintf_r+0x3e0>
c003282e:	85 c0                	test   %eax,%eax
c0032830:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032836:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032839:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003283f:	0f 84 c3 f8 ff ff    	je     c0032108 <_svfprintf_r+0x1a8>
c0032845:	88 45 80             	mov    %al,-0x80(%ebp)
c0032848:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003284f:	e9 70 ff ff ff       	jmp    c00327c4 <_svfprintf_r+0x864>
c0032854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032858:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003285e:	84 db                	test   %bl,%bl
c0032860:	74 33                	je     c0032895 <_svfprintf_r+0x935>
c0032862:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0032868:	83 c1 01             	add    $0x1,%ecx
c003286b:	89 07                	mov    %eax,(%edi)
c003286d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032873:	83 c7 08             	add    $0x8,%edi
c0032876:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003287d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032883:	83 c0 01             	add    $0x1,%eax
c0032886:	83 f8 07             	cmp    $0x7,%eax
c0032889:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003288f:	0f 8f 7b 06 00 00    	jg     c0032f10 <_svfprintf_r+0xfb0>
c0032895:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c003289b:	85 db                	test   %ebx,%ebx
c003289d:	74 33                	je     c00328d2 <_svfprintf_r+0x972>
c003289f:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c00328a5:	83 c1 02             	add    $0x2,%ecx
c00328a8:	89 07                	mov    %eax,(%edi)
c00328aa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00328b0:	83 c7 08             	add    $0x8,%edi
c00328b3:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c00328ba:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00328c0:	83 c0 01             	add    $0x1,%eax
c00328c3:	83 f8 07             	cmp    $0x7,%eax
c00328c6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00328cc:	0f 8f 06 06 00 00    	jg     c0032ed8 <_svfprintf_r+0xf78>
c00328d2:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c00328d9:	00 00 00 
c00328dc:	0f 84 c6 03 00 00    	je     c0032ca8 <_svfprintf_r+0xd48>
c00328e2:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c00328e8:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c00328ee:	85 f6                	test   %esi,%esi
c00328f0:	0f 8e d2 00 00 00    	jle    c00329c8 <_svfprintf_r+0xa68>
c00328f6:	83 fe 10             	cmp    $0x10,%esi
c00328f9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00328ff:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032905:	7f 11                	jg     c0032918 <_svfprintf_r+0x9b8>
c0032907:	eb 6b                	jmp    c0032974 <_svfprintf_r+0xa14>
c0032909:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032910:	83 ee 10             	sub    $0x10,%esi
c0032913:	83 fe 10             	cmp    $0x10,%esi
c0032916:	7e 5c                	jle    c0032974 <_svfprintf_r+0xa14>
c0032918:	83 c0 01             	add    $0x1,%eax
c003291b:	83 c1 10             	add    $0x10,%ecx
c003291e:	c7 07 04 91 03 c0    	movl   $0xc0039104,(%edi)
c0032924:	83 c7 08             	add    $0x8,%edi
c0032927:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003292e:	83 f8 07             	cmp    $0x7,%eax
c0032931:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032937:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003293d:	7e d1                	jle    c0032910 <_svfprintf_r+0x9b0>
c003293f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032942:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032946:	89 44 24 04          	mov    %eax,0x4(%esp)
c003294a:	8b 45 08             	mov    0x8(%ebp),%eax
c003294d:	89 04 24             	mov    %eax,(%esp)
c0032950:	e8 8b 41 00 00       	call   c0036ae0 <__ssprint_r>
c0032955:	85 c0                	test   %eax,%eax
c0032957:	0f 85 d3 f7 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c003295d:	83 ee 10             	sub    $0x10,%esi
c0032960:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032966:	83 fe 10             	cmp    $0x10,%esi
c0032969:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003296f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032972:	7f a4                	jg     c0032918 <_svfprintf_r+0x9b8>
c0032974:	83 c0 01             	add    $0x1,%eax
c0032977:	01 f1                	add    %esi,%ecx
c0032979:	c7 07 04 91 03 c0    	movl   $0xc0039104,(%edi)
c003297f:	83 c7 08             	add    $0x8,%edi
c0032982:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032985:	83 f8 07             	cmp    $0x7,%eax
c0032988:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003298e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032994:	7e 32                	jle    c00329c8 <_svfprintf_r+0xa68>
c0032996:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003299c:	89 44 24 08          	mov    %eax,0x8(%esp)
c00329a0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00329a3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00329a7:	8b 45 08             	mov    0x8(%ebp),%eax
c00329aa:	89 04 24             	mov    %eax,(%esp)
c00329ad:	e8 2e 41 00 00       	call   c0036ae0 <__ssprint_r>
c00329b2:	85 c0                	test   %eax,%eax
c00329b4:	0f 85 76 f7 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c00329ba:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00329c0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00329c3:	90                   	nop
c00329c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00329c8:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c00329cf:	01 00 00 
c00329d2:	0f 85 50 01 00 00    	jne    c0032b28 <_svfprintf_r+0xbc8>
c00329d8:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00329de:	89 07                	mov    %eax,(%edi)
c00329e0:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c00329e6:	01 c1                	add    %eax,%ecx
c00329e8:	89 47 04             	mov    %eax,0x4(%edi)
c00329eb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00329f1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00329f7:	83 c0 01             	add    $0x1,%eax
c00329fa:	83 f8 07             	cmp    $0x7,%eax
c00329fd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a03:	0f 8f 6a 04 00 00    	jg     c0032e73 <_svfprintf_r+0xf13>
c0032a09:	83 c7 08             	add    $0x8,%edi
c0032a0c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032a13:	0f 84 d7 00 00 00    	je     c0032af0 <_svfprintf_r+0xb90>
c0032a19:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032a1f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032a25:	85 f6                	test   %esi,%esi
c0032a27:	0f 8e c3 00 00 00    	jle    c0032af0 <_svfprintf_r+0xb90>
c0032a2d:	83 fe 10             	cmp    $0x10,%esi
c0032a30:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a36:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032a3c:	7f 0a                	jg     c0032a48 <_svfprintf_r+0xae8>
c0032a3e:	eb 64                	jmp    c0032aa4 <_svfprintf_r+0xb44>
c0032a40:	83 ee 10             	sub    $0x10,%esi
c0032a43:	83 fe 10             	cmp    $0x10,%esi
c0032a46:	7e 5c                	jle    c0032aa4 <_svfprintf_r+0xb44>
c0032a48:	83 c0 01             	add    $0x1,%eax
c0032a4b:	83 c1 10             	add    $0x10,%ecx
c0032a4e:	c7 07 14 91 03 c0    	movl   $0xc0039114,(%edi)
c0032a54:	83 c7 08             	add    $0x8,%edi
c0032a57:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032a5e:	83 f8 07             	cmp    $0x7,%eax
c0032a61:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a67:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a6d:	7e d1                	jle    c0032a40 <_svfprintf_r+0xae0>
c0032a6f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032a72:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032a76:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032a7a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032a7d:	89 04 24             	mov    %eax,(%esp)
c0032a80:	e8 5b 40 00 00       	call   c0036ae0 <__ssprint_r>
c0032a85:	85 c0                	test   %eax,%eax
c0032a87:	0f 85 a3 f6 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c0032a8d:	83 ee 10             	sub    $0x10,%esi
c0032a90:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032a96:	83 fe 10             	cmp    $0x10,%esi
c0032a99:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a9f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032aa2:	7f a4                	jg     c0032a48 <_svfprintf_r+0xae8>
c0032aa4:	83 c0 01             	add    $0x1,%eax
c0032aa7:	01 f1                	add    %esi,%ecx
c0032aa9:	83 f8 07             	cmp    $0x7,%eax
c0032aac:	c7 07 14 91 03 c0    	movl   $0xc0039114,(%edi)
c0032ab2:	89 77 04             	mov    %esi,0x4(%edi)
c0032ab5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032abb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ac1:	7e 2d                	jle    c0032af0 <_svfprintf_r+0xb90>
c0032ac3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ac9:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032acd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ad0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ad4:	8b 45 08             	mov    0x8(%ebp),%eax
c0032ad7:	89 04 24             	mov    %eax,(%esp)
c0032ada:	e8 01 40 00 00       	call   c0036ae0 <__ssprint_r>
c0032adf:	85 c0                	test   %eax,%eax
c0032ae1:	0f 85 49 f6 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c0032ae7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032aed:	8d 76 00             	lea    0x0(%esi),%esi
c0032af0:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032af6:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032afc:	39 c2                	cmp    %eax,%edx
c0032afe:	0f 4d c2             	cmovge %edx,%eax
c0032b01:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032b07:	85 c9                	test   %ecx,%ecx
c0032b09:	0f 85 99 03 00 00    	jne    c0032ea8 <_svfprintf_r+0xf48>
c0032b0f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032b16:	00 00 00 
c0032b19:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b1c:	e9 da f4 ff ff       	jmp    c0031ffb <_svfprintf_r+0x9b>
c0032b21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032b28:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032b2f:	0f 8e 5b 02 00 00    	jle    c0032d90 <_svfprintf_r+0xe30>
c0032b35:	d9 ee                	fldz   
c0032b37:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032b3d:	df e9                	fucomip %st(1),%st
c0032b3f:	dd d8                	fstp   %st(0)
c0032b41:	0f 8a 59 04 00 00    	jp     c0032fa0 <_svfprintf_r+0x1040>
c0032b47:	0f 85 53 04 00 00    	jne    c0032fa0 <_svfprintf_r+0x1040>
c0032b4d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b53:	83 c1 01             	add    $0x1,%ecx
c0032b56:	83 c7 08             	add    $0x8,%edi
c0032b59:	c7 47 f8 9b 8f 03 c0 	movl   $0xc0038f9b,-0x8(%edi)
c0032b60:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032b67:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b6d:	83 c0 01             	add    $0x1,%eax
c0032b70:	83 f8 07             	cmp    $0x7,%eax
c0032b73:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b79:	0f 8f 63 09 00 00    	jg     c00334e2 <_svfprintf_r+0x1582>
c0032b7f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032b85:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032b8b:	7c 0d                	jl     c0032b9a <_svfprintf_r+0xc3a>
c0032b8d:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032b94:	0f 84 72 fe ff ff    	je     c0032a0c <_svfprintf_r+0xaac>
c0032b9a:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032ba0:	83 c7 08             	add    $0x8,%edi
c0032ba3:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032ba6:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032bac:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032baf:	01 c1                	add    %eax,%ecx
c0032bb1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032bb7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032bbd:	83 c0 01             	add    $0x1,%eax
c0032bc0:	83 f8 07             	cmp    $0x7,%eax
c0032bc3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032bc9:	0f 8f dc 0b 00 00    	jg     c00337ab <_svfprintf_r+0x184b>
c0032bcf:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032bd5:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032bd8:	85 f6                	test   %esi,%esi
c0032bda:	0f 8e 2c fe ff ff    	jle    c0032a0c <_svfprintf_r+0xaac>
c0032be0:	83 fe 10             	cmp    $0x10,%esi
c0032be3:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032be9:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032bef:	7f 13                	jg     c0032c04 <_svfprintf_r+0xca4>
c0032bf1:	e9 e6 05 00 00       	jmp    c00331dc <_svfprintf_r+0x127c>
c0032bf6:	66 90                	xchg   %ax,%ax
c0032bf8:	83 ee 10             	sub    $0x10,%esi
c0032bfb:	83 fe 10             	cmp    $0x10,%esi
c0032bfe:	0f 8e d8 05 00 00    	jle    c00331dc <_svfprintf_r+0x127c>
c0032c04:	83 c0 01             	add    $0x1,%eax
c0032c07:	83 c1 10             	add    $0x10,%ecx
c0032c0a:	c7 07 04 91 03 c0    	movl   $0xc0039104,(%edi)
c0032c10:	83 c7 08             	add    $0x8,%edi
c0032c13:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032c1a:	83 f8 07             	cmp    $0x7,%eax
c0032c1d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c23:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c29:	7e cd                	jle    c0032bf8 <_svfprintf_r+0xc98>
c0032c2b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032c2e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032c32:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032c36:	8b 45 08             	mov    0x8(%ebp),%eax
c0032c39:	89 04 24             	mov    %eax,(%esp)
c0032c3c:	e8 9f 3e 00 00       	call   c0036ae0 <__ssprint_r>
c0032c41:	85 c0                	test   %eax,%eax
c0032c43:	0f 85 e7 f4 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c0032c49:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032c4f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032c52:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c58:	eb 9e                	jmp    c0032bf8 <_svfprintf_r+0xc98>
c0032c5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032c60:	84 c0                	test   %al,%al
c0032c62:	75 2c                	jne    c0032c90 <_svfprintf_r+0xd30>
c0032c64:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032c6b:	74 23                	je     c0032c90 <_svfprintf_r+0xd30>
c0032c6d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0032c73:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0032c77:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032c7d:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0032c80:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032c86:	e9 2d f7 ff ff       	jmp    c00323b8 <_svfprintf_r+0x458>
c0032c8b:	90                   	nop
c0032c8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032c90:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032c93:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c0032c9a:	00 00 00 
c0032c9d:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032ca3:	e9 10 f7 ff ff       	jmp    c00323b8 <_svfprintf_r+0x458>
c0032ca8:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032cae:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032cb4:	85 f6                	test   %esi,%esi
c0032cb6:	0f 8e 26 fc ff ff    	jle    c00328e2 <_svfprintf_r+0x982>
c0032cbc:	83 fe 10             	cmp    $0x10,%esi
c0032cbf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032cc5:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032ccb:	7f 0b                	jg     c0032cd8 <_svfprintf_r+0xd78>
c0032ccd:	eb 65                	jmp    c0032d34 <_svfprintf_r+0xdd4>
c0032ccf:	90                   	nop
c0032cd0:	83 ee 10             	sub    $0x10,%esi
c0032cd3:	83 fe 10             	cmp    $0x10,%esi
c0032cd6:	7e 5c                	jle    c0032d34 <_svfprintf_r+0xdd4>
c0032cd8:	83 c0 01             	add    $0x1,%eax
c0032cdb:	83 c1 10             	add    $0x10,%ecx
c0032cde:	c7 07 04 91 03 c0    	movl   $0xc0039104,(%edi)
c0032ce4:	83 c7 08             	add    $0x8,%edi
c0032ce7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032cee:	83 f8 07             	cmp    $0x7,%eax
c0032cf1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032cf7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032cfd:	7e d1                	jle    c0032cd0 <_svfprintf_r+0xd70>
c0032cff:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d02:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032d06:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d0a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d0d:	89 04 24             	mov    %eax,(%esp)
c0032d10:	e8 cb 3d 00 00       	call   c0036ae0 <__ssprint_r>
c0032d15:	85 c0                	test   %eax,%eax
c0032d17:	0f 85 13 f4 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c0032d1d:	83 ee 10             	sub    $0x10,%esi
c0032d20:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d26:	83 fe 10             	cmp    $0x10,%esi
c0032d29:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d2f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d32:	7f a4                	jg     c0032cd8 <_svfprintf_r+0xd78>
c0032d34:	83 c0 01             	add    $0x1,%eax
c0032d37:	01 f1                	add    %esi,%ecx
c0032d39:	c7 07 04 91 03 c0    	movl   $0xc0039104,(%edi)
c0032d3f:	83 c7 08             	add    $0x8,%edi
c0032d42:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032d45:	83 f8 07             	cmp    $0x7,%eax
c0032d48:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d4e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d54:	0f 8e 88 fb ff ff    	jle    c00328e2 <_svfprintf_r+0x982>
c0032d5a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032d60:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032d64:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d67:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d6b:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d6e:	89 04 24             	mov    %eax,(%esp)
c0032d71:	e8 6a 3d 00 00       	call   c0036ae0 <__ssprint_r>
c0032d76:	85 c0                	test   %eax,%eax
c0032d78:	0f 85 b2 f3 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c0032d7e:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d84:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d87:	e9 56 fb ff ff       	jmp    c00328e2 <_svfprintf_r+0x982>
c0032d8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032d90:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0032d97:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032d9d:	0f 8e df 05 00 00    	jle    c0033382 <_svfprintf_r+0x1422>
c0032da3:	89 07                	mov    %eax,(%edi)
c0032da5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032dab:	8d 51 01             	lea    0x1(%ecx),%edx
c0032dae:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0032db5:	83 c7 08             	add    $0x8,%edi
c0032db8:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032dbe:	83 c0 01             	add    $0x1,%eax
c0032dc1:	83 f8 07             	cmp    $0x7,%eax
c0032dc4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032dca:	0f 8f 59 06 00 00    	jg     c0033429 <_svfprintf_r+0x14c9>
c0032dd0:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0032dd6:	83 c0 01             	add    $0x1,%eax
c0032dd9:	83 c7 08             	add    $0x8,%edi
c0032ddc:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032de2:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0032de5:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c0032deb:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0032dee:	01 da                	add    %ebx,%edx
c0032df0:	83 f8 07             	cmp    $0x7,%eax
c0032df3:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032df9:	0f 8f f2 05 00 00    	jg     c00333f1 <_svfprintf_r+0x1491>
c0032dff:	d9 ee                	fldz   
c0032e01:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032e07:	df e9                	fucomip %st(1),%st
c0032e09:	dd d8                	fstp   %st(0)
c0032e0b:	7a 06                	jp     c0032e13 <_svfprintf_r+0xeb3>
c0032e0d:	0f 84 33 03 00 00    	je     c0033146 <_svfprintf_r+0x11e6>
c0032e13:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0032e19:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0032e1f:	83 c1 01             	add    $0x1,%ecx
c0032e22:	89 0f                	mov    %ecx,(%edi)
c0032e24:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0032e27:	89 4f 04             	mov    %ecx,0x4(%edi)
c0032e2a:	01 ca                	add    %ecx,%edx
c0032e2c:	83 c0 01             	add    $0x1,%eax
c0032e2f:	83 f8 07             	cmp    $0x7,%eax
c0032e32:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e38:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e3e:	0f 8f 75 05 00 00    	jg     c00333b9 <_svfprintf_r+0x1459>
c0032e44:	83 c7 08             	add    $0x8,%edi
c0032e47:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c0032e4d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0032e53:	89 0f                	mov    %ecx,(%edi)
c0032e55:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032e58:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c0032e5b:	83 c0 01             	add    $0x1,%eax
c0032e5e:	83 f8 07             	cmp    $0x7,%eax
c0032e61:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032e67:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e6d:	0f 8e 96 fb ff ff    	jle    c0032a09 <_svfprintf_r+0xaa9>
c0032e73:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032e79:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032e7d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032e80:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032e84:	8b 45 08             	mov    0x8(%ebp),%eax
c0032e87:	89 04 24             	mov    %eax,(%esp)
c0032e8a:	e8 51 3c 00 00       	call   c0036ae0 <__ssprint_r>
c0032e8f:	85 c0                	test   %eax,%eax
c0032e91:	0f 85 99 f2 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c0032e97:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032e9d:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ea0:	e9 67 fb ff ff       	jmp    c0032a0c <_svfprintf_r+0xaac>
c0032ea5:	8d 76 00             	lea    0x0(%esi),%esi
c0032ea8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032eae:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032eb2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032eb5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032eb9:	8b 45 08             	mov    0x8(%ebp),%eax
c0032ebc:	89 04 24             	mov    %eax,(%esp)
c0032ebf:	e8 1c 3c 00 00       	call   c0036ae0 <__ssprint_r>
c0032ec4:	85 c0                	test   %eax,%eax
c0032ec6:	0f 84 43 fc ff ff    	je     c0032b0f <_svfprintf_r+0xbaf>
c0032ecc:	e9 5f f2 ff ff       	jmp    c0032130 <_svfprintf_r+0x1d0>
c0032ed1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032ed8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ede:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ee2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ee5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ee9:	8b 45 08             	mov    0x8(%ebp),%eax
c0032eec:	89 04 24             	mov    %eax,(%esp)
c0032eef:	e8 ec 3b 00 00       	call   c0036ae0 <__ssprint_r>
c0032ef4:	85 c0                	test   %eax,%eax
c0032ef6:	0f 85 34 f2 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c0032efc:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f02:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f05:	e9 c8 f9 ff ff       	jmp    c00328d2 <_svfprintf_r+0x972>
c0032f0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f10:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f16:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f1a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f1d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f21:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f24:	89 04 24             	mov    %eax,(%esp)
c0032f27:	e8 b4 3b 00 00       	call   c0036ae0 <__ssprint_r>
c0032f2c:	85 c0                	test   %eax,%eax
c0032f2e:	0f 85 fc f1 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c0032f34:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f3a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f3d:	e9 53 f9 ff ff       	jmp    c0032895 <_svfprintf_r+0x935>
c0032f42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f48:	89 c2                	mov    %eax,%edx
c0032f4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f50:	89 c8                	mov    %ecx,%eax
c0032f52:	83 ea 01             	sub    $0x1,%edx
c0032f55:	83 e0 07             	and    $0x7,%eax
c0032f58:	c1 e9 03             	shr    $0x3,%ecx
c0032f5b:	83 c0 30             	add    $0x30,%eax
c0032f5e:	85 c9                	test   %ecx,%ecx
c0032f60:	88 02                	mov    %al,(%edx)
c0032f62:	75 ec                	jne    c0032f50 <_svfprintf_r+0xff0>
c0032f64:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032f6b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0032f71:	0f 84 5b 01 00 00    	je     c00330d2 <_svfprintf_r+0x1172>
c0032f77:	3c 30                	cmp    $0x30,%al
c0032f79:	74 0b                	je     c0032f86 <_svfprintf_r+0x1026>
c0032f7b:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0032f82:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0032f86:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032f89:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0032f8f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032f95:	e9 1e f4 ff ff       	jmp    c00323b8 <_svfprintf_r+0x458>
c0032f9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032fa0:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0032fa6:	85 db                	test   %ebx,%ebx
c0032fa8:	0f 8e 66 05 00 00    	jle    c0033514 <_svfprintf_r+0x15b4>
c0032fae:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0032fb4:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032fba:	01 d0                	add    %edx,%eax
c0032fbc:	89 c3                	mov    %eax,%ebx
c0032fbe:	29 d3                	sub    %edx,%ebx
c0032fc0:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0032fc6:	89 d0                	mov    %edx,%eax
c0032fc8:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0032fce:	39 d3                	cmp    %edx,%ebx
c0032fd0:	0f 4f da             	cmovg  %edx,%ebx
c0032fd3:	85 db                	test   %ebx,%ebx
c0032fd5:	7e 28                	jle    c0032fff <_svfprintf_r+0x109f>
c0032fd7:	89 07                	mov    %eax,(%edi)
c0032fd9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032fdf:	01 d9                	add    %ebx,%ecx
c0032fe1:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032fe4:	83 c7 08             	add    $0x8,%edi
c0032fe7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032fed:	83 c0 01             	add    $0x1,%eax
c0032ff0:	83 f8 07             	cmp    $0x7,%eax
c0032ff3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ff9:	0f 8f 58 09 00 00    	jg     c0033957 <_svfprintf_r+0x19f7>
c0032fff:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0033005:	31 c0                	xor    %eax,%eax
c0033007:	85 db                	test   %ebx,%ebx
c0033009:	0f 49 c3             	cmovns %ebx,%eax
c003300c:	29 c6                	sub    %eax,%esi
c003300e:	85 f6                	test   %esi,%esi
c0033010:	0f 8e 40 02 00 00    	jle    c0033256 <_svfprintf_r+0x12f6>
c0033016:	83 fe 10             	cmp    $0x10,%esi
c0033019:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003301f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033025:	7f 15                	jg     c003303c <_svfprintf_r+0x10dc>
c0033027:	e9 db 01 00 00       	jmp    c0033207 <_svfprintf_r+0x12a7>
c003302c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033030:	83 ee 10             	sub    $0x10,%esi
c0033033:	83 fe 10             	cmp    $0x10,%esi
c0033036:	0f 8e cb 01 00 00    	jle    c0033207 <_svfprintf_r+0x12a7>
c003303c:	83 c0 01             	add    $0x1,%eax
c003303f:	83 c1 10             	add    $0x10,%ecx
c0033042:	c7 07 04 91 03 c0    	movl   $0xc0039104,(%edi)
c0033048:	83 c7 08             	add    $0x8,%edi
c003304b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033052:	83 f8 07             	cmp    $0x7,%eax
c0033055:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003305b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033061:	7e cd                	jle    c0033030 <_svfprintf_r+0x10d0>
c0033063:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033066:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003306a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003306e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033071:	89 04 24             	mov    %eax,(%esp)
c0033074:	e8 67 3a 00 00       	call   c0036ae0 <__ssprint_r>
c0033079:	85 c0                	test   %eax,%eax
c003307b:	0f 85 af f0 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c0033081:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033087:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003308a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033090:	eb 9e                	jmp    c0033030 <_svfprintf_r+0x10d0>
c0033092:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033095:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c003309a:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00330a0:	89 c7                	mov    %eax,%edi
c00330a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00330a8:	89 c8                	mov    %ecx,%eax
c00330aa:	83 ef 01             	sub    $0x1,%edi
c00330ad:	f7 e6                	mul    %esi
c00330af:	c1 ea 03             	shr    $0x3,%edx
c00330b2:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00330b5:	01 c0                	add    %eax,%eax
c00330b7:	29 c1                	sub    %eax,%ecx
c00330b9:	83 c1 30             	add    $0x30,%ecx
c00330bc:	85 d2                	test   %edx,%edx
c00330be:	88 0f                	mov    %cl,(%edi)
c00330c0:	89 d1                	mov    %edx,%ecx
c00330c2:	75 e4                	jne    c00330a8 <_svfprintf_r+0x1148>
c00330c4:	89 fa                	mov    %edi,%edx
c00330c6:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c00330cc:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00330d2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00330d5:	29 d0                	sub    %edx,%eax
c00330d7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00330dd:	e9 d6 f2 ff ff       	jmp    c00323b8 <_svfprintf_r+0x458>
c00330e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00330e8:	83 f9 09             	cmp    $0x9,%ecx
c00330eb:	77 a5                	ja     c0033092 <_svfprintf_r+0x1132>
c00330ed:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c00330f3:	83 c1 30             	add    $0x30,%ecx
c00330f6:	88 4d a7             	mov    %cl,-0x59(%ebp)
c00330f9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00330ff:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033102:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033108:	e9 ab f2 ff ff       	jmp    c00323b8 <_svfprintf_r+0x458>
c003310d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033113:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033117:	8b 45 0c             	mov    0xc(%ebp),%eax
c003311a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003311e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033121:	89 04 24             	mov    %eax,(%esp)
c0033124:	e8 b7 39 00 00       	call   c0036ae0 <__ssprint_r>
c0033129:	85 c0                	test   %eax,%eax
c003312b:	0f 85 ff ef ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c0033131:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033138:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003313b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033141:	e9 18 f7 ff ff       	jmp    c003285e <_svfprintf_r+0x8fe>
c0033146:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003314c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c003314f:	85 f6                	test   %esi,%esi
c0033151:	0f 8e f0 fc ff ff    	jle    c0032e47 <_svfprintf_r+0xee7>
c0033157:	83 fe 10             	cmp    $0x10,%esi
c003315a:	7e 70                	jle    c00331cc <_svfprintf_r+0x126c>
c003315c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033162:	eb 0c                	jmp    c0033170 <_svfprintf_r+0x1210>
c0033164:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033168:	83 ee 10             	sub    $0x10,%esi
c003316b:	83 fe 10             	cmp    $0x10,%esi
c003316e:	7e 5c                	jle    c00331cc <_svfprintf_r+0x126c>
c0033170:	83 c0 01             	add    $0x1,%eax
c0033173:	83 c2 10             	add    $0x10,%edx
c0033176:	c7 07 04 91 03 c0    	movl   $0xc0039104,(%edi)
c003317c:	83 c7 08             	add    $0x8,%edi
c003317f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033186:	83 f8 07             	cmp    $0x7,%eax
c0033189:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003318f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033195:	7e d1                	jle    c0033168 <_svfprintf_r+0x1208>
c0033197:	8b 45 0c             	mov    0xc(%ebp),%eax
c003319a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003319e:	89 44 24 04          	mov    %eax,0x4(%esp)
c00331a2:	8b 45 08             	mov    0x8(%ebp),%eax
c00331a5:	89 04 24             	mov    %eax,(%esp)
c00331a8:	e8 33 39 00 00       	call   c0036ae0 <__ssprint_r>
c00331ad:	85 c0                	test   %eax,%eax
c00331af:	0f 85 7b ef ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c00331b5:	83 ee 10             	sub    $0x10,%esi
c00331b8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00331be:	83 fe 10             	cmp    $0x10,%esi
c00331c1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00331c7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00331ca:	7f a4                	jg     c0033170 <_svfprintf_r+0x1210>
c00331cc:	c7 07 04 91 03 c0    	movl   $0xc0039104,(%edi)
c00331d2:	01 f2                	add    %esi,%edx
c00331d4:	89 77 04             	mov    %esi,0x4(%edi)
c00331d7:	e9 50 fc ff ff       	jmp    c0032e2c <_svfprintf_r+0xecc>
c00331dc:	c7 07 04 91 03 c0    	movl   $0xc0039104,(%edi)
c00331e2:	01 f1                	add    %esi,%ecx
c00331e4:	89 77 04             	mov    %esi,0x4(%edi)
c00331e7:	e9 6f fc ff ff       	jmp    c0032e5b <_svfprintf_r+0xefb>
c00331ec:	8b 45 14             	mov    0x14(%ebp),%eax
c00331ef:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c00331f5:	8b 00                	mov    (%eax),%eax
c00331f7:	89 10                	mov    %edx,(%eax)
c00331f9:	8b 45 14             	mov    0x14(%ebp),%eax
c00331fc:	83 c0 04             	add    $0x4,%eax
c00331ff:	89 45 14             	mov    %eax,0x14(%ebp)
c0033202:	e9 f4 ed ff ff       	jmp    c0031ffb <_svfprintf_r+0x9b>
c0033207:	83 c0 01             	add    $0x1,%eax
c003320a:	01 f1                	add    %esi,%ecx
c003320c:	c7 07 04 91 03 c0    	movl   $0xc0039104,(%edi)
c0033212:	83 c7 08             	add    $0x8,%edi
c0033215:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033218:	83 f8 07             	cmp    $0x7,%eax
c003321b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033221:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033227:	7e 2d                	jle    c0033256 <_svfprintf_r+0x12f6>
c0033229:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003322f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033233:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033236:	89 44 24 04          	mov    %eax,0x4(%esp)
c003323a:	8b 45 08             	mov    0x8(%ebp),%eax
c003323d:	89 04 24             	mov    %eax,(%esp)
c0033240:	e8 9b 38 00 00       	call   c0036ae0 <__ssprint_r>
c0033245:	85 c0                	test   %eax,%eax
c0033247:	0f 85 e3 ee ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c003324d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033253:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033256:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003325c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c0033262:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c0033268:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c003326e:	89 c6                	mov    %eax,%esi
c0033270:	7c 0d                	jl     c003327f <_svfprintf_r+0x131f>
c0033272:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033279:	0f 84 5e 05 00 00    	je     c00337dd <_svfprintf_r+0x187d>
c003327f:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033285:	89 07                	mov    %eax,(%edi)
c0033287:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c003328d:	01 c1                	add    %eax,%ecx
c003328f:	89 47 04             	mov    %eax,0x4(%edi)
c0033292:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033298:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003329e:	83 c0 01             	add    $0x1,%eax
c00332a1:	83 f8 07             	cmp    $0x7,%eax
c00332a4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00332aa:	0f 8f d9 06 00 00    	jg     c0033989 <_svfprintf_r+0x1a29>
c00332b0:	83 c7 08             	add    $0x8,%edi
c00332b3:	89 d0                	mov    %edx,%eax
c00332b5:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c00332bb:	89 f2                	mov    %esi,%edx
c00332bd:	29 f3                	sub    %esi,%ebx
c00332bf:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c00332c5:	29 c6                	sub    %eax,%esi
c00332c7:	39 de                	cmp    %ebx,%esi
c00332c9:	0f 4e de             	cmovle %esi,%ebx
c00332cc:	85 db                	test   %ebx,%ebx
c00332ce:	7e 29                	jle    c00332f9 <_svfprintf_r+0x1399>
c00332d0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332d6:	01 d9                	add    %ebx,%ecx
c00332d8:	83 c7 08             	add    $0x8,%edi
c00332db:	89 57 f8             	mov    %edx,-0x8(%edi)
c00332de:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00332e1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00332e7:	83 c0 01             	add    $0x1,%eax
c00332ea:	83 f8 07             	cmp    $0x7,%eax
c00332ed:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00332f3:	0f 8f c8 06 00 00    	jg     c00339c1 <_svfprintf_r+0x1a61>
c00332f9:	31 c0                	xor    %eax,%eax
c00332fb:	85 db                	test   %ebx,%ebx
c00332fd:	0f 49 c3             	cmovns %ebx,%eax
c0033300:	29 c6                	sub    %eax,%esi
c0033302:	85 f6                	test   %esi,%esi
c0033304:	0f 8e 02 f7 ff ff    	jle    c0032a0c <_svfprintf_r+0xaac>
c003330a:	83 fe 10             	cmp    $0x10,%esi
c003330d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033313:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033319:	7f 11                	jg     c003332c <_svfprintf_r+0x13cc>
c003331b:	e9 bc fe ff ff       	jmp    c00331dc <_svfprintf_r+0x127c>
c0033320:	83 ee 10             	sub    $0x10,%esi
c0033323:	83 fe 10             	cmp    $0x10,%esi
c0033326:	0f 8e b0 fe ff ff    	jle    c00331dc <_svfprintf_r+0x127c>
c003332c:	83 c0 01             	add    $0x1,%eax
c003332f:	83 c1 10             	add    $0x10,%ecx
c0033332:	c7 07 04 91 03 c0    	movl   $0xc0039104,(%edi)
c0033338:	83 c7 08             	add    $0x8,%edi
c003333b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033342:	83 f8 07             	cmp    $0x7,%eax
c0033345:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003334b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033351:	7e cd                	jle    c0033320 <_svfprintf_r+0x13c0>
c0033353:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033356:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003335a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003335e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033361:	89 04 24             	mov    %eax,(%esp)
c0033364:	e8 77 37 00 00       	call   c0036ae0 <__ssprint_r>
c0033369:	85 c0                	test   %eax,%eax
c003336b:	0f 85 bf ed ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c0033371:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033377:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003337a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033380:	eb 9e                	jmp    c0033320 <_svfprintf_r+0x13c0>
c0033382:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033389:	0f 85 14 fa ff ff    	jne    c0032da3 <_svfprintf_r+0xe43>
c003338f:	89 07                	mov    %eax,(%edi)
c0033391:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033397:	8d 51 01             	lea    0x1(%ecx),%edx
c003339a:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c00333a1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00333a7:	83 c0 01             	add    $0x1,%eax
c00333aa:	83 f8 07             	cmp    $0x7,%eax
c00333ad:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333b3:	0f 8e 8b fa ff ff    	jle    c0032e44 <_svfprintf_r+0xee4>
c00333b9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00333bf:	89 44 24 08          	mov    %eax,0x8(%esp)
c00333c3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00333c6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00333ca:	8b 45 08             	mov    0x8(%ebp),%eax
c00333cd:	89 04 24             	mov    %eax,(%esp)
c00333d0:	e8 0b 37 00 00       	call   c0036ae0 <__ssprint_r>
c00333d5:	85 c0                	test   %eax,%eax
c00333d7:	0f 85 53 ed ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c00333dd:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00333e3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00333e6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333ec:	e9 56 fa ff ff       	jmp    c0032e47 <_svfprintf_r+0xee7>
c00333f1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00333f7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00333fb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00333fe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033402:	8b 45 08             	mov    0x8(%ebp),%eax
c0033405:	89 04 24             	mov    %eax,(%esp)
c0033408:	e8 d3 36 00 00       	call   c0036ae0 <__ssprint_r>
c003340d:	85 c0                	test   %eax,%eax
c003340f:	0f 85 1b ed ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c0033415:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003341b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003341e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033424:	e9 d6 f9 ff ff       	jmp    c0032dff <_svfprintf_r+0xe9f>
c0033429:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003342f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033433:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033436:	89 44 24 04          	mov    %eax,0x4(%esp)
c003343a:	8b 45 08             	mov    0x8(%ebp),%eax
c003343d:	89 04 24             	mov    %eax,(%esp)
c0033440:	e8 9b 36 00 00       	call   c0036ae0 <__ssprint_r>
c0033445:	85 c0                	test   %eax,%eax
c0033447:	0f 85 e3 ec ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c003344d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033453:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033456:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003345c:	e9 6f f9 ff ff       	jmp    c0032dd0 <_svfprintf_r+0xe70>
c0033461:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033467:	dd 1c 24             	fstpl  (%esp)
c003346a:	e8 11 35 00 00       	call   c0036980 <__fpclassifyd>
c003346f:	85 c0                	test   %eax,%eax
c0033471:	0f 85 a3 01 00 00    	jne    c003361a <_svfprintf_r+0x16ba>
c0033477:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c003347e:	ba 6a 8f 03 c0       	mov    $0xc0038f6a,%edx
c0033483:	b8 6e 8f 03 c0       	mov    $0xc0038f6e,%eax
c0033488:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003348f:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0033496:	00 00 00 
c0033499:	0f 4e c2             	cmovle %edx,%eax
c003349c:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00334a2:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c00334a9:	ff ff ff 
c00334ac:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c00334b3:	00 00 00 
c00334b6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00334bd:	00 00 00 
c00334c0:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00334c7:	00 00 00 
c00334ca:	e9 29 ed ff ff       	jmp    c00321f8 <_svfprintf_r+0x298>
c00334cf:	dd 00                	fldl   (%eax)
c00334d1:	83 c0 08             	add    $0x8,%eax
c00334d4:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00334da:	89 45 14             	mov    %eax,0x14(%ebp)
c00334dd:	e9 e6 ef ff ff       	jmp    c00324c8 <_svfprintf_r+0x568>
c00334e2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00334e8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00334ec:	8b 45 0c             	mov    0xc(%ebp),%eax
c00334ef:	89 44 24 04          	mov    %eax,0x4(%esp)
c00334f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00334f6:	89 04 24             	mov    %eax,(%esp)
c00334f9:	e8 e2 35 00 00       	call   c0036ae0 <__ssprint_r>
c00334fe:	85 c0                	test   %eax,%eax
c0033500:	0f 85 2a ec ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c0033506:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003350c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003350f:	e9 6b f6 ff ff       	jmp    c0032b7f <_svfprintf_r+0xc1f>
c0033514:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003351a:	83 c1 01             	add    $0x1,%ecx
c003351d:	83 c7 08             	add    $0x8,%edi
c0033520:	c7 47 f8 9b 8f 03 c0 	movl   $0xc0038f9b,-0x8(%edi)
c0033527:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003352e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033534:	83 c0 01             	add    $0x1,%eax
c0033537:	83 f8 07             	cmp    $0x7,%eax
c003353a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033540:	0f 8f ef 02 00 00    	jg     c0033835 <_svfprintf_r+0x18d5>
c0033546:	85 db                	test   %ebx,%ebx
c0033548:	75 17                	jne    c0033561 <_svfprintf_r+0x1601>
c003354a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0033550:	85 d2                	test   %edx,%edx
c0033552:	75 0d                	jne    c0033561 <_svfprintf_r+0x1601>
c0033554:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003355b:	0f 84 ab f4 ff ff    	je     c0032a0c <_svfprintf_r+0xaac>
c0033561:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033567:	83 c7 08             	add    $0x8,%edi
c003356a:	89 47 f8             	mov    %eax,-0x8(%edi)
c003356d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0033573:	89 47 fc             	mov    %eax,-0x4(%edi)
c0033576:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c0033579:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003357f:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033585:	83 c0 01             	add    $0x1,%eax
c0033588:	83 f8 07             	cmp    $0x7,%eax
c003358b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033591:	0f 8f 60 03 00 00    	jg     c00338f7 <_svfprintf_r+0x1997>
c0033597:	f7 db                	neg    %ebx
c0033599:	85 db                	test   %ebx,%ebx
c003359b:	0f 8e 21 03 00 00    	jle    c00338c2 <_svfprintf_r+0x1962>
c00335a1:	83 fb 10             	cmp    $0x10,%ebx
c00335a4:	0f 8e c3 02 00 00    	jle    c003386d <_svfprintf_r+0x190d>
c00335aa:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c00335b0:	eb 12                	jmp    c00335c4 <_svfprintf_r+0x1664>
c00335b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00335b8:	83 eb 10             	sub    $0x10,%ebx
c00335bb:	83 fb 10             	cmp    $0x10,%ebx
c00335be:	0f 8e a9 02 00 00    	jle    c003386d <_svfprintf_r+0x190d>
c00335c4:	83 c0 01             	add    $0x1,%eax
c00335c7:	83 c2 10             	add    $0x10,%edx
c00335ca:	c7 07 04 91 03 c0    	movl   $0xc0039104,(%edi)
c00335d0:	83 c7 08             	add    $0x8,%edi
c00335d3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00335da:	83 f8 07             	cmp    $0x7,%eax
c00335dd:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00335e3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335e9:	7e cd                	jle    c00335b8 <_svfprintf_r+0x1658>
c00335eb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00335ee:	89 74 24 08          	mov    %esi,0x8(%esp)
c00335f2:	89 44 24 04          	mov    %eax,0x4(%esp)
c00335f6:	8b 45 08             	mov    0x8(%ebp),%eax
c00335f9:	89 04 24             	mov    %eax,(%esp)
c00335fc:	e8 df 34 00 00       	call   c0036ae0 <__ssprint_r>
c0033601:	85 c0                	test   %eax,%eax
c0033603:	0f 85 27 eb ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c0033609:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003360f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033612:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033618:	eb 9e                	jmp    c00335b8 <_svfprintf_r+0x1658>
c003361a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033620:	83 e3 df             	and    $0xffffffdf,%ebx
c0033623:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c003362a:	0f 84 05 03 00 00    	je     c0033935 <_svfprintf_r+0x19d5>
c0033630:	83 fb 47             	cmp    $0x47,%ebx
c0033633:	75 16                	jne    c003364b <_svfprintf_r+0x16eb>
c0033635:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003363b:	b8 01 00 00 00       	mov    $0x1,%eax
c0033640:	85 d2                	test   %edx,%edx
c0033642:	0f 45 c2             	cmovne %edx,%eax
c0033645:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c003364b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033651:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033657:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c003365d:	80 cc 01             	or     $0x1,%ah
c0033660:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c0033666:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003366c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c0033673:	85 c0                	test   %eax,%eax
c0033675:	0f 88 ba 05 00 00    	js     c0033c35 <_svfprintf_r+0x1cd5>
c003367b:	83 fb 46             	cmp    $0x46,%ebx
c003367e:	0f 94 c0             	sete   %al
c0033681:	89 c6                	mov    %eax,%esi
c0033683:	0f 84 d4 03 00 00    	je     c0033a5d <_svfprintf_r+0x1afd>
c0033689:	83 fb 45             	cmp    $0x45,%ebx
c003368c:	0f 85 99 05 00 00    	jne    c0033c2b <_svfprintf_r+0x1ccb>
c0033692:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033698:	dd 54 24 04          	fstl   0x4(%esp)
c003369c:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c00336a3:	00 
c00336a4:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c00336aa:	8d 70 01             	lea    0x1(%eax),%esi
c00336ad:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c00336b3:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c00336b7:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c00336bd:	89 44 24 18          	mov    %eax,0x18(%esp)
c00336c1:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c00336c7:	89 44 24 14          	mov    %eax,0x14(%esp)
c00336cb:	8b 45 08             	mov    0x8(%ebp),%eax
c00336ce:	89 74 24 10          	mov    %esi,0x10(%esp)
c00336d2:	89 04 24             	mov    %eax,(%esp)
c00336d5:	e8 56 09 00 00       	call   c0034030 <_dtoa_r>
c00336da:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00336e0:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c00336e3:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c00336e9:	d9 ee                	fldz   
c00336eb:	d9 c9                	fxch   %st(1)
c00336ed:	df e9                	fucomip %st(1),%st
c00336ef:	dd d8                	fstp   %st(0)
c00336f1:	0f 8a fd 00 00 00    	jp     c00337f4 <_svfprintf_r+0x1894>
c00336f7:	89 c8                	mov    %ecx,%eax
c00336f9:	0f 85 f5 00 00 00    	jne    c00337f4 <_svfprintf_r+0x1894>
c00336ff:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033705:	83 fb 47             	cmp    $0x47,%ebx
c0033708:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c003370e:	0f 84 1e 04 00 00    	je     c0033b32 <_svfprintf_r+0x1bd2>
c0033714:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003371b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033721:	0f 8e 65 04 00 00    	jle    c0033b8c <_svfprintf_r+0x1c2c>
c0033727:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c003372e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033734:	0f 84 3c 05 00 00    	je     c0033c76 <_svfprintf_r+0x1d16>
c003373a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0033740:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0033746:	0f 8f f7 04 00 00    	jg     c0033c43 <_svfprintf_r+0x1ce3>
c003374c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033752:	83 e0 01             	and    $0x1,%eax
c0033755:	0f 85 e2 05 00 00    	jne    c0033d3d <_svfprintf_r+0x1ddd>
c003375b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033761:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033768:	00 00 00 
c003376b:	85 d2                	test   %edx,%edx
c003376d:	0f 49 c2             	cmovns %edx,%eax
c0033770:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033776:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c003377d:	0f 85 68 03 00 00    	jne    c0033aeb <_svfprintf_r+0x1b8b>
c0033783:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033789:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c003378f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033796:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003379d:	00 00 00 
c00337a0:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c00337a6:	e9 4d ea ff ff       	jmp    c00321f8 <_svfprintf_r+0x298>
c00337ab:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00337b1:	89 44 24 08          	mov    %eax,0x8(%esp)
c00337b5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00337b8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00337bc:	8b 45 08             	mov    0x8(%ebp),%eax
c00337bf:	89 04 24             	mov    %eax,(%esp)
c00337c2:	e8 19 33 00 00       	call   c0036ae0 <__ssprint_r>
c00337c7:	85 c0                	test   %eax,%eax
c00337c9:	0f 85 61 e9 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c00337cf:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00337d5:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00337d8:	e9 f2 f3 ff ff       	jmp    c0032bcf <_svfprintf_r+0xc6f>
c00337dd:	89 d0                	mov    %edx,%eax
c00337df:	e9 d1 fa ff ff       	jmp    c00332b5 <_svfprintf_r+0x1355>
c00337e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00337e8:	8d 50 01             	lea    0x1(%eax),%edx
c00337eb:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c00337f1:	c6 00 30             	movb   $0x30,(%eax)
c00337f4:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c00337fa:	39 c1                	cmp    %eax,%ecx
c00337fc:	77 ea                	ja     c00337e8 <_svfprintf_r+0x1888>
c00337fe:	e9 fc fe ff ff       	jmp    c00336ff <_svfprintf_r+0x179f>
c0033803:	8b 45 08             	mov    0x8(%ebp),%eax
c0033806:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c003380d:	00 
c003380e:	89 04 24             	mov    %eax,(%esp)
c0033811:	e8 4a 1b 00 00       	call   c0035360 <_malloc_r>
c0033816:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033819:	85 c0                	test   %eax,%eax
c003381b:	89 02                	mov    %eax,(%edx)
c003381d:	89 42 10             	mov    %eax,0x10(%edx)
c0033820:	0f 84 15 06 00 00    	je     c0033e3b <_svfprintf_r+0x1edb>
c0033826:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033829:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0033830:	e9 6c e7 ff ff       	jmp    c0031fa1 <_svfprintf_r+0x41>
c0033835:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003383b:	89 44 24 08          	mov    %eax,0x8(%esp)
c003383f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033842:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033846:	8b 45 08             	mov    0x8(%ebp),%eax
c0033849:	89 04 24             	mov    %eax,(%esp)
c003384c:	e8 8f 32 00 00       	call   c0036ae0 <__ssprint_r>
c0033851:	85 c0                	test   %eax,%eax
c0033853:	0f 85 d7 e8 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c0033859:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003385f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033862:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033868:	e9 d9 fc ff ff       	jmp    c0033546 <_svfprintf_r+0x15e6>
c003386d:	83 c0 01             	add    $0x1,%eax
c0033870:	01 da                	add    %ebx,%edx
c0033872:	c7 07 04 91 03 c0    	movl   $0xc0039104,(%edi)
c0033878:	83 c7 08             	add    $0x8,%edi
c003387b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c003387e:	83 f8 07             	cmp    $0x7,%eax
c0033881:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033887:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003388d:	7e 33                	jle    c00338c2 <_svfprintf_r+0x1962>
c003388f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033895:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033899:	8b 45 0c             	mov    0xc(%ebp),%eax
c003389c:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338a0:	8b 45 08             	mov    0x8(%ebp),%eax
c00338a3:	89 04 24             	mov    %eax,(%esp)
c00338a6:	e8 35 32 00 00       	call   c0036ae0 <__ssprint_r>
c00338ab:	85 c0                	test   %eax,%eax
c00338ad:	0f 85 7d e8 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c00338b3:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00338b9:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338bc:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00338c2:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c00338c8:	83 c0 01             	add    $0x1,%eax
c00338cb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00338d1:	89 1f                	mov    %ebx,(%edi)
c00338d3:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c00338d9:	01 da                	add    %ebx,%edx
c00338db:	83 f8 07             	cmp    $0x7,%eax
c00338de:	89 5f 04             	mov    %ebx,0x4(%edi)
c00338e1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00338e7:	0f 8f 86 f5 ff ff    	jg     c0032e73 <_svfprintf_r+0xf13>
c00338ed:	83 c7 08             	add    $0x8,%edi
c00338f0:	89 d1                	mov    %edx,%ecx
c00338f2:	e9 15 f1 ff ff       	jmp    c0032a0c <_svfprintf_r+0xaac>
c00338f7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338fd:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033901:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033904:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033908:	8b 45 08             	mov    0x8(%ebp),%eax
c003390b:	89 04 24             	mov    %eax,(%esp)
c003390e:	e8 cd 31 00 00       	call   c0036ae0 <__ssprint_r>
c0033913:	85 c0                	test   %eax,%eax
c0033915:	0f 85 15 e8 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c003391b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033921:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033924:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003392a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033930:	e9 62 fc ff ff       	jmp    c0033597 <_svfprintf_r+0x1637>
c0033935:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c003393c:	00 00 00 
c003393f:	e9 07 fd ff ff       	jmp    c003364b <_svfprintf_r+0x16eb>
c0033944:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003394a:	89 04 24             	mov    %eax,(%esp)
c003394d:	e8 0e 31 00 00       	call   c0036a60 <strlen>
c0033952:	e9 6a e8 ff ff       	jmp    c00321c1 <_svfprintf_r+0x261>
c0033957:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003395d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033961:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033964:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033968:	8b 45 08             	mov    0x8(%ebp),%eax
c003396b:	89 04 24             	mov    %eax,(%esp)
c003396e:	e8 6d 31 00 00       	call   c0036ae0 <__ssprint_r>
c0033973:	85 c0                	test   %eax,%eax
c0033975:	0f 85 b5 e7 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c003397b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033981:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033984:	e9 76 f6 ff ff       	jmp    c0032fff <_svfprintf_r+0x109f>
c0033989:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003398f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033993:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033996:	89 44 24 04          	mov    %eax,0x4(%esp)
c003399a:	8b 45 08             	mov    0x8(%ebp),%eax
c003399d:	89 04 24             	mov    %eax,(%esp)
c00339a0:	e8 3b 31 00 00       	call   c0036ae0 <__ssprint_r>
c00339a5:	85 c0                	test   %eax,%eax
c00339a7:	0f 85 83 e7 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c00339ad:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00339b3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339b6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00339bc:	e9 f4 f8 ff ff       	jmp    c00332b5 <_svfprintf_r+0x1355>
c00339c1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339c7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339cb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339ce:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00339d5:	89 04 24             	mov    %eax,(%esp)
c00339d8:	e8 03 31 00 00       	call   c0036ae0 <__ssprint_r>
c00339dd:	85 c0                	test   %eax,%eax
c00339df:	0f 85 4b e7 ff ff    	jne    c0032130 <_svfprintf_r+0x1d0>
c00339e5:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c00339eb:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339ee:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c00339f4:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00339fa:	e9 fa f8 ff ff       	jmp    c00332f9 <_svfprintf_r+0x1399>
c00339ff:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033a05:	b0 06                	mov    $0x6,%al
c0033a07:	89 75 14             	mov    %esi,0x14(%ebp)
c0033a0a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033a11:	00 00 00 
c0033a14:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033a1b:	00 00 00 
c0033a1e:	83 fa 06             	cmp    $0x6,%edx
c0033a21:	0f 46 c2             	cmovbe %edx,%eax
c0033a24:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033a2a:	85 c0                	test   %eax,%eax
c0033a2c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033a32:	c7 85 28 ff ff ff 94 	movl   $0xc0038f94,-0xd8(%ebp)
c0033a39:	8f 03 c0 
c0033a3c:	0f 49 d0             	cmovns %eax,%edx
c0033a3f:	31 db                	xor    %ebx,%ebx
c0033a41:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033a47:	e9 b7 e7 ff ff       	jmp    c0032203 <_svfprintf_r+0x2a3>
c0033a4c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033a53:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033a58:	e9 9d ea ff ff       	jmp    c00324fa <_svfprintf_r+0x59a>
c0033a5d:	ba 03 00 00 00       	mov    $0x3,%edx
c0033a62:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033a68:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033a6c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033a72:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033a76:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033a7c:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033a80:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033a86:	dd 54 24 04          	fstl   0x4(%esp)
c0033a8a:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033a8e:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033a94:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033a98:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a9b:	89 04 24             	mov    %eax,(%esp)
c0033a9e:	e8 8d 05 00 00       	call   c0034030 <_dtoa_r>
c0033aa3:	83 fb 47             	cmp    $0x47,%ebx
c0033aa6:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033aac:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033ab2:	75 09                	jne    c0033abd <_svfprintf_r+0x1b5d>
c0033ab4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033abb:	74 5b                	je     c0033b18 <_svfprintf_r+0x1bb8>
c0033abd:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033ac3:	89 f0                	mov    %esi,%eax
c0033ac5:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033acb:	01 d1                	add    %edx,%ecx
c0033acd:	84 c0                	test   %al,%al
c0033acf:	0f 84 14 fc ff ff    	je     c00336e9 <_svfprintf_r+0x1789>
c0033ad5:	80 3a 30             	cmpb   $0x30,(%edx)
c0033ad8:	0f 84 37 02 00 00    	je     c0033d15 <_svfprintf_r+0x1db5>
c0033ade:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033ae4:	01 c1                	add    %eax,%ecx
c0033ae6:	e9 fe fb ff ff       	jmp    c00336e9 <_svfprintf_r+0x1789>
c0033aeb:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033af1:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033af7:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033afc:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033b03:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b0a:	00 00 00 
c0033b0d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033b13:	e9 e4 e6 ff ff       	jmp    c00321fc <_svfprintf_r+0x29c>
c0033b18:	dd d8                	fstp   %st(0)
c0033b1a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033b20:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033b26:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033b2c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033b32:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b38:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033b3b:	7c 48                	jl     c0033b85 <_svfprintf_r+0x1c25>
c0033b3d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033b43:	7c 40                	jl     c0033b85 <_svfprintf_r+0x1c25>
c0033b45:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033b4b:	e9 ea fb ff ff       	jmp    c003373a <_svfprintf_r+0x17da>
c0033b50:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033b56:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033b5d:	89 75 14             	mov    %esi,0x14(%ebp)
c0033b60:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b67:	00 00 00 
c0033b6a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033b70:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033b76:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033b7d:	00 00 00 
c0033b80:	e9 73 e6 ff ff       	jmp    c00321f8 <_svfprintf_r+0x298>
c0033b85:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033b8c:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033b8f:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033b96:	85 c9                	test   %ecx,%ecx
c0033b98:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033b9e:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033ba4:	0f 88 2c 02 00 00    	js     c0033dd6 <_svfprintf_r+0x1e76>
c0033baa:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033bb1:	83 f9 09             	cmp    $0x9,%ecx
c0033bb4:	0f 8f ea 00 00 00    	jg     c0033ca4 <_svfprintf_r+0x1d44>
c0033bba:	83 c1 30             	add    $0x30,%ecx
c0033bbd:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033bc4:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033bca:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033bd0:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033bd6:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033bdc:	29 d0                	sub    %edx,%eax
c0033bde:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033be4:	89 da                	mov    %ebx,%edx
c0033be6:	01 c2                	add    %eax,%edx
c0033be8:	83 fb 01             	cmp    $0x1,%ebx
c0033beb:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033bf1:	0f 8e 21 02 00 00    	jle    c0033e18 <_svfprintf_r+0x1eb8>
c0033bf7:	31 c0                	xor    %eax,%eax
c0033bf9:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033c00:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033c07:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033c0e:	00 00 00 
c0033c11:	e9 60 fb ff ff       	jmp    c0033776 <_svfprintf_r+0x1816>
c0033c16:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033c1c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033c23:	00 00 00 
c0033c26:	e9 68 e4 ff ff       	jmp    c0032093 <_svfprintf_r+0x133>
c0033c2b:	ba 02 00 00 00       	mov    $0x2,%edx
c0033c30:	e9 2d fe ff ff       	jmp    c0033a62 <_svfprintf_r+0x1b02>
c0033c35:	d9 e0                	fchs   
c0033c37:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c0033c3e:	e9 38 fa ff ff       	jmp    c003367b <_svfprintf_r+0x171b>
c0033c43:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0033c49:	ba 01 00 00 00       	mov    $0x1,%edx
c0033c4e:	85 c9                	test   %ecx,%ecx
c0033c50:	0f 8e 5a 01 00 00    	jle    c0033db0 <_svfprintf_r+0x1e50>
c0033c56:	31 c0                	xor    %eax,%eax
c0033c58:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c0033c5e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033c65:	00 00 00 
c0033c68:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033c6e:	0f 49 c2             	cmovns %edx,%eax
c0033c71:	e9 00 fb ff ff       	jmp    c0033776 <_svfprintf_r+0x1816>
c0033c76:	85 c0                	test   %eax,%eax
c0033c78:	0f 8e 06 01 00 00    	jle    c0033d84 <_svfprintf_r+0x1e24>
c0033c7e:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0033c84:	85 f6                	test   %esi,%esi
c0033c86:	0f 85 d4 00 00 00    	jne    c0033d60 <_svfprintf_r+0x1e00>
c0033c8c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033c93:	0f 85 c7 00 00 00    	jne    c0033d60 <_svfprintf_r+0x1e00>
c0033c99:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033c9f:	e9 d2 fa ff ff       	jmp    c0033776 <_svfprintf_r+0x1816>
c0033ca4:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c0033caa:	89 f3                	mov    %esi,%ebx
c0033cac:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0033cb1:	83 eb 01             	sub    $0x1,%ebx
c0033cb4:	f7 e9                	imul   %ecx
c0033cb6:	89 c8                	mov    %ecx,%eax
c0033cb8:	c1 f8 1f             	sar    $0x1f,%eax
c0033cbb:	c1 fa 02             	sar    $0x2,%edx
c0033cbe:	29 c2                	sub    %eax,%edx
c0033cc0:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033cc3:	01 c0                	add    %eax,%eax
c0033cc5:	29 c1                	sub    %eax,%ecx
c0033cc7:	83 fa 09             	cmp    $0x9,%edx
c0033cca:	8d 41 30             	lea    0x30(%ecx),%eax
c0033ccd:	89 d1                	mov    %edx,%ecx
c0033ccf:	88 03                	mov    %al,(%ebx)
c0033cd1:	7f d9                	jg     c0033cac <_svfprintf_r+0x1d4c>
c0033cd3:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0033cd6:	83 c1 30             	add    $0x30,%ecx
c0033cd9:	39 f0                	cmp    %esi,%eax
c0033cdb:	88 4b ff             	mov    %cl,-0x1(%ebx)
c0033cde:	0f 83 6a 01 00 00    	jae    c0033e4e <_svfprintf_r+0x1eee>
c0033ce4:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033cea:	eb 07                	jmp    c0033cf3 <_svfprintf_r+0x1d93>
c0033cec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033cf0:	0f b6 08             	movzbl (%eax),%ecx
c0033cf3:	83 c0 01             	add    $0x1,%eax
c0033cf6:	83 c2 01             	add    $0x1,%edx
c0033cf9:	39 f0                	cmp    %esi,%eax
c0033cfb:	88 4a ff             	mov    %cl,-0x1(%edx)
c0033cfe:	75 f0                	jne    c0033cf0 <_svfprintf_r+0x1d90>
c0033d00:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033d06:	29 d8                	sub    %ebx,%eax
c0033d08:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d0e:	01 d0                	add    %edx,%eax
c0033d10:	e9 bb fe ff ff       	jmp    c0033bd0 <_svfprintf_r+0x1c70>
c0033d15:	d9 ee                	fldz   
c0033d17:	d9 c9                	fxch   %st(1)
c0033d19:	db e9                	fucomi %st(1),%st
c0033d1b:	dd d9                	fstp   %st(1)
c0033d1d:	7a 06                	jp     c0033d25 <_svfprintf_r+0x1dc5>
c0033d1f:	0f 84 b9 fd ff ff    	je     c0033ade <_svfprintf_r+0x1b7e>
c0033d25:	b8 01 00 00 00       	mov    $0x1,%eax
c0033d2a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0033d30:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0033d36:	01 c1                	add    %eax,%ecx
c0033d38:	e9 ac f9 ff ff       	jmp    c00336e9 <_svfprintf_r+0x1789>
c0033d3d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033d43:	31 c0                	xor    %eax,%eax
c0033d45:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033d4c:	00 00 00 
c0033d4f:	83 c2 01             	add    $0x1,%edx
c0033d52:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033d58:	0f 49 c2             	cmovns %edx,%eax
c0033d5b:	e9 16 fa ff ff       	jmp    c0033776 <_svfprintf_r+0x1816>
c0033d60:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033d66:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033d6c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0033d70:	89 c2                	mov    %eax,%edx
c0033d72:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033d78:	31 c0                	xor    %eax,%eax
c0033d7a:	85 d2                	test   %edx,%edx
c0033d7c:	0f 49 c2             	cmovns %edx,%eax
c0033d7f:	e9 f2 f9 ff ff       	jmp    c0033776 <_svfprintf_r+0x1816>
c0033d84:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033d8a:	85 db                	test   %ebx,%ebx
c0033d8c:	75 2f                	jne    c0033dbd <_svfprintf_r+0x1e5d>
c0033d8e:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033d95:	75 26                	jne    c0033dbd <_svfprintf_r+0x1e5d>
c0033d97:	b8 01 00 00 00       	mov    $0x1,%eax
c0033d9c:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0033da3:	00 00 00 
c0033da6:	e9 cb f9 ff ff       	jmp    c0033776 <_svfprintf_r+0x1816>
c0033dab:	90                   	nop
c0033dac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033db0:	b2 02                	mov    $0x2,%dl
c0033db2:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0033db8:	e9 99 fe ff ff       	jmp    c0033c56 <_svfprintf_r+0x1cf6>
c0033dbd:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033dc3:	31 c0                	xor    %eax,%eax
c0033dc5:	83 c2 02             	add    $0x2,%edx
c0033dc8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033dce:	0f 49 c2             	cmovns %edx,%eax
c0033dd1:	e9 a0 f9 ff ff       	jmp    c0033776 <_svfprintf_r+0x1816>
c0033dd6:	f7 d9                	neg    %ecx
c0033dd8:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c0033ddf:	e9 cd fd ff ff       	jmp    c0033bb1 <_svfprintf_r+0x1c51>
c0033de4:	8b 55 14             	mov    0x14(%ebp),%edx
c0033de7:	8b 45 14             	mov    0x14(%ebp),%eax
c0033dea:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033df0:	8b 12                	mov    (%edx),%edx
c0033df2:	83 c0 04             	add    $0x4,%eax
c0033df5:	89 45 14             	mov    %eax,0x14(%ebp)
c0033df8:	85 d2                	test   %edx,%edx
c0033dfa:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0033e00:	0f 89 a9 e2 ff ff    	jns    c00320af <_svfprintf_r+0x14f>
c0033e06:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0033e0d:	ff ff ff 
c0033e10:	89 c8                	mov    %ecx,%eax
c0033e12:	e9 76 e2 ff ff       	jmp    c003208d <_svfprintf_r+0x12d>
c0033e17:	90                   	nop
c0033e18:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033e1e:	83 e0 01             	and    $0x1,%eax
c0033e21:	0f 85 d0 fd ff ff    	jne    c0033bf7 <_svfprintf_r+0x1c97>
c0033e27:	85 d2                	test   %edx,%edx
c0033e29:	0f 49 c2             	cmovns %edx,%eax
c0033e2c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033e33:	00 00 00 
c0033e36:	e9 3b f9 ff ff       	jmp    c0033776 <_svfprintf_r+0x1816>
c0033e3b:	8b 45 08             	mov    0x8(%ebp),%eax
c0033e3e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0033e44:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0033e49:	e9 f5 e2 ff ff       	jmp    c0032143 <_svfprintf_r+0x1e3>
c0033e4e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0033e54:	e9 77 fd ff ff       	jmp    c0033bd0 <_svfprintf_r+0x1c70>
c0033e59:	66 90                	xchg   %ax,%ax
c0033e5b:	66 90                	xchg   %ax,%ax
c0033e5d:	66 90                	xchg   %ax,%ax
c0033e5f:	90                   	nop

c0033e60 <quorem>:
c0033e60:	55                   	push   %ebp
c0033e61:	89 c1                	mov    %eax,%ecx
c0033e63:	89 e5                	mov    %esp,%ebp
c0033e65:	57                   	push   %edi
c0033e66:	89 d7                	mov    %edx,%edi
c0033e68:	56                   	push   %esi
c0033e69:	53                   	push   %ebx
c0033e6a:	83 ec 3c             	sub    $0x3c,%esp
c0033e6d:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0033e70:	8b 42 10             	mov    0x10(%edx),%eax
c0033e73:	3b 41 10             	cmp    0x10(%ecx),%eax
c0033e76:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0033e79:	89 ca                	mov    %ecx,%edx
c0033e7b:	0f 8f 9f 01 00 00    	jg     c0034020 <quorem+0x1c0>
c0033e81:	83 e8 01             	sub    $0x1,%eax
c0033e84:	83 c7 14             	add    $0x14,%edi
c0033e87:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0033e8a:	c1 e0 02             	shl    $0x2,%eax
c0033e8d:	83 c2 14             	add    $0x14,%edx
c0033e90:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0033e93:	01 d0                	add    %edx,%eax
c0033e95:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0033e98:	8b 13                	mov    (%ebx),%edx
c0033e9a:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c0033e9d:	8b 00                	mov    (%eax),%eax
c0033e9f:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0033ea2:	8d 4a 01             	lea    0x1(%edx),%ecx
c0033ea5:	31 d2                	xor    %edx,%edx
c0033ea7:	f7 f1                	div    %ecx
c0033ea9:	85 c0                	test   %eax,%eax
c0033eab:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0033eae:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033eb1:	0f 84 b5 00 00 00    	je     c0033f6c <quorem+0x10c>
c0033eb7:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033eba:	31 f6                	xor    %esi,%esi
c0033ebc:	89 fa                	mov    %edi,%edx
c0033ebe:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0033ec1:	89 f7                	mov    %esi,%edi
c0033ec3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0033eca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033ed0:	83 c2 04             	add    $0x4,%edx
c0033ed3:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033ed6:	83 c0 04             	add    $0x4,%eax
c0033ed9:	0f b7 ce             	movzwl %si,%ecx
c0033edc:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0033ee0:	03 4d dc             	add    -0x24(%ebp),%ecx
c0033ee3:	c1 ee 10             	shr    $0x10,%esi
c0033ee6:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c0033eea:	89 cb                	mov    %ecx,%ebx
c0033eec:	0f b7 c9             	movzwl %cx,%ecx
c0033eef:	c1 eb 10             	shr    $0x10,%ebx
c0033ef2:	29 cf                	sub    %ecx,%edi
c0033ef4:	01 f3                	add    %esi,%ebx
c0033ef6:	89 de                	mov    %ebx,%esi
c0033ef8:	0f b7 db             	movzwl %bx,%ebx
c0033efb:	c1 ee 10             	shr    $0x10,%esi
c0033efe:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0033f01:	8b 70 fc             	mov    -0x4(%eax),%esi
c0033f04:	0f b7 ce             	movzwl %si,%ecx
c0033f07:	01 f9                	add    %edi,%ecx
c0033f09:	c1 ee 10             	shr    $0x10,%esi
c0033f0c:	29 de                	sub    %ebx,%esi
c0033f0e:	89 cb                	mov    %ecx,%ebx
c0033f10:	c1 fb 10             	sar    $0x10,%ebx
c0033f13:	0f b7 c9             	movzwl %cx,%ecx
c0033f16:	01 de                	add    %ebx,%esi
c0033f18:	89 f7                	mov    %esi,%edi
c0033f1a:	c1 e6 10             	shl    $0x10,%esi
c0033f1d:	09 ce                	or     %ecx,%esi
c0033f1f:	c1 ff 10             	sar    $0x10,%edi
c0033f22:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0033f25:	89 70 fc             	mov    %esi,-0x4(%eax)
c0033f28:	73 a6                	jae    c0033ed0 <quorem+0x70>
c0033f2a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0033f2d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0033f30:	8b 10                	mov    (%eax),%edx
c0033f32:	85 d2                	test   %edx,%edx
c0033f34:	75 36                	jne    c0033f6c <quorem+0x10c>
c0033f36:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033f39:	89 c2                	mov    %eax,%edx
c0033f3b:	83 e8 04             	sub    $0x4,%eax
c0033f3e:	39 c1                	cmp    %eax,%ecx
c0033f40:	73 21                	jae    c0033f63 <quorem+0x103>
c0033f42:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033f45:	85 f6                	test   %esi,%esi
c0033f47:	75 1a                	jne    c0033f63 <quorem+0x103>
c0033f49:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033f4c:	eb 08                	jmp    c0033f56 <quorem+0xf6>
c0033f4e:	66 90                	xchg   %ax,%ax
c0033f50:	8b 18                	mov    (%eax),%ebx
c0033f52:	85 db                	test   %ebx,%ebx
c0033f54:	75 0a                	jne    c0033f60 <quorem+0x100>
c0033f56:	83 e8 04             	sub    $0x4,%eax
c0033f59:	83 ea 01             	sub    $0x1,%edx
c0033f5c:	39 c1                	cmp    %eax,%ecx
c0033f5e:	72 f0                	jb     c0033f50 <quorem+0xf0>
c0033f60:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0033f63:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033f66:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033f69:	89 50 10             	mov    %edx,0x10(%eax)
c0033f6c:	8b 45 c8             	mov    -0x38(%ebp),%eax
c0033f6f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033f73:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033f76:	89 04 24             	mov    %eax,(%esp)
c0033f79:	e8 a2 23 00 00       	call   c0036320 <__mcmp>
c0033f7e:	85 c0                	test   %eax,%eax
c0033f80:	0f 88 8e 00 00 00    	js     c0034014 <quorem+0x1b4>
c0033f86:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0033f89:	31 f6                	xor    %esi,%esi
c0033f8b:	83 c0 01             	add    $0x1,%eax
c0033f8e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033f91:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033f94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033f98:	83 c7 04             	add    $0x4,%edi
c0033f9b:	8b 4f fc             	mov    -0x4(%edi),%ecx
c0033f9e:	83 c0 04             	add    $0x4,%eax
c0033fa1:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0033fa4:	0f b7 d1             	movzwl %cx,%edx
c0033fa7:	29 d6                	sub    %edx,%esi
c0033fa9:	0f b7 d3             	movzwl %bx,%edx
c0033fac:	01 f2                	add    %esi,%edx
c0033fae:	c1 e9 10             	shr    $0x10,%ecx
c0033fb1:	c1 eb 10             	shr    $0x10,%ebx
c0033fb4:	29 cb                	sub    %ecx,%ebx
c0033fb6:	89 d1                	mov    %edx,%ecx
c0033fb8:	c1 f9 10             	sar    $0x10,%ecx
c0033fbb:	0f b7 d2             	movzwl %dx,%edx
c0033fbe:	01 cb                	add    %ecx,%ebx
c0033fc0:	89 de                	mov    %ebx,%esi
c0033fc2:	c1 e3 10             	shl    $0x10,%ebx
c0033fc5:	09 d3                	or     %edx,%ebx
c0033fc7:	c1 fe 10             	sar    $0x10,%esi
c0033fca:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c0033fcd:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0033fd0:	73 c6                	jae    c0033f98 <quorem+0x138>
c0033fd2:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033fd5:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0033fd8:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c0033fdb:	8b 02                	mov    (%edx),%eax
c0033fdd:	85 c0                	test   %eax,%eax
c0033fdf:	75 33                	jne    c0034014 <quorem+0x1b4>
c0033fe1:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033fe4:	8d 42 fc             	lea    -0x4(%edx),%eax
c0033fe7:	39 c1                	cmp    %eax,%ecx
c0033fe9:	73 20                	jae    c003400b <quorem+0x1ab>
c0033feb:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033fee:	85 f6                	test   %esi,%esi
c0033ff0:	75 19                	jne    c003400b <quorem+0x1ab>
c0033ff2:	89 fa                	mov    %edi,%edx
c0033ff4:	eb 08                	jmp    c0033ffe <quorem+0x19e>
c0033ff6:	66 90                	xchg   %ax,%ax
c0033ff8:	8b 18                	mov    (%eax),%ebx
c0033ffa:	85 db                	test   %ebx,%ebx
c0033ffc:	75 0a                	jne    c0034008 <quorem+0x1a8>
c0033ffe:	83 e8 04             	sub    $0x4,%eax
c0034001:	83 ea 01             	sub    $0x1,%edx
c0034004:	39 c1                	cmp    %eax,%ecx
c0034006:	72 f0                	jb     c0033ff8 <quorem+0x198>
c0034008:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003400b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003400e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034011:	89 78 10             	mov    %edi,0x10(%eax)
c0034014:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0034017:	83 c4 3c             	add    $0x3c,%esp
c003401a:	5b                   	pop    %ebx
c003401b:	5e                   	pop    %esi
c003401c:	5f                   	pop    %edi
c003401d:	5d                   	pop    %ebp
c003401e:	c3                   	ret    
c003401f:	90                   	nop
c0034020:	83 c4 3c             	add    $0x3c,%esp
c0034023:	31 c0                	xor    %eax,%eax
c0034025:	5b                   	pop    %ebx
c0034026:	5e                   	pop    %esi
c0034027:	5f                   	pop    %edi
c0034028:	5d                   	pop    %ebp
c0034029:	c3                   	ret    
c003402a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0034030 <_dtoa_r>:
c0034030:	55                   	push   %ebp
c0034031:	89 e5                	mov    %esp,%ebp
c0034033:	57                   	push   %edi
c0034034:	56                   	push   %esi
c0034035:	53                   	push   %ebx
c0034036:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c003403c:	8b 75 08             	mov    0x8(%ebp),%esi
c003403f:	dd 45 0c             	fldl   0xc(%ebp)
c0034042:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0034045:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034048:	8b 46 40             	mov    0x40(%esi),%eax
c003404b:	85 c0                	test   %eax,%eax
c003404d:	74 23                	je     c0034072 <_dtoa_r+0x42>
c003404f:	8b 4e 44             	mov    0x44(%esi),%ecx
c0034052:	ba 01 00 00 00       	mov    $0x1,%edx
c0034057:	d3 e2                	shl    %cl,%edx
c0034059:	89 48 04             	mov    %ecx,0x4(%eax)
c003405c:	89 50 08             	mov    %edx,0x8(%eax)
c003405f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034063:	89 34 24             	mov    %esi,(%esp)
c0034066:	e8 95 1b 00 00       	call   c0035c00 <_Bfree>
c003406b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c0034072:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0034075:	85 ff                	test   %edi,%edi
c0034077:	0f 88 3b 02 00 00    	js     c00342b8 <_dtoa_r+0x288>
c003407d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0034083:	89 f8                	mov    %edi,%eax
c0034085:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c003408a:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c003408f:	0f 84 e3 01 00 00    	je     c0034278 <_dtoa_r+0x248>
c0034095:	dd 45 c0             	fldl   -0x40(%ebp)
c0034098:	d9 ee                	fldz   
c003409a:	d9 c9                	fxch   %st(1)
c003409c:	db e9                	fucomi %st(1),%st
c003409e:	dd d9                	fstp   %st(1)
c00340a0:	7a 36                	jp     c00340d8 <_dtoa_r+0xa8>
c00340a2:	75 34                	jne    c00340d8 <_dtoa_r+0xa8>
c00340a4:	dd d8                	fstp   %st(0)
c00340a6:	8b 4d 24             	mov    0x24(%ebp),%ecx
c00340a9:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00340ac:	85 c9                	test   %ecx,%ecx
c00340ae:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c00340b4:	0f 84 4e 02 00 00    	je     c0034308 <_dtoa_r+0x2d8>
c00340ba:	8b 45 24             	mov    0x24(%ebp),%eax
c00340bd:	c7 00 9c 8f 03 c0    	movl   $0xc0038f9c,(%eax)
c00340c3:	b8 9b 8f 03 c0       	mov    $0xc0038f9b,%eax
c00340c8:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00340ce:	5b                   	pop    %ebx
c00340cf:	5e                   	pop    %esi
c00340d0:	5f                   	pop    %edi
c00340d1:	5d                   	pop    %ebp
c00340d2:	c3                   	ret    
c00340d3:	90                   	nop
c00340d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00340d8:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00340db:	89 fb                	mov    %edi,%ebx
c00340dd:	89 44 24 10          	mov    %eax,0x10(%esp)
c00340e1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c00340e4:	dd 54 24 04          	fstl   0x4(%esp)
c00340e8:	89 44 24 0c          	mov    %eax,0xc(%esp)
c00340ec:	dd 5d b8             	fstpl  -0x48(%ebp)
c00340ef:	89 34 24             	mov    %esi,(%esp)
c00340f2:	c1 eb 14             	shr    $0x14,%ebx
c00340f5:	e8 76 25 00 00       	call   c0036670 <__d2b>
c00340fa:	85 db                	test   %ebx,%ebx
c00340fc:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00340ff:	0f 85 db 01 00 00    	jne    c00342e0 <_dtoa_r+0x2b0>
c0034105:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034108:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c003410b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003410e:	01 c3                	add    %eax,%ebx
c0034110:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034116:	0f 8c ec 07 00 00    	jl     c0034908 <_dtoa_r+0x8d8>
c003411c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003411f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034124:	89 f8                	mov    %edi,%eax
c0034126:	29 d9                	sub    %ebx,%ecx
c0034128:	d3 e0                	shl    %cl,%eax
c003412a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0034130:	d3 ea                	shr    %cl,%edx
c0034132:	09 d0                	or     %edx,%eax
c0034134:	31 d2                	xor    %edx,%edx
c0034136:	83 eb 01             	sub    $0x1,%ebx
c0034139:	89 55 cc             	mov    %edx,-0x34(%ebp)
c003413c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c003413f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0034142:	df 6d c8             	fildll -0x38(%ebp)
c0034145:	dd 5d b8             	fstpl  -0x48(%ebp)
c0034148:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c003414f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034156:	dd 45 b8             	fldl   -0x48(%ebp)
c0034159:	d8 25 34 91 03 c0    	fsubs  0xc0039134
c003415f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c0034162:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034165:	dc 0d 50 91 03 c0    	fmull  0xc0039150
c003416b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c003416f:	b4 0c                	mov    $0xc,%ah
c0034171:	dc 05 58 91 03 c0    	faddl  0xc0039158
c0034177:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003417b:	db 45 d4             	fildl  -0x2c(%ebp)
c003417e:	dc 0d 60 91 03 c0    	fmull  0xc0039160
c0034184:	de c1                	faddp  %st,%st(1)
c0034186:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034189:	db 55 b8             	fistl  -0x48(%ebp)
c003418c:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003418f:	d9 ee                	fldz   
c0034191:	df e9                	fucomip %st(1),%st
c0034193:	0f 87 27 07 00 00    	ja     c00348c0 <_dtoa_r+0x890>
c0034199:	dd d8                	fstp   %st(0)
c003419b:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c003419f:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c00341a6:	77 24                	ja     c00341cc <_dtoa_r+0x19c>
c00341a8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00341ab:	dd 04 c5 20 92 03 c0 	fldl   -0x3ffc6de0(,%eax,8)
c00341b2:	dd 45 c0             	fldl   -0x40(%ebp)
c00341b5:	d9 c9                	fxch   %st(1)
c00341b7:	df e9                	fucomip %st(1),%st
c00341b9:	dd d8                	fstp   %st(0)
c00341bb:	0f 86 5f 07 00 00    	jbe    c0034920 <_dtoa_r+0x8f0>
c00341c1:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00341c5:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c00341cc:	89 d0                	mov    %edx,%eax
c00341ce:	29 d8                	sub    %ebx,%eax
c00341d0:	83 e8 01             	sub    $0x1,%eax
c00341d3:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c00341da:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00341dd:	0f 88 0d 07 00 00    	js     c00348f0 <_dtoa_r+0x8c0>
c00341e3:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00341e6:	85 c0                	test   %eax,%eax
c00341e8:	0f 88 ea 06 00 00    	js     c00348d8 <_dtoa_r+0x8a8>
c00341ee:	01 45 ac             	add    %eax,-0x54(%ebp)
c00341f1:	89 45 94             	mov    %eax,-0x6c(%ebp)
c00341f4:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c00341fb:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c00341ff:	0f 87 0b 03 00 00    	ja     c0034510 <_dtoa_r+0x4e0>
c0034205:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0034209:	0f 8e 23 10 00 00    	jle    c0035232 <_dtoa_r+0x1202>
c003420f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034213:	31 c0                	xor    %eax,%eax
c0034215:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034219:	0f 84 43 0d 00 00    	je     c0034f62 <_dtoa_r+0xf32>
c003421f:	0f 8e f3 00 00 00    	jle    c0034318 <_dtoa_r+0x2e8>
c0034225:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034229:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034230:	0f 84 f3 00 00 00    	je     c0034329 <_dtoa_r+0x2f9>
c0034236:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c003423a:	0f 85 d7 02 00 00    	jne    c0034517 <_dtoa_r+0x4e7>
c0034240:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034243:	03 5d 18             	add    0x18(%ebp),%ebx
c0034246:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0034249:	83 c3 01             	add    $0x1,%ebx
c003424c:	83 fb 0e             	cmp    $0xe,%ebx
c003424f:	0f 96 c2             	setbe  %dl
c0034252:	85 db                	test   %ebx,%ebx
c0034254:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0034257:	0f 8e a7 08 00 00    	jle    c0034b04 <_dtoa_r+0xad4>
c003425d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034260:	83 fb 0e             	cmp    $0xe,%ebx
c0034263:	89 df                	mov    %ebx,%edi
c0034265:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0034269:	20 45 b4             	and    %al,-0x4c(%ebp)
c003426c:	e9 d6 00 00 00       	jmp    c0034347 <_dtoa_r+0x317>
c0034271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034278:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003427b:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003427e:	85 d2                	test   %edx,%edx
c0034280:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c0034286:	b8 2d 91 03 c0       	mov    $0xc003912d,%eax
c003428b:	74 43                	je     c00342d0 <_dtoa_r+0x2a0>
c003428d:	8b 5d 24             	mov    0x24(%ebp),%ebx
c0034290:	85 db                	test   %ebx,%ebx
c0034292:	0f 84 30 fe ff ff    	je     c00340c8 <_dtoa_r+0x98>
c0034298:	8b 75 24             	mov    0x24(%ebp),%esi
c003429b:	8d 50 08             	lea    0x8(%eax),%edx
c003429e:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c00342a2:	8d 48 03             	lea    0x3(%eax),%ecx
c00342a5:	0f 44 d1             	cmove  %ecx,%edx
c00342a8:	89 16                	mov    %edx,(%esi)
c00342aa:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00342b0:	5b                   	pop    %ebx
c00342b1:	5e                   	pop    %esi
c00342b2:	5f                   	pop    %edi
c00342b3:	5d                   	pop    %ebp
c00342b4:	c3                   	ret    
c00342b5:	8d 76 00             	lea    0x0(%esi),%esi
c00342b8:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c00342be:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c00342c4:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c00342c7:	e9 b7 fd ff ff       	jmp    c0034083 <_dtoa_r+0x53>
c00342cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00342d0:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c00342d6:	ba 24 91 03 c0       	mov    $0xc0039124,%edx
c00342db:	0f 44 c2             	cmove  %edx,%eax
c00342de:	eb ad                	jmp    c003428d <_dtoa_r+0x25d>
c00342e0:	8b 45 bc             	mov    -0x44(%ebp),%eax
c00342e3:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c00342e9:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00342ec:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c00342f3:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00342f8:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c00342fd:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0034300:	e9 51 fe ff ff       	jmp    c0034156 <_dtoa_r+0x126>
c0034305:	8d 76 00             	lea    0x0(%esi),%esi
c0034308:	b8 9b 8f 03 c0       	mov    $0xc0038f9b,%eax
c003430d:	e9 b6 fd ff ff       	jmp    c00340c8 <_dtoa_r+0x98>
c0034312:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034318:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c003431c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034323:	0f 85 ee 01 00 00    	jne    c0034517 <_dtoa_r+0x4e7>
c0034329:	8b 55 18             	mov    0x18(%ebp),%edx
c003432c:	85 d2                	test   %edx,%edx
c003432e:	0f 8e b6 07 00 00    	jle    c0034aea <_dtoa_r+0xaba>
c0034334:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034337:	83 ff 0e             	cmp    $0xe,%edi
c003433a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c003433e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034341:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0034344:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0034347:	83 ff 17             	cmp    $0x17,%edi
c003434a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034351:	0f 86 e5 0e 00 00    	jbe    c003523c <_dtoa_r+0x120c>
c0034357:	b9 01 00 00 00       	mov    $0x1,%ecx
c003435c:	b8 04 00 00 00       	mov    $0x4,%eax
c0034361:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034368:	01 c0                	add    %eax,%eax
c003436a:	89 ca                	mov    %ecx,%edx
c003436c:	8d 58 14             	lea    0x14(%eax),%ebx
c003436f:	39 fb                	cmp    %edi,%ebx
c0034371:	8d 49 01             	lea    0x1(%ecx),%ecx
c0034374:	76 f2                	jbe    c0034368 <_dtoa_r+0x338>
c0034376:	89 56 44             	mov    %edx,0x44(%esi)
c0034379:	89 54 24 04          	mov    %edx,0x4(%esp)
c003437d:	89 34 24             	mov    %esi,(%esp)
c0034380:	e8 db 17 00 00       	call   c0035b60 <_Balloc>
c0034385:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c0034389:	89 c7                	mov    %eax,%edi
c003438b:	89 46 40             	mov    %eax,0x40(%esi)
c003438e:	0f 84 bb 01 00 00    	je     c003454f <_dtoa_r+0x51f>
c0034394:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034397:	dd 45 c0             	fldl   -0x40(%ebp)
c003439a:	85 db                	test   %ebx,%ebx
c003439c:	0f 8e de 07 00 00    	jle    c0034b80 <_dtoa_r+0xb50>
c00343a2:	89 d8                	mov    %ebx,%eax
c00343a4:	83 e0 0f             	and    $0xf,%eax
c00343a7:	dd 04 c5 20 92 03 c0 	fldl   -0x3ffc6de0(,%eax,8)
c00343ae:	89 d8                	mov    %ebx,%eax
c00343b0:	c1 f8 04             	sar    $0x4,%eax
c00343b3:	a8 10                	test   $0x10,%al
c00343b5:	0f 84 cd 05 00 00    	je     c0034988 <_dtoa_r+0x958>
c00343bb:	dd 05 00 92 03 c0    	fldl   0xc0039200
c00343c1:	83 e0 0f             	and    $0xf,%eax
c00343c4:	b9 03 00 00 00       	mov    $0x3,%ecx
c00343c9:	d8 fa                	fdivr  %st(2),%st
c00343cb:	85 c0                	test   %eax,%eax
c00343cd:	74 22                	je     c00343f1 <_dtoa_r+0x3c1>
c00343cf:	31 d2                	xor    %edx,%edx
c00343d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00343d8:	a8 01                	test   $0x1,%al
c00343da:	74 0e                	je     c00343ea <_dtoa_r+0x3ba>
c00343dc:	d9 c9                	fxch   %st(1)
c00343de:	dc 0c d5 e0 91 03 c0 	fmull  -0x3ffc6e20(,%edx,8)
c00343e5:	d9 c9                	fxch   %st(1)
c00343e7:	83 c1 01             	add    $0x1,%ecx
c00343ea:	83 c2 01             	add    $0x1,%edx
c00343ed:	d1 f8                	sar    %eax
c00343ef:	75 e7                	jne    c00343d8 <_dtoa_r+0x3a8>
c00343f1:	de f1                	fdivp  %st,%st(1)
c00343f3:	8b 45 9c             	mov    -0x64(%ebp),%eax
c00343f6:	85 c0                	test   %eax,%eax
c00343f8:	74 0a                	je     c0034404 <_dtoa_r+0x3d4>
c00343fa:	d9 e8                	fld1   
c00343fc:	df e9                	fucomip %st(1),%st
c00343fe:	0f 87 92 0b 00 00    	ja     c0034f96 <_dtoa_r+0xf66>
c0034404:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034407:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003440a:	db 45 d4             	fildl  -0x2c(%ebp)
c003440d:	d8 c9                	fmul   %st(1),%st
c003440f:	d8 05 40 91 03 c0    	fadds  0xc0039140
c0034415:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034418:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003441f:	85 c0                	test   %eax,%eax
c0034421:	0f 84 89 05 00 00    	je     c00349b0 <_dtoa_r+0x980>
c0034427:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003442a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c003442d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034430:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034433:	85 c0                	test   %eax,%eax
c0034435:	0f 84 b5 07 00 00    	je     c0034bf0 <_dtoa_r+0xbc0>
c003443b:	d9 05 48 91 03 c0    	flds   0xc0039148
c0034441:	8d 57 01             	lea    0x1(%edi),%edx
c0034444:	dc 34 cd 18 92 03 c0 	fdivl  -0x3ffc6de8(,%ecx,8)
c003444b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003444e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034452:	b4 0c                	mov    $0xc,%ah
c0034454:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034458:	dc 65 c0             	fsubl  -0x40(%ebp)
c003445b:	d9 c9                	fxch   %st(1)
c003445d:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034460:	db 55 d4             	fistl  -0x2c(%ebp)
c0034463:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034466:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034469:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003446c:	83 c0 30             	add    $0x30,%eax
c003446f:	db 45 d4             	fildl  -0x2c(%ebp)
c0034472:	de e9                	fsubrp %st,%st(1)
c0034474:	d9 c9                	fxch   %st(1)
c0034476:	88 07                	mov    %al,(%edi)
c0034478:	db e9                	fucomi %st(1),%st
c003447a:	77 7f                	ja     c00344fb <_dtoa_r+0x4cb>
c003447c:	d9 c1                	fld    %st(1)
c003447e:	d8 2d 38 91 03 c0    	fsubrs 0xc0039138
c0034484:	d9 c9                	fxch   %st(1)
c0034486:	db e9                	fucomi %st(1),%st
c0034488:	dd d9                	fstp   %st(1)
c003448a:	0f 87 33 0c 00 00    	ja     c00350c3 <_dtoa_r+0x1093>
c0034490:	83 f9 01             	cmp    $0x1,%ecx
c0034493:	0f 8e c4 06 00 00    	jle    c0034b5d <_dtoa_r+0xb2d>
c0034499:	01 f9                	add    %edi,%ecx
c003449b:	d9 05 3c 91 03 c0    	flds   0xc003913c
c00344a1:	eb 25                	jmp    c00344c8 <_dtoa_r+0x498>
c00344a3:	90                   	nop
c00344a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00344a8:	d9 c1                	fld    %st(1)
c00344aa:	d8 2d 38 91 03 c0    	fsubrs 0xc0039138
c00344b0:	d9 c9                	fxch   %st(1)
c00344b2:	db e9                	fucomi %st(1),%st
c00344b4:	dd d9                	fstp   %st(1)
c00344b6:	0f 87 14 0c 00 00    	ja     c00350d0 <_dtoa_r+0x10a0>
c00344bc:	39 ca                	cmp    %ecx,%edx
c00344be:	0f 84 a4 06 00 00    	je     c0034b68 <_dtoa_r+0xb38>
c00344c4:	d9 c9                	fxch   %st(1)
c00344c6:	d9 ca                	fxch   %st(2)
c00344c8:	dc c9                	fmul   %st,%st(1)
c00344ca:	83 c2 01             	add    $0x1,%edx
c00344cd:	dc ca                	fmul   %st,%st(2)
c00344cf:	d9 ca                	fxch   %st(2)
c00344d1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00344d4:	db 55 d4             	fistl  -0x2c(%ebp)
c00344d7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00344da:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00344dd:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00344e0:	83 c0 30             	add    $0x30,%eax
c00344e3:	db 45 d4             	fildl  -0x2c(%ebp)
c00344e6:	de e9                	fsubrp %st,%st(1)
c00344e8:	d9 c9                	fxch   %st(1)
c00344ea:	88 42 ff             	mov    %al,-0x1(%edx)
c00344ed:	db e9                	fucomi %st(1),%st
c00344ef:	76 b7                	jbe    c00344a8 <_dtoa_r+0x478>
c00344f1:	dd d8                	fstp   %st(0)
c00344f3:	dd d8                	fstp   %st(0)
c00344f5:	dd d8                	fstp   %st(0)
c00344f7:	dd d8                	fstp   %st(0)
c00344f9:	eb 06                	jmp    c0034501 <_dtoa_r+0x4d1>
c00344fb:	dd d8                	fstp   %st(0)
c00344fd:	dd d8                	fstp   %st(0)
c00344ff:	dd d8                	fstp   %st(0)
c0034501:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034504:	89 fb                	mov    %edi,%ebx
c0034506:	89 d7                	mov    %edx,%edi
c0034508:	89 45 b8             	mov    %eax,-0x48(%ebp)
c003450b:	e9 70 03 00 00       	jmp    c0034880 <_dtoa_r+0x850>
c0034510:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034517:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c003451e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034525:	00 
c0034526:	89 34 24             	mov    %esi,(%esp)
c0034529:	e8 32 16 00 00       	call   c0035b60 <_Balloc>
c003452e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034535:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c003453c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0034543:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c003454a:	89 c7                	mov    %eax,%edi
c003454c:	89 46 40             	mov    %eax,0x40(%esi)
c003454f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0034552:	85 c0                	test   %eax,%eax
c0034554:	0f 88 2e 01 00 00    	js     c0034688 <_dtoa_r+0x658>
c003455a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c003455e:	0f 8f 24 01 00 00    	jg     c0034688 <_dtoa_r+0x658>
c0034564:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034567:	dd 04 c5 20 92 03 c0 	fldl   -0x3ffc6de0(,%eax,8)
c003456e:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034571:	85 c0                	test   %eax,%eax
c0034573:	7f 0e                	jg     c0034583 <_dtoa_r+0x553>
c0034575:	8b 45 18             	mov    0x18(%ebp),%eax
c0034578:	c1 e8 1f             	shr    $0x1f,%eax
c003457b:	84 c0                	test   %al,%al
c003457d:	0f 85 9d 07 00 00    	jne    c0034d20 <_dtoa_r+0xcf0>
c0034583:	dd 45 c0             	fldl   -0x40(%ebp)
c0034586:	d9 c0                	fld    %st(0)
c0034588:	d8 f2                	fdiv   %st(2),%st
c003458a:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003458d:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c0034591:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034595:	b4 0c                	mov    $0xc,%ah
c0034597:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003459b:	8d 47 01             	lea    0x1(%edi),%eax
c003459e:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00345a1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00345a4:	db 5d d4             	fistpl -0x2c(%ebp)
c00345a7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00345aa:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00345ad:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00345b0:	8d 42 30             	lea    0x30(%edx),%eax
c00345b3:	db 45 d4             	fildl  -0x2c(%ebp)
c00345b6:	d8 ca                	fmul   %st(2),%st
c00345b8:	88 07                	mov    %al,(%edi)
c00345ba:	de e9                	fsubrp %st,%st(1)
c00345bc:	74 66                	je     c0034624 <_dtoa_r+0x5f4>
c00345be:	d8 0d 3c 91 03 c0    	fmuls  0xc003913c
c00345c4:	d9 ee                	fldz   
c00345c6:	d9 c9                	fxch   %st(1)
c00345c8:	db e9                	fucomi %st(1),%st
c00345ca:	dd d9                	fstp   %st(1)
c00345cc:	0f 8b 33 0c 00 00    	jnp    c0035205 <_dtoa_r+0x11d5>
c00345d2:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c00345d5:	8d 47 02             	lea    0x2(%edi),%eax
c00345d8:	d9 05 3c 91 03 c0    	flds   0xc003913c
c00345de:	01 fb                	add    %edi,%ebx
c00345e0:	eb 19                	jmp    c00345fb <_dtoa_r+0x5cb>
c00345e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00345e8:	dc c9                	fmul   %st,%st(1)
c00345ea:	83 c0 01             	add    $0x1,%eax
c00345ed:	d9 ee                	fldz   
c00345ef:	d9 ca                	fxch   %st(2)
c00345f1:	db ea                	fucomi %st(2),%st
c00345f3:	dd da                	fstp   %st(2)
c00345f5:	0f 8b 73 09 00 00    	jnp    c0034f6e <_dtoa_r+0xf3e>
c00345fb:	d9 c1                	fld    %st(1)
c00345fd:	39 d8                	cmp    %ebx,%eax
c00345ff:	d8 f3                	fdiv   %st(3),%st
c0034601:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034604:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034607:	db 5d d4             	fistpl -0x2c(%ebp)
c003460a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003460d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034610:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034613:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034616:	db 45 d4             	fildl  -0x2c(%ebp)
c0034619:	d8 cb                	fmul   %st(3),%st
c003461b:	88 48 ff             	mov    %cl,-0x1(%eax)
c003461e:	de ea                	fsubrp %st,%st(2)
c0034620:	75 c6                	jne    c00345e8 <_dtoa_r+0x5b8>
c0034622:	dd d8                	fstp   %st(0)
c0034624:	d8 c0                	fadd   %st(0),%st
c0034626:	db e9                	fucomi %st(1),%st
c0034628:	77 1e                	ja     c0034648 <_dtoa_r+0x618>
c003462a:	d9 c9                	fxch   %st(1)
c003462c:	df e9                	fucomip %st(1),%st
c003462e:	dd d8                	fstp   %st(0)
c0034630:	0f 8a 44 09 00 00    	jp     c0034f7a <_dtoa_r+0xf4a>
c0034636:	0f 85 3e 09 00 00    	jne    c0034f7a <_dtoa_r+0xf4a>
c003463c:	83 e2 01             	and    $0x1,%edx
c003463f:	90                   	nop
c0034640:	0f 84 34 09 00 00    	je     c0034f7a <_dtoa_r+0xf4a>
c0034646:	eb 04                	jmp    c003464c <_dtoa_r+0x61c>
c0034648:	dd d8                	fstp   %st(0)
c003464a:	dd d8                	fstp   %st(0)
c003464c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c003464f:	89 fb                	mov    %edi,%ebx
c0034651:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0034655:	89 cf                	mov    %ecx,%edi
c0034657:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c003465a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c003465d:	eb 0f                	jmp    c003466e <_dtoa_r+0x63e>
c003465f:	90                   	nop
c0034660:	39 d3                	cmp    %edx,%ebx
c0034662:	0f 84 75 09 00 00    	je     c0034fdd <_dtoa_r+0xfad>
c0034668:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c003466c:	89 d7                	mov    %edx,%edi
c003466e:	3c 39                	cmp    $0x39,%al
c0034670:	8d 57 ff             	lea    -0x1(%edi),%edx
c0034673:	74 eb                	je     c0034660 <_dtoa_r+0x630>
c0034675:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034678:	83 c0 01             	add    $0x1,%eax
c003467b:	88 02                	mov    %al,(%edx)
c003467d:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c0034680:	e9 fb 01 00 00       	jmp    c0034880 <_dtoa_r+0x850>
c0034685:	8d 76 00             	lea    0x0(%esi),%esi
c0034688:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c003468b:	85 c9                	test   %ecx,%ecx
c003468d:	0f 85 9d 02 00 00    	jne    c0034930 <_dtoa_r+0x900>
c0034693:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034696:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034699:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00346a0:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00346a3:	85 c0                	test   %eax,%eax
c00346a5:	7e 14                	jle    c00346bb <_dtoa_r+0x68b>
c00346a7:	85 db                	test   %ebx,%ebx
c00346a9:	7e 10                	jle    c00346bb <_dtoa_r+0x68b>
c00346ab:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00346ae:	39 d8                	cmp    %ebx,%eax
c00346b0:	0f 4f c3             	cmovg  %ebx,%eax
c00346b3:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00346b6:	29 c3                	sub    %eax,%ebx
c00346b8:	29 45 ac             	sub    %eax,-0x54(%ebp)
c00346bb:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00346be:	85 c0                	test   %eax,%eax
c00346c0:	7e 61                	jle    c0034723 <_dtoa_r+0x6f3>
c00346c2:	8b 45 98             	mov    -0x68(%ebp),%eax
c00346c5:	85 c0                	test   %eax,%eax
c00346c7:	0f 84 72 04 00 00    	je     c0034b3f <_dtoa_r+0xb0f>
c00346cd:	85 d2                	test   %edx,%edx
c00346cf:	7e 47                	jle    c0034718 <_dtoa_r+0x6e8>
c00346d1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00346d4:	89 54 24 08          	mov    %edx,0x8(%esp)
c00346d8:	89 34 24             	mov    %esi,(%esp)
c00346db:	89 55 88             	mov    %edx,-0x78(%ebp)
c00346de:	89 44 24 04          	mov    %eax,0x4(%esp)
c00346e2:	e8 f9 19 00 00       	call   c00360e0 <__pow5mult>
c00346e7:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c00346ea:	89 34 24             	mov    %esi,(%esp)
c00346ed:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c00346f1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00346f5:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00346f8:	e8 13 18 00 00       	call   c0035f10 <__multiply>
c00346fd:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034700:	89 34 24             	mov    %esi,(%esp)
c0034703:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034707:	89 45 8c             	mov    %eax,-0x74(%ebp)
c003470a:	e8 f1 14 00 00       	call   c0035c00 <_Bfree>
c003470f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034712:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034715:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034718:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003471b:	29 d0                	sub    %edx,%eax
c003471d:	0f 85 1f 04 00 00    	jne    c0034b42 <_dtoa_r+0xb12>
c0034723:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c003472a:	00 
c003472b:	89 34 24             	mov    %esi,(%esp)
c003472e:	e8 ad 17 00 00       	call   c0035ee0 <__i2b>
c0034733:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034736:	85 c9                	test   %ecx,%ecx
c0034738:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003473b:	7e 13                	jle    c0034750 <_dtoa_r+0x720>
c003473d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034741:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034745:	89 34 24             	mov    %esi,(%esp)
c0034748:	e8 93 19 00 00       	call   c00360e0 <__pow5mult>
c003474d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034750:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034754:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c003475b:	0f 8e f7 05 00 00    	jle    c0034d58 <_dtoa_r+0xd28>
c0034761:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0034764:	ba 01 00 00 00       	mov    $0x1,%edx
c0034769:	85 c0                	test   %eax,%eax
c003476b:	0f 85 27 05 00 00    	jne    c0034c98 <_dtoa_r+0xc68>
c0034771:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034774:	01 d0                	add    %edx,%eax
c0034776:	83 e0 1f             	and    $0x1f,%eax
c0034779:	89 c2                	mov    %eax,%edx
c003477b:	0f 84 57 03 00 00    	je     c0034ad8 <_dtoa_r+0xaa8>
c0034781:	b8 20 00 00 00       	mov    $0x20,%eax
c0034786:	29 d0                	sub    %edx,%eax
c0034788:	83 f8 04             	cmp    $0x4,%eax
c003478b:	0f 8e 8c 0a 00 00    	jle    c003521d <_dtoa_r+0x11ed>
c0034791:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034796:	29 d0                	sub    %edx,%eax
c0034798:	01 45 a0             	add    %eax,-0x60(%ebp)
c003479b:	01 c3                	add    %eax,%ebx
c003479d:	01 45 ac             	add    %eax,-0x54(%ebp)
c00347a0:	8b 45 a0             	mov    -0x60(%ebp),%eax
c00347a3:	85 c0                	test   %eax,%eax
c00347a5:	7e 16                	jle    c00347bd <_dtoa_r+0x78d>
c00347a7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00347ab:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00347ae:	89 34 24             	mov    %esi,(%esp)
c00347b1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347b5:	e8 46 1a 00 00       	call   c0036200 <__lshift>
c00347ba:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00347bd:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00347c0:	85 c0                	test   %eax,%eax
c00347c2:	7e 16                	jle    c00347da <_dtoa_r+0x7aa>
c00347c4:	89 44 24 08          	mov    %eax,0x8(%esp)
c00347c8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00347cb:	89 34 24             	mov    %esi,(%esp)
c00347ce:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347d2:	e8 29 1a 00 00       	call   c0036200 <__lshift>
c00347d7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00347da:	8b 45 9c             	mov    -0x64(%ebp),%eax
c00347dd:	85 c0                	test   %eax,%eax
c00347df:	0f 85 d3 04 00 00    	jne    c0034cb8 <_dtoa_r+0xc88>
c00347e5:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c00347e9:	0f 8e 11 02 00 00    	jle    c0034a00 <_dtoa_r+0x9d0>
c00347ef:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00347f2:	85 c0                	test   %eax,%eax
c00347f4:	0f 8f 06 02 00 00    	jg     c0034a00 <_dtoa_r+0x9d0>
c00347fa:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00347fd:	85 c0                	test   %eax,%eax
c00347ff:	0f 85 e0 01 00 00    	jne    c00349e5 <_dtoa_r+0x9b5>
c0034805:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034808:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003480f:	00 
c0034810:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034817:	00 
c0034818:	89 34 24             	mov    %esi,(%esp)
c003481b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003481f:	e8 fc 13 00 00       	call   c0035c20 <__multadd>
c0034824:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034827:	89 44 24 04          	mov    %eax,0x4(%esp)
c003482b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003482e:	89 04 24             	mov    %eax,(%esp)
c0034831:	e8 ea 1a 00 00       	call   c0036320 <__mcmp>
c0034836:	85 c0                	test   %eax,%eax
c0034838:	0f 8e a7 01 00 00    	jle    c00349e5 <_dtoa_r+0x9b5>
c003483e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0034842:	89 fb                	mov    %edi,%ebx
c0034844:	83 c7 01             	add    $0x1,%edi
c0034847:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c003484b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034852:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034855:	89 34 24             	mov    %esi,(%esp)
c0034858:	89 44 24 04          	mov    %eax,0x4(%esp)
c003485c:	e8 9f 13 00 00       	call   c0035c00 <_Bfree>
c0034861:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034864:	85 c0                	test   %eax,%eax
c0034866:	74 18                	je     c0034880 <_dtoa_r+0x850>
c0034868:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c003486b:	0f 85 a7 02 00 00    	jne    c0034b18 <_dtoa_r+0xae8>
c0034871:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034874:	89 34 24             	mov    %esi,(%esp)
c0034877:	89 44 24 04          	mov    %eax,0x4(%esp)
c003487b:	e8 80 13 00 00       	call   c0035c00 <_Bfree>
c0034880:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034883:	89 34 24             	mov    %esi,(%esp)
c0034886:	89 44 24 04          	mov    %eax,0x4(%esp)
c003488a:	e8 71 13 00 00       	call   c0035c00 <_Bfree>
c003488f:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034892:	8b 75 1c             	mov    0x1c(%ebp),%esi
c0034895:	c6 07 00             	movb   $0x0,(%edi)
c0034898:	83 c0 01             	add    $0x1,%eax
c003489b:	89 06                	mov    %eax,(%esi)
c003489d:	8b 45 24             	mov    0x24(%ebp),%eax
c00348a0:	85 c0                	test   %eax,%eax
c00348a2:	0f 84 90 02 00 00    	je     c0034b38 <_dtoa_r+0xb08>
c00348a8:	8b 45 24             	mov    0x24(%ebp),%eax
c00348ab:	89 38                	mov    %edi,(%eax)
c00348ad:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00348b3:	89 d8                	mov    %ebx,%eax
c00348b5:	5b                   	pop    %ebx
c00348b6:	5e                   	pop    %esi
c00348b7:	5f                   	pop    %edi
c00348b8:	5d                   	pop    %ebp
c00348b9:	c3                   	ret    
c00348ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00348c0:	db 45 b8             	fildl  -0x48(%ebp)
c00348c3:	df e9                	fucomip %st(1),%st
c00348c5:	dd d8                	fstp   %st(0)
c00348c7:	7a 06                	jp     c00348cf <_dtoa_r+0x89f>
c00348c9:	0f 84 cc f8 ff ff    	je     c003419b <_dtoa_r+0x16b>
c00348cf:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00348d3:	e9 c3 f8 ff ff       	jmp    c003419b <_dtoa_r+0x16b>
c00348d8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00348db:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00348de:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c00348e5:	f7 d8                	neg    %eax
c00348e7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00348ea:	e9 0c f9 ff ff       	jmp    c00341fb <_dtoa_r+0x1cb>
c00348ef:	90                   	nop
c00348f0:	f7 d8                	neg    %eax
c00348f2:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00348f5:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c00348fc:	e9 e2 f8 ff ff       	jmp    c00341e3 <_dtoa_r+0x1b3>
c0034901:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034908:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003490b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034910:	29 d9                	sub    %ebx,%ecx
c0034912:	d3 e0                	shl    %cl,%eax
c0034914:	e9 1b f8 ff ff       	jmp    c0034134 <_dtoa_r+0x104>
c0034919:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034920:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0034927:	e9 a0 f8 ff ff       	jmp    c00341cc <_dtoa_r+0x19c>
c003492c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034930:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034934:	0f 8e fe 06 00 00    	jle    c0035038 <_dtoa_r+0x1008>
c003493a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003493d:	83 e8 01             	sub    $0x1,%eax
c0034940:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0034943:	0f 8c 3b 06 00 00    	jl     c0034f84 <_dtoa_r+0xf54>
c0034949:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003494c:	29 c2                	sub    %eax,%edx
c003494e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0034951:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034954:	85 c9                	test   %ecx,%ecx
c0034956:	89 c8                	mov    %ecx,%eax
c0034958:	0f 88 83 07 00 00    	js     c00350e1 <_dtoa_r+0x10b1>
c003495e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034965:	00 
c0034966:	89 34 24             	mov    %esi,(%esp)
c0034969:	89 55 8c             	mov    %edx,-0x74(%ebp)
c003496c:	01 45 a0             	add    %eax,-0x60(%ebp)
c003496f:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034972:	e8 69 15 00 00       	call   c0035ee0 <__i2b>
c0034977:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003497a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003497d:	e9 1e fd ff ff       	jmp    c00346a0 <_dtoa_r+0x670>
c0034982:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034988:	d9 c1                	fld    %st(1)
c003498a:	b9 02 00 00 00       	mov    $0x2,%ecx
c003498f:	e9 37 fa ff ff       	jmp    c00343cb <_dtoa_r+0x39b>
c0034994:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034997:	db 45 d4             	fildl  -0x2c(%ebp)
c003499a:	d8 c9                	fmul   %st(1),%st
c003499c:	d8 05 40 91 03 c0    	fadds  0xc0039140
c00349a2:	dd 5d c0             	fstpl  -0x40(%ebp)
c00349a5:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c00349ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00349b0:	d8 25 44 91 03 c0    	fsubs  0xc0039144
c00349b6:	dd 45 c0             	fldl   -0x40(%ebp)
c00349b9:	d9 c9                	fxch   %st(1)
c00349bb:	db e9                	fucomi %st(1),%st
c00349bd:	0f 87 0d 02 00 00    	ja     c0034bd0 <_dtoa_r+0xba0>
c00349c3:	d9 c9                	fxch   %st(1)
c00349c5:	d9 e0                	fchs   
c00349c7:	df e9                	fucomip %st(1),%st
c00349c9:	dd d8                	fstp   %st(0)
c00349cb:	0f 86 a7 01 00 00    	jbe    c0034b78 <_dtoa_r+0xb48>
c00349d1:	dd d8                	fstp   %st(0)
c00349d3:	eb 02                	jmp    c00349d7 <_dtoa_r+0x9a7>
c00349d5:	dd d8                	fstp   %st(0)
c00349d7:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c00349de:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00349e5:	8b 45 18             	mov    0x18(%ebp),%eax
c00349e8:	89 fb                	mov    %edi,%ebx
c00349ea:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c00349f1:	f7 d0                	not    %eax
c00349f3:	89 45 b8             	mov    %eax,-0x48(%ebp)
c00349f6:	e9 57 fe ff ff       	jmp    c0034852 <_dtoa_r+0x822>
c00349fb:	90                   	nop
c00349fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a00:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034a03:	85 c0                	test   %eax,%eax
c0034a05:	0f 85 c5 03 00 00    	jne    c0034dd0 <_dtoa_r+0xda0>
c0034a0b:	89 75 08             	mov    %esi,0x8(%ebp)
c0034a0e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034a13:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034a16:	eb 24                	jmp    c0034a3c <_dtoa_r+0xa0c>
c0034a18:	8b 45 08             	mov    0x8(%ebp),%eax
c0034a1b:	83 c3 01             	add    $0x1,%ebx
c0034a1e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034a22:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034a29:	00 
c0034a2a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034a31:	00 
c0034a32:	89 04 24             	mov    %eax,(%esp)
c0034a35:	e8 e6 11 00 00       	call   c0035c20 <__multadd>
c0034a3a:	89 c6                	mov    %eax,%esi
c0034a3c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034a3f:	89 f0                	mov    %esi,%eax
c0034a41:	e8 1a f4 ff ff       	call   c0033e60 <quorem>
c0034a46:	83 c0 30             	add    $0x30,%eax
c0034a49:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034a4c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034a50:	7c c6                	jl     c0034a18 <_dtoa_r+0x9e8>
c0034a52:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034a55:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034a58:	ba 01 00 00 00       	mov    $0x1,%edx
c0034a5d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034a60:	8b 75 08             	mov    0x8(%ebp),%esi
c0034a63:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034a6a:	85 c0                	test   %eax,%eax
c0034a6c:	0f 4f d0             	cmovg  %eax,%edx
c0034a6f:	01 fa                	add    %edi,%edx
c0034a71:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034a74:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034a7b:	00 
c0034a7c:	89 34 24             	mov    %esi,(%esp)
c0034a7f:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034a82:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034a86:	e8 75 17 00 00       	call   c0036200 <__lshift>
c0034a8b:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034a8e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034a92:	89 04 24             	mov    %eax,(%esp)
c0034a95:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034a98:	e8 83 18 00 00       	call   c0036320 <__mcmp>
c0034a9d:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034aa0:	83 f8 00             	cmp    $0x0,%eax
c0034aa3:	0f 8e 41 06 00 00    	jle    c00350ea <_dtoa_r+0x10ba>
c0034aa9:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034aad:	eb 0f                	jmp    c0034abe <_dtoa_r+0xa8e>
c0034aaf:	90                   	nop
c0034ab0:	39 c7                	cmp    %eax,%edi
c0034ab2:	0f 84 70 05 00 00    	je     c0035028 <_dtoa_r+0xff8>
c0034ab8:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034abc:	89 c2                	mov    %eax,%edx
c0034abe:	80 f9 39             	cmp    $0x39,%cl
c0034ac1:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034ac4:	74 ea                	je     c0034ab0 <_dtoa_r+0xa80>
c0034ac6:	83 c1 01             	add    $0x1,%ecx
c0034ac9:	89 fb                	mov    %edi,%ebx
c0034acb:	88 08                	mov    %cl,(%eax)
c0034acd:	89 d7                	mov    %edx,%edi
c0034acf:	e9 7e fd ff ff       	jmp    c0034852 <_dtoa_r+0x822>
c0034ad4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034ad8:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034add:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034ae0:	01 c3                	add    %eax,%ebx
c0034ae2:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034ae5:	e9 b6 fc ff ff       	jmp    c00347a0 <_dtoa_r+0x770>
c0034aea:	ba 01 00 00 00       	mov    $0x1,%edx
c0034aef:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034af6:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034afd:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034b04:	21 c2                	and    %eax,%edx
c0034b06:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034b09:	31 d2                	xor    %edx,%edx
c0034b0b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034b12:	e9 62 f8 ff ff       	jmp    c0034379 <_dtoa_r+0x349>
c0034b17:	90                   	nop
c0034b18:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034b1b:	85 d2                	test   %edx,%edx
c0034b1d:	0f 84 4e fd ff ff    	je     c0034871 <_dtoa_r+0x841>
c0034b23:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034b26:	89 34 24             	mov    %esi,(%esp)
c0034b29:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b2d:	e8 ce 10 00 00       	call   c0035c00 <_Bfree>
c0034b32:	e9 3a fd ff ff       	jmp    c0034871 <_dtoa_r+0x841>
c0034b37:	90                   	nop
c0034b38:	89 d8                	mov    %ebx,%eax
c0034b3a:	e9 89 f5 ff ff       	jmp    c00340c8 <_dtoa_r+0x98>
c0034b3f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034b42:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034b46:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034b49:	89 34 24             	mov    %esi,(%esp)
c0034b4c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b50:	e8 8b 15 00 00       	call   c00360e0 <__pow5mult>
c0034b55:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034b58:	e9 c6 fb ff ff       	jmp    c0034723 <_dtoa_r+0x6f3>
c0034b5d:	dd d8                	fstp   %st(0)
c0034b5f:	dd d8                	fstp   %st(0)
c0034b61:	eb 15                	jmp    c0034b78 <_dtoa_r+0xb48>
c0034b63:	90                   	nop
c0034b64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034b68:	dd d8                	fstp   %st(0)
c0034b6a:	dd d8                	fstp   %st(0)
c0034b6c:	dd d8                	fstp   %st(0)
c0034b6e:	eb 08                	jmp    c0034b78 <_dtoa_r+0xb48>
c0034b70:	dd d8                	fstp   %st(0)
c0034b72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034b78:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034b7b:	e9 cf f9 ff ff       	jmp    c003454f <_dtoa_r+0x51f>
c0034b80:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034b83:	f7 d8                	neg    %eax
c0034b85:	0f 84 6a 04 00 00    	je     c0034ff5 <_dtoa_r+0xfc5>
c0034b8b:	89 c2                	mov    %eax,%edx
c0034b8d:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034b92:	83 e2 0f             	and    $0xf,%edx
c0034b95:	c1 f8 04             	sar    $0x4,%eax
c0034b98:	dd 04 d5 20 92 03 c0 	fldl   -0x3ffc6de0(,%edx,8)
c0034b9f:	85 c0                	test   %eax,%eax
c0034ba1:	d8 c9                	fmul   %st(1),%st
c0034ba3:	0f 84 4a f8 ff ff    	je     c00343f3 <_dtoa_r+0x3c3>
c0034ba9:	31 d2                	xor    %edx,%edx
c0034bab:	90                   	nop
c0034bac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034bb0:	a8 01                	test   $0x1,%al
c0034bb2:	74 0a                	je     c0034bbe <_dtoa_r+0xb8e>
c0034bb4:	dc 0c d5 e0 91 03 c0 	fmull  -0x3ffc6e20(,%edx,8)
c0034bbb:	83 c1 01             	add    $0x1,%ecx
c0034bbe:	83 c2 01             	add    $0x1,%edx
c0034bc1:	d1 f8                	sar    %eax
c0034bc3:	75 eb                	jne    c0034bb0 <_dtoa_r+0xb80>
c0034bc5:	e9 29 f8 ff ff       	jmp    c00343f3 <_dtoa_r+0x3c3>
c0034bca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034bd0:	dd d8                	fstp   %st(0)
c0034bd2:	dd d8                	fstp   %st(0)
c0034bd4:	dd d8                	fstp   %st(0)
c0034bd6:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034bdd:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034be4:	e9 55 fc ff ff       	jmp    c003483e <_dtoa_r+0x80e>
c0034be9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034bf0:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034bf3:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034bf6:	dd 45 c0             	fldl   -0x40(%ebp)
c0034bf9:	dc 0c c5 20 92 03 c0 	fmull  -0x3ffc6de0(,%eax,8)
c0034c00:	d9 c9                	fxch   %st(1)
c0034c02:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034c05:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034c09:	8d 57 01             	lea    0x1(%edi),%edx
c0034c0c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034c0f:	b4 0c                	mov    $0xc,%ah
c0034c11:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034c15:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c18:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c1b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c1e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034c21:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034c24:	83 c0 30             	add    $0x30,%eax
c0034c27:	83 f9 01             	cmp    $0x1,%ecx
c0034c2a:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c2d:	de e9                	fsubrp %st,%st(1)
c0034c2f:	88 07                	mov    %al,(%edi)
c0034c31:	89 d0                	mov    %edx,%eax
c0034c33:	74 37                	je     c0034c6c <_dtoa_r+0xc3c>
c0034c35:	d9 05 3c 91 03 c0    	flds   0xc003913c
c0034c3b:	eb 05                	jmp    c0034c42 <_dtoa_r+0xc12>
c0034c3d:	8d 76 00             	lea    0x0(%esi),%esi
c0034c40:	d9 c9                	fxch   %st(1)
c0034c42:	dc c9                	fmul   %st,%st(1)
c0034c44:	d9 c9                	fxch   %st(1)
c0034c46:	83 c0 01             	add    $0x1,%eax
c0034c49:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c4c:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c4f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c52:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0034c55:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034c58:	83 c1 30             	add    $0x30,%ecx
c0034c5b:	39 d8                	cmp    %ebx,%eax
c0034c5d:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c60:	de e9                	fsubrp %st,%st(1)
c0034c62:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034c65:	75 d9                	jne    c0034c40 <_dtoa_r+0xc10>
c0034c67:	dd d9                	fstp   %st(1)
c0034c69:	03 55 88             	add    -0x78(%ebp),%edx
c0034c6c:	d9 05 48 91 03 c0    	flds   0xc0039148
c0034c72:	d9 c2                	fld    %st(2)
c0034c74:	d8 c1                	fadd   %st(1),%st
c0034c76:	d9 ca                	fxch   %st(2)
c0034c78:	db ea                	fucomi %st(2),%st
c0034c7a:	dd da                	fstp   %st(2)
c0034c7c:	0f 86 7f 03 00 00    	jbe    c0035001 <_dtoa_r+0xfd1>
c0034c82:	dd d8                	fstp   %st(0)
c0034c84:	dd d8                	fstp   %st(0)
c0034c86:	dd d8                	fstp   %st(0)
c0034c88:	dd d8                	fstp   %st(0)
c0034c8a:	89 fb                	mov    %edi,%ebx
c0034c8c:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034c90:	89 d7                	mov    %edx,%edi
c0034c92:	e9 d7 f9 ff ff       	jmp    c003466e <_dtoa_r+0x63e>
c0034c97:	90                   	nop
c0034c98:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c0034c9b:	8b 41 10             	mov    0x10(%ecx),%eax
c0034c9e:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0034ca2:	89 04 24             	mov    %eax,(%esp)
c0034ca5:	e8 56 11 00 00       	call   c0035e00 <__hi0bits>
c0034caa:	ba 20 00 00 00       	mov    $0x20,%edx
c0034caf:	29 c2                	sub    %eax,%edx
c0034cb1:	e9 bb fa ff ff       	jmp    c0034771 <_dtoa_r+0x741>
c0034cb6:	66 90                	xchg   %ax,%ax
c0034cb8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034cbb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034cbf:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034cc2:	89 04 24             	mov    %eax,(%esp)
c0034cc5:	e8 56 16 00 00       	call   c0036320 <__mcmp>
c0034cca:	85 c0                	test   %eax,%eax
c0034ccc:	0f 89 13 fb ff ff    	jns    c00347e5 <_dtoa_r+0x7b5>
c0034cd2:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034cd5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034cdc:	00 
c0034cdd:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034ce4:	00 
c0034ce5:	89 34 24             	mov    %esi,(%esp)
c0034ce8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034cec:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034cf0:	e8 2b 0f 00 00       	call   c0035c20 <__multadd>
c0034cf5:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034cf8:	85 c9                	test   %ecx,%ecx
c0034cfa:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034cfd:	0f 85 8d 00 00 00    	jne    c0034d90 <_dtoa_r+0xd60>
c0034d03:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0034d07:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034d0a:	7f 0a                	jg     c0034d16 <_dtoa_r+0xce6>
c0034d0c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034d10:	0f 8f ff 04 00 00    	jg     c0035215 <_dtoa_r+0x11e5>
c0034d16:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034d19:	e9 ed fc ff ff       	jmp    c0034a0b <_dtoa_r+0x9db>
c0034d1e:	66 90                	xchg   %ax,%ax
c0034d20:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034d23:	85 db                	test   %ebx,%ebx
c0034d25:	0f 85 aa fc ff ff    	jne    c00349d5 <_dtoa_r+0x9a5>
c0034d2b:	d8 0d 44 91 03 c0    	fmuls  0xc0039144
c0034d31:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034d38:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034d3f:	dd 45 c0             	fldl   -0x40(%ebp)
c0034d42:	d9 c9                	fxch   %st(1)
c0034d44:	df e9                	fucomip %st(1),%st
c0034d46:	dd d8                	fstp   %st(0)
c0034d48:	0f 83 97 fc ff ff    	jae    c00349e5 <_dtoa_r+0x9b5>
c0034d4e:	e9 eb fa ff ff       	jmp    c003483e <_dtoa_r+0x80e>
c0034d53:	90                   	nop
c0034d54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034d58:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034d5b:	85 c0                	test   %eax,%eax
c0034d5d:	0f 85 fe f9 ff ff    	jne    c0034761 <_dtoa_r+0x731>
c0034d63:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0034d66:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c0034d6b:	0f 85 f0 f9 ff ff    	jne    c0034761 <_dtoa_r+0x731>
c0034d71:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0034d76:	0f 84 e5 f9 ff ff    	je     c0034761 <_dtoa_r+0x731>
c0034d7c:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0034d80:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0034d84:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034d8b:	e9 d1 f9 ff ff       	jmp    c0034761 <_dtoa_r+0x731>
c0034d90:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034d93:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034d9a:	00 
c0034d9b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034da2:	00 
c0034da3:	89 34 24             	mov    %esi,(%esp)
c0034da6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034daa:	e8 71 0e 00 00       	call   c0035c20 <__multadd>
c0034daf:	8b 55 90             	mov    -0x70(%ebp),%edx
c0034db2:	85 d2                	test   %edx,%edx
c0034db4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034db7:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034dba:	7f 0a                	jg     c0034dc6 <_dtoa_r+0xd96>
c0034dbc:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034dc0:	0f 8f 4f 04 00 00    	jg     c0035215 <_dtoa_r+0x11e5>
c0034dc6:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034dc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034dd0:	85 db                	test   %ebx,%ebx
c0034dd2:	7e 16                	jle    c0034dea <_dtoa_r+0xdba>
c0034dd4:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034dd7:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0034ddb:	89 34 24             	mov    %esi,(%esp)
c0034dde:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034de2:	e8 19 14 00 00       	call   c0036200 <__lshift>
c0034de7:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034dea:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c0034ded:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034df0:	85 db                	test   %ebx,%ebx
c0034df2:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034df5:	0f 85 11 03 00 00    	jne    c003510c <_dtoa_r+0x10dc>
c0034dfb:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034dfe:	8d 5f 01             	lea    0x1(%edi),%ebx
c0034e01:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0034e04:	01 f8                	add    %edi,%eax
c0034e06:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0034e09:	89 45 90             	mov    %eax,-0x70(%ebp)
c0034e0c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034e0f:	83 e0 01             	and    $0x1,%eax
c0034e12:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0034e15:	eb 2e                	jmp    c0034e45 <_dtoa_r+0xe15>
c0034e17:	90                   	nop
c0034e18:	e8 03 0e 00 00       	call   c0035c20 <__multadd>
c0034e1d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e24:	00 
c0034e25:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e2c:	00 
c0034e2d:	89 34 24             	mov    %esi,(%esp)
c0034e30:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e33:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034e36:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e3a:	e8 e1 0d 00 00       	call   c0035c20 <__multadd>
c0034e3f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e42:	83 c3 01             	add    $0x1,%ebx
c0034e45:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034e48:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034e4b:	89 45 98             	mov    %eax,-0x68(%ebp)
c0034e4e:	89 f8                	mov    %edi,%eax
c0034e50:	e8 0b f0 ff ff       	call   c0033e60 <quorem>
c0034e55:	89 3c 24             	mov    %edi,(%esp)
c0034e58:	8d 48 30             	lea    0x30(%eax),%ecx
c0034e5b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c0034e5e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034e61:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034e64:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034e68:	e8 b3 14 00 00       	call   c0036320 <__mcmp>
c0034e6d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0034e70:	89 34 24             	mov    %esi,(%esp)
c0034e73:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034e77:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034e7a:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034e7d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e81:	e8 ea 14 00 00       	call   c0036370 <__mdiff>
c0034e86:	8b 48 0c             	mov    0xc(%eax),%ecx
c0034e89:	89 c2                	mov    %eax,%edx
c0034e8b:	85 c9                	test   %ecx,%ecx
c0034e8d:	0f 85 c5 00 00 00    	jne    c0034f58 <_dtoa_r+0xf28>
c0034e93:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e97:	89 3c 24             	mov    %edi,(%esp)
c0034e9a:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034e9d:	e8 7e 14 00 00       	call   c0036320 <__mcmp>
c0034ea2:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0034ea5:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034ea9:	89 34 24             	mov    %esi,(%esp)
c0034eac:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034eaf:	e8 4c 0d 00 00       	call   c0035c00 <_Bfree>
c0034eb4:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034eb7:	89 c1                	mov    %eax,%ecx
c0034eb9:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034ebc:	75 0b                	jne    c0034ec9 <_dtoa_r+0xe99>
c0034ebe:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0034ec1:	85 d2                	test   %edx,%edx
c0034ec3:	0f 84 fb 02 00 00    	je     c00351c4 <_dtoa_r+0x1194>
c0034ec9:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034ecc:	85 d2                	test   %edx,%edx
c0034ece:	0f 88 7f 01 00 00    	js     c0035053 <_dtoa_r+0x1023>
c0034ed4:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034ed7:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034eda:	75 0b                	jne    c0034ee7 <_dtoa_r+0xeb7>
c0034edc:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c0034edf:	85 c9                	test   %ecx,%ecx
c0034ee1:	0f 84 6c 01 00 00    	je     c0035053 <_dtoa_r+0x1023>
c0034ee7:	85 c0                	test   %eax,%eax
c0034ee9:	0f 8f 82 02 00 00    	jg     c0035171 <_dtoa_r+0x1141>
c0034eef:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0034ef3:	89 da                	mov    %ebx,%edx
c0034ef5:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0034ef8:	88 43 ff             	mov    %al,-0x1(%ebx)
c0034efb:	0f 84 8d 02 00 00    	je     c003518e <_dtoa_r+0x115e>
c0034f01:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0034f05:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f0c:	00 
c0034f0d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f14:	00 
c0034f15:	89 34 24             	mov    %esi,(%esp)
c0034f18:	e8 03 0d 00 00       	call   c0035c20 <__multadd>
c0034f1d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f24:	00 
c0034f25:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f2c:	00 
c0034f2d:	89 34 24             	mov    %esi,(%esp)
c0034f30:	89 c7                	mov    %eax,%edi
c0034f32:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034f35:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0034f38:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034f3b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f3f:	0f 85 d3 fe ff ff    	jne    c0034e18 <_dtoa_r+0xde8>
c0034f45:	e8 d6 0c 00 00       	call   c0035c20 <__multadd>
c0034f4a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034f4d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034f50:	e9 ed fe ff ff       	jmp    c0034e42 <_dtoa_r+0xe12>
c0034f55:	8d 76 00             	lea    0x0(%esi),%esi
c0034f58:	b8 01 00 00 00       	mov    $0x1,%eax
c0034f5d:	e9 43 ff ff ff       	jmp    c0034ea5 <_dtoa_r+0xe75>
c0034f62:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034f69:	e9 d2 f2 ff ff       	jmp    c0034240 <_dtoa_r+0x210>
c0034f6e:	0f 85 87 f6 ff ff    	jne    c00345fb <_dtoa_r+0x5cb>
c0034f74:	dd d8                	fstp   %st(0)
c0034f76:	dd d8                	fstp   %st(0)
c0034f78:	dd d8                	fstp   %st(0)
c0034f7a:	89 fb                	mov    %edi,%ebx
c0034f7c:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034f7f:	e9 fc f8 ff ff       	jmp    c0034880 <_dtoa_r+0x850>
c0034f84:	89 c2                	mov    %eax,%edx
c0034f86:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0034f89:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034f8c:	01 55 94             	add    %edx,-0x6c(%ebp)
c0034f8f:	31 d2                	xor    %edx,%edx
c0034f91:	e9 b8 f9 ff ff       	jmp    c003494e <_dtoa_r+0x91e>
c0034f96:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034f99:	85 c0                	test   %eax,%eax
c0034f9b:	0f 84 f3 f9 ff ff    	je     c0034994 <_dtoa_r+0x964>
c0034fa1:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034fa4:	85 c0                	test   %eax,%eax
c0034fa6:	0f 8e c4 fb ff ff    	jle    c0034b70 <_dtoa_r+0xb40>
c0034fac:	d8 0d 3c 91 03 c0    	fmuls  0xc003913c
c0034fb2:	83 c1 01             	add    $0x1,%ecx
c0034fb5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034fb8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034fbb:	89 c1                	mov    %eax,%ecx
c0034fbd:	83 eb 01             	sub    $0x1,%ebx
c0034fc0:	db 45 d4             	fildl  -0x2c(%ebp)
c0034fc3:	d8 c9                	fmul   %st(1),%st
c0034fc5:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0034fc8:	d8 05 40 91 03 c0    	fadds  0xc0039140
c0034fce:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034fd1:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034fd8:	e9 53 f4 ff ff       	jmp    c0034430 <_dtoa_r+0x400>
c0034fdd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034fe0:	c6 03 30             	movb   $0x30,(%ebx)
c0034fe3:	83 c0 01             	add    $0x1,%eax
c0034fe6:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034fe9:	b8 31 00 00 00       	mov    $0x31,%eax
c0034fee:	88 02                	mov    %al,(%edx)
c0034ff0:	e9 8b f8 ff ff       	jmp    c0034880 <_dtoa_r+0x850>
c0034ff5:	d9 c0                	fld    %st(0)
c0034ff7:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034ffc:	e9 f2 f3 ff ff       	jmp    c00343f3 <_dtoa_r+0x3c3>
c0035001:	de e2                	fsubp  %st,%st(2)
c0035003:	d9 c9                	fxch   %st(1)
c0035005:	df e9                	fucomip %st(1),%st
c0035007:	dd d8                	fstp   %st(0)
c0035009:	0f 86 69 fb ff ff    	jbe    c0034b78 <_dtoa_r+0xb48>
c003500f:	dd d8                	fstp   %st(0)
c0035011:	eb 07                	jmp    c003501a <_dtoa_r+0xfea>
c0035013:	90                   	nop
c0035014:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035018:	89 c2                	mov    %eax,%edx
c003501a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003501e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035021:	74 f5                	je     c0035018 <_dtoa_r+0xfe8>
c0035023:	e9 d9 f4 ff ff       	jmp    c0034501 <_dtoa_r+0x4d1>
c0035028:	c6 07 31             	movb   $0x31,(%edi)
c003502b:	89 fb                	mov    %edi,%ebx
c003502d:	89 d7                	mov    %edx,%edi
c003502f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035033:	e9 1a f8 ff ff       	jmp    c0034852 <_dtoa_r+0x822>
c0035038:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003503b:	85 d2                	test   %edx,%edx
c003503d:	0f 84 1b 01 00 00    	je     c003515e <_dtoa_r+0x112e>
c0035043:	05 33 04 00 00       	add    $0x433,%eax
c0035048:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003504b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003504e:	e9 0b f9 ff ff       	jmp    c003495e <_dtoa_r+0x92e>
c0035053:	85 c0                	test   %eax,%eax
c0035055:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035058:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003505b:	7e 45                	jle    c00350a2 <_dtoa_r+0x1072>
c003505d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035060:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035067:	00 
c0035068:	89 34 24             	mov    %esi,(%esp)
c003506b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003506f:	e8 8c 11 00 00       	call   c0036200 <__lshift>
c0035074:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0035077:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003507b:	89 04 24             	mov    %eax,(%esp)
c003507e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0035081:	e8 9a 12 00 00       	call   c0036320 <__mcmp>
c0035086:	83 f8 00             	cmp    $0x0,%eax
c0035089:	0f 8e 5b 01 00 00    	jle    c00351ea <_dtoa_r+0x11ba>
c003508f:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035093:	0f 84 0c 01 00 00    	je     c00351a5 <_dtoa_r+0x1175>
c0035099:	8b 45 94             	mov    -0x6c(%ebp),%eax
c003509c:	83 c0 31             	add    $0x31,%eax
c003509f:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00350a2:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00350a5:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00350a9:	89 cb                	mov    %ecx,%ebx
c00350ab:	88 03                	mov    %al,(%ebx)
c00350ad:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00350b0:	89 fb                	mov    %edi,%ebx
c00350b2:	8d 79 01             	lea    0x1(%ecx),%edi
c00350b5:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00350b8:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00350bb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00350be:	e9 8f f7 ff ff       	jmp    c0034852 <_dtoa_r+0x822>
c00350c3:	dd d8                	fstp   %st(0)
c00350c5:	dd d8                	fstp   %st(0)
c00350c7:	dd d8                	fstp   %st(0)
c00350c9:	eb 0d                	jmp    c00350d8 <_dtoa_r+0x10a8>
c00350cb:	90                   	nop
c00350cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00350d0:	dd d8                	fstp   %st(0)
c00350d2:	dd d8                	fstp   %st(0)
c00350d4:	dd d8                	fstp   %st(0)
c00350d6:	dd d8                	fstp   %st(0)
c00350d8:	89 fb                	mov    %edi,%ebx
c00350da:	89 d7                	mov    %edx,%edi
c00350dc:	e9 8d f5 ff ff       	jmp    c003466e <_dtoa_r+0x63e>
c00350e1:	29 cb                	sub    %ecx,%ebx
c00350e3:	31 c0                	xor    %eax,%eax
c00350e5:	e9 74 f8 ff ff       	jmp    c003495e <_dtoa_r+0x92e>
c00350ea:	75 0e                	jne    c00350fa <_dtoa_r+0x10ca>
c00350ec:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c00350f0:	74 08                	je     c00350fa <_dtoa_r+0x10ca>
c00350f2:	e9 b2 f9 ff ff       	jmp    c0034aa9 <_dtoa_r+0xa79>
c00350f7:	90                   	nop
c00350f8:	89 c2                	mov    %eax,%edx
c00350fa:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c00350fe:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035101:	74 f5                	je     c00350f8 <_dtoa_r+0x10c8>
c0035103:	89 fb                	mov    %edi,%ebx
c0035105:	89 d7                	mov    %edx,%edi
c0035107:	e9 46 f7 ff ff       	jmp    c0034852 <_dtoa_r+0x822>
c003510c:	8b 40 04             	mov    0x4(%eax),%eax
c003510f:	89 34 24             	mov    %esi,(%esp)
c0035112:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035116:	e8 45 0a 00 00       	call   c0035b60 <_Balloc>
c003511b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003511e:	89 c3                	mov    %eax,%ebx
c0035120:	8b 41 10             	mov    0x10(%ecx),%eax
c0035123:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003512a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003512e:	89 c8                	mov    %ecx,%eax
c0035130:	83 c0 0c             	add    $0xc,%eax
c0035133:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035137:	8d 43 0c             	lea    0xc(%ebx),%eax
c003513a:	89 04 24             	mov    %eax,(%esp)
c003513d:	e8 62 cc ff ff       	call   c0031da4 <memcpy>
c0035142:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035149:	00 
c003514a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003514e:	89 34 24             	mov    %esi,(%esp)
c0035151:	e8 aa 10 00 00       	call   c0036200 <__lshift>
c0035156:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035159:	e9 9d fc ff ff       	jmp    c0034dfb <_dtoa_r+0xdcb>
c003515e:	b8 36 00 00 00       	mov    $0x36,%eax
c0035163:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035166:	2b 45 e0             	sub    -0x20(%ebp),%eax
c0035169:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003516c:	e9 ed f7 ff ff       	jmp    c003495e <_dtoa_r+0x92e>
c0035171:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035175:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035178:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003517b:	74 28                	je     c00351a5 <_dtoa_r+0x1175>
c003517d:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035181:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035184:	83 c0 01             	add    $0x1,%eax
c0035187:	89 cb                	mov    %ecx,%ebx
c0035189:	e9 1d ff ff ff       	jmp    c00350ab <_dtoa_r+0x107b>
c003518e:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035191:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035194:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0035197:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003519a:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003519d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351a0:	e9 cc f8 ff ff       	jmp    c0034a71 <_dtoa_r+0xa41>
c00351a5:	8b 45 98             	mov    -0x68(%ebp),%eax
c00351a8:	b9 39 00 00 00       	mov    $0x39,%ecx
c00351ad:	8d 50 01             	lea    0x1(%eax),%edx
c00351b0:	c6 00 39             	movb   $0x39,(%eax)
c00351b3:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351b6:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00351b9:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00351bc:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351bf:	e9 fa f8 ff ff       	jmp    c0034abe <_dtoa_r+0xa8e>
c00351c4:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00351c7:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351ca:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351cd:	83 fb 39             	cmp    $0x39,%ebx
c00351d0:	74 d3                	je     c00351a5 <_dtoa_r+0x1175>
c00351d2:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c00351d5:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00351d8:	83 c0 31             	add    $0x31,%eax
c00351db:	85 c9                	test   %ecx,%ecx
c00351dd:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00351e0:	0f 4e c3             	cmovle %ebx,%eax
c00351e3:	89 cb                	mov    %ecx,%ebx
c00351e5:	e9 c1 fe ff ff       	jmp    c00350ab <_dtoa_r+0x107b>
c00351ea:	0f 85 b2 fe ff ff    	jne    c00350a2 <_dtoa_r+0x1072>
c00351f0:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c00351f4:	0f 84 a8 fe ff ff    	je     c00350a2 <_dtoa_r+0x1072>
c00351fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035200:	e9 8a fe ff ff       	jmp    c003508f <_dtoa_r+0x105f>
c0035205:	0f 85 c7 f3 ff ff    	jne    c00345d2 <_dtoa_r+0x5a2>
c003520b:	dd d8                	fstp   %st(0)
c003520d:	dd d8                	fstp   %st(0)
c003520f:	90                   	nop
c0035210:	e9 65 fd ff ff       	jmp    c0034f7a <_dtoa_r+0xf4a>
c0035215:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035218:	e9 dd f5 ff ff       	jmp    c00347fa <_dtoa_r+0x7ca>
c003521d:	8d 76 00             	lea    0x0(%esi),%esi
c0035220:	0f 84 7a f5 ff ff    	je     c00347a0 <_dtoa_r+0x770>
c0035226:	b8 3c 00 00 00       	mov    $0x3c,%eax
c003522b:	29 d0                	sub    %edx,%eax
c003522d:	e9 ab f8 ff ff       	jmp    c0034add <_dtoa_r+0xaad>
c0035232:	b8 01 00 00 00       	mov    $0x1,%eax
c0035237:	e9 d9 ef ff ff       	jmp    c0034215 <_dtoa_r+0x1e5>
c003523c:	31 d2                	xor    %edx,%edx
c003523e:	e9 36 f1 ff ff       	jmp    c0034379 <_dtoa_r+0x349>
c0035243:	66 90                	xchg   %ax,%ax
c0035245:	66 90                	xchg   %ax,%ax
c0035247:	66 90                	xchg   %ax,%ax
c0035249:	66 90                	xchg   %ax,%ax
c003524b:	66 90                	xchg   %ax,%ax
c003524d:	66 90                	xchg   %ax,%ax
c003524f:	90                   	nop

c0035250 <_setlocale_r>:
c0035250:	55                   	push   %ebp
c0035251:	89 e5                	mov    %esp,%ebp
c0035253:	53                   	push   %ebx
c0035254:	83 ec 14             	sub    $0x14,%esp
c0035257:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003525a:	85 db                	test   %ebx,%ebx
c003525c:	74 14                	je     c0035272 <_setlocale_r+0x22>
c003525e:	c7 44 24 04 68 91 03 	movl   $0xc0039168,0x4(%esp)
c0035265:	c0 
c0035266:	89 1c 24             	mov    %ebx,(%esp)
c0035269:	e8 82 17 00 00       	call   c00369f0 <strcmp>
c003526e:	85 c0                	test   %eax,%eax
c0035270:	75 0e                	jne    c0035280 <_setlocale_r+0x30>
c0035272:	83 c4 14             	add    $0x14,%esp
c0035275:	b8 60 8f 03 c0       	mov    $0xc0038f60,%eax
c003527a:	5b                   	pop    %ebx
c003527b:	5d                   	pop    %ebp
c003527c:	c3                   	ret    
c003527d:	8d 76 00             	lea    0x0(%esi),%esi
c0035280:	c7 44 24 04 60 8f 03 	movl   $0xc0038f60,0x4(%esp)
c0035287:	c0 
c0035288:	89 1c 24             	mov    %ebx,(%esp)
c003528b:	e8 60 17 00 00       	call   c00369f0 <strcmp>
c0035290:	85 c0                	test   %eax,%eax
c0035292:	74 de                	je     c0035272 <_setlocale_r+0x22>
c0035294:	89 1c 24             	mov    %ebx,(%esp)
c0035297:	c7 44 24 04 9a 8f 03 	movl   $0xc0038f9a,0x4(%esp)
c003529e:	c0 
c003529f:	e8 4c 17 00 00       	call   c00369f0 <strcmp>
c00352a4:	89 c2                	mov    %eax,%edx
c00352a6:	31 c0                	xor    %eax,%eax
c00352a8:	85 d2                	test   %edx,%edx
c00352aa:	ba 60 8f 03 c0       	mov    $0xc0038f60,%edx
c00352af:	0f 44 c2             	cmove  %edx,%eax
c00352b2:	83 c4 14             	add    $0x14,%esp
c00352b5:	5b                   	pop    %ebx
c00352b6:	5d                   	pop    %ebp
c00352b7:	c3                   	ret    
c00352b8:	90                   	nop
c00352b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00352c0 <__locale_charset>:
c00352c0:	55                   	push   %ebp
c00352c1:	b8 c0 c4 03 c0       	mov    $0xc003c4c0,%eax
c00352c6:	89 e5                	mov    %esp,%ebp
c00352c8:	5d                   	pop    %ebp
c00352c9:	c3                   	ret    
c00352ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00352d0 <__locale_mb_cur_max>:
c00352d0:	55                   	push   %ebp
c00352d1:	a1 18 c5 03 c0       	mov    0xc003c518,%eax
c00352d6:	89 e5                	mov    %esp,%ebp
c00352d8:	5d                   	pop    %ebp
c00352d9:	c3                   	ret    
c00352da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00352e0 <__locale_msgcharset>:
c00352e0:	55                   	push   %ebp
c00352e1:	b8 a0 c4 03 c0       	mov    $0xc003c4a0,%eax
c00352e6:	89 e5                	mov    %esp,%ebp
c00352e8:	5d                   	pop    %ebp
c00352e9:	c3                   	ret    
c00352ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00352f0 <__locale_cjk_lang>:
c00352f0:	55                   	push   %ebp
c00352f1:	31 c0                	xor    %eax,%eax
c00352f3:	89 e5                	mov    %esp,%ebp
c00352f5:	5d                   	pop    %ebp
c00352f6:	c3                   	ret    
c00352f7:	89 f6                	mov    %esi,%esi
c00352f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035300 <_localeconv_r>:
c0035300:	55                   	push   %ebp
c0035301:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c0035306:	89 e5                	mov    %esp,%ebp
c0035308:	5d                   	pop    %ebp
c0035309:	c3                   	ret    
c003530a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035310 <setlocale>:
c0035310:	55                   	push   %ebp
c0035311:	89 e5                	mov    %esp,%ebp
c0035313:	83 ec 18             	sub    $0x18,%esp
c0035316:	e8 35 cc ff ff       	call   c0031f50 <__getreent>
c003531b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003531e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035322:	8b 55 08             	mov    0x8(%ebp),%edx
c0035325:	89 04 24             	mov    %eax,(%esp)
c0035328:	89 54 24 04          	mov    %edx,0x4(%esp)
c003532c:	e8 1f ff ff ff       	call   c0035250 <_setlocale_r>
c0035331:	c9                   	leave  
c0035332:	c3                   	ret    
c0035333:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035340 <localeconv>:
c0035340:	55                   	push   %ebp
c0035341:	89 e5                	mov    %esp,%ebp
c0035343:	83 ec 08             	sub    $0x8,%esp
c0035346:	e8 05 cc ff ff       	call   c0031f50 <__getreent>
c003534b:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c0035350:	c9                   	leave  
c0035351:	c3                   	ret    
c0035352:	66 90                	xchg   %ax,%ax
c0035354:	66 90                	xchg   %ax,%ax
c0035356:	66 90                	xchg   %ax,%ax
c0035358:	66 90                	xchg   %ax,%ax
c003535a:	66 90                	xchg   %ax,%ax
c003535c:	66 90                	xchg   %ax,%ax
c003535e:	66 90                	xchg   %ax,%ax

c0035360 <_malloc_r>:
c0035360:	55                   	push   %ebp
c0035361:	89 e5                	mov    %esp,%ebp
c0035363:	57                   	push   %edi
c0035364:	56                   	push   %esi
c0035365:	53                   	push   %ebx
c0035366:	83 ec 2c             	sub    $0x2c,%esp
c0035369:	8b 45 0c             	mov    0xc(%ebp),%eax
c003536c:	8d 50 0b             	lea    0xb(%eax),%edx
c003536f:	83 fa 16             	cmp    $0x16,%edx
c0035372:	76 6c                	jbe    c00353e0 <_malloc_r+0x80>
c0035374:	89 d7                	mov    %edx,%edi
c0035376:	83 e7 f8             	and    $0xfffffff8,%edi
c0035379:	89 fe                	mov    %edi,%esi
c003537b:	c1 ee 1f             	shr    $0x1f,%esi
c003537e:	39 c7                	cmp    %eax,%edi
c0035380:	8b 45 08             	mov    0x8(%ebp),%eax
c0035383:	89 f2                	mov    %esi,%edx
c0035385:	72 67                	jb     c00353ee <_malloc_r+0x8e>
c0035387:	84 d2                	test   %dl,%dl
c0035389:	75 63                	jne    c00353ee <_malloc_r+0x8e>
c003538b:	89 04 24             	mov    %eax,(%esp)
c003538e:	e8 ad 07 00 00       	call   c0035b40 <__malloc_lock>
c0035393:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c0035399:	77 65                	ja     c0035400 <_malloc_r+0xa0>
c003539b:	89 fa                	mov    %edi,%edx
c003539d:	c1 ea 03             	shr    $0x3,%edx
c00353a0:	8d 04 d5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%edx,8),%eax
c00353a7:	8b 58 0c             	mov    0xc(%eax),%ebx
c00353aa:	39 c3                	cmp    %eax,%ebx
c00353ac:	0f 84 3e 05 00 00    	je     c00358f0 <_malloc_r+0x590>
c00353b2:	8b 43 04             	mov    0x4(%ebx),%eax
c00353b5:	83 e0 fc             	and    $0xfffffffc,%eax
c00353b8:	8b 53 0c             	mov    0xc(%ebx),%edx
c00353bb:	8b 4b 08             	mov    0x8(%ebx),%ecx
c00353be:	89 51 0c             	mov    %edx,0xc(%ecx)
c00353c1:	89 4a 08             	mov    %ecx,0x8(%edx)
c00353c4:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c00353c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00353cc:	89 04 24             	mov    %eax,(%esp)
c00353cf:	e8 7c 07 00 00       	call   c0035b50 <__malloc_unlock>
c00353d4:	8d 43 08             	lea    0x8(%ebx),%eax
c00353d7:	83 c4 2c             	add    $0x2c,%esp
c00353da:	5b                   	pop    %ebx
c00353db:	5e                   	pop    %esi
c00353dc:	5f                   	pop    %edi
c00353dd:	5d                   	pop    %ebp
c00353de:	c3                   	ret    
c00353df:	90                   	nop
c00353e0:	bf 10 00 00 00       	mov    $0x10,%edi
c00353e5:	31 d2                	xor    %edx,%edx
c00353e7:	39 c7                	cmp    %eax,%edi
c00353e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00353ec:	73 99                	jae    c0035387 <_malloc_r+0x27>
c00353ee:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c00353f4:	83 c4 2c             	add    $0x2c,%esp
c00353f7:	31 c0                	xor    %eax,%eax
c00353f9:	5b                   	pop    %ebx
c00353fa:	5e                   	pop    %esi
c00353fb:	5f                   	pop    %edi
c00353fc:	5d                   	pop    %ebp
c00353fd:	c3                   	ret    
c00353fe:	66 90                	xchg   %ax,%ax
c0035400:	89 fe                	mov    %edi,%esi
c0035402:	c1 ee 09             	shr    $0x9,%esi
c0035405:	85 f6                	test   %esi,%esi
c0035407:	0f 84 ab 01 00 00    	je     c00355b8 <_malloc_r+0x258>
c003540d:	83 fe 04             	cmp    $0x4,%esi
c0035410:	0f 87 8a 03 00 00    	ja     c00357a0 <_malloc_r+0x440>
c0035416:	89 fe                	mov    %edi,%esi
c0035418:	c1 ee 06             	shr    $0x6,%esi
c003541b:	83 c6 38             	add    $0x38,%esi
c003541e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035421:	8d 0c 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%ecx
c0035428:	8b 59 0c             	mov    0xc(%ecx),%ebx
c003542b:	39 d9                	cmp    %ebx,%ecx
c003542d:	75 18                	jne    c0035447 <_malloc_r+0xe7>
c003542f:	eb 28                	jmp    c0035459 <_malloc_r+0xf9>
c0035431:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035438:	85 d2                	test   %edx,%edx
c003543a:	0f 89 78 ff ff ff    	jns    c00353b8 <_malloc_r+0x58>
c0035440:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035443:	39 d9                	cmp    %ebx,%ecx
c0035445:	74 12                	je     c0035459 <_malloc_r+0xf9>
c0035447:	8b 43 04             	mov    0x4(%ebx),%eax
c003544a:	83 e0 fc             	and    $0xfffffffc,%eax
c003544d:	89 c2                	mov    %eax,%edx
c003544f:	29 fa                	sub    %edi,%edx
c0035451:	83 fa 0f             	cmp    $0xf,%edx
c0035454:	7e e2                	jle    c0035438 <_malloc_r+0xd8>
c0035456:	83 ee 01             	sub    $0x1,%esi
c0035459:	8d 46 01             	lea    0x1(%esi),%eax
c003545c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003545f:	8b 1d 50 c5 03 c0    	mov    0xc003c550,%ebx
c0035465:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c003546a:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c0035470:	74 6b                	je     c00354dd <_malloc_r+0x17d>
c0035472:	8b 73 04             	mov    0x4(%ebx),%esi
c0035475:	83 e6 fc             	and    $0xfffffffc,%esi
c0035478:	89 f0                	mov    %esi,%eax
c003547a:	29 f8                	sub    %edi,%eax
c003547c:	83 f8 0f             	cmp    $0xf,%eax
c003547f:	0f 8f a3 03 00 00    	jg     c0035828 <_malloc_r+0x4c8>
c0035485:	85 c0                	test   %eax,%eax
c0035487:	c7 05 54 c5 03 c0 48 	movl   $0xc003c548,0xc003c554
c003548e:	c5 03 c0 
c0035491:	c7 05 50 c5 03 c0 48 	movl   $0xc003c548,0xc003c550
c0035498:	c5 03 c0 
c003549b:	0f 89 27 01 00 00    	jns    c00355c8 <_malloc_r+0x268>
c00354a1:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c00354a7:	0f 87 1b 03 00 00    	ja     c00357c8 <_malloc_r+0x468>
c00354ad:	c1 ee 03             	shr    $0x3,%esi
c00354b0:	b8 01 00 00 00       	mov    $0x1,%eax
c00354b5:	89 f1                	mov    %esi,%ecx
c00354b7:	8d 14 f5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%esi,8),%edx
c00354be:	c1 f9 02             	sar    $0x2,%ecx
c00354c1:	d3 e0                	shl    %cl,%eax
c00354c3:	8b 4a 08             	mov    0x8(%edx),%ecx
c00354c6:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c00354cc:	89 53 0c             	mov    %edx,0xc(%ebx)
c00354cf:	89 4b 08             	mov    %ecx,0x8(%ebx)
c00354d2:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c00354d7:	89 5a 08             	mov    %ebx,0x8(%edx)
c00354da:	89 59 0c             	mov    %ebx,0xc(%ecx)
c00354dd:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00354e0:	be 01 00 00 00       	mov    $0x1,%esi
c00354e5:	c1 f9 02             	sar    $0x2,%ecx
c00354e8:	d3 e6                	shl    %cl,%esi
c00354ea:	39 c6                	cmp    %eax,%esi
c00354ec:	0f 87 f6 00 00 00    	ja     c00355e8 <_malloc_r+0x288>
c00354f2:	85 f0                	test   %esi,%eax
c00354f4:	0f 85 76 03 00 00    	jne    c0035870 <_malloc_r+0x510>
c00354fa:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00354fd:	01 f6                	add    %esi,%esi
c00354ff:	83 e2 fc             	and    $0xfffffffc,%edx
c0035502:	85 f0                	test   %esi,%eax
c0035504:	8d 4a 04             	lea    0x4(%edx),%ecx
c0035507:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003550a:	0f 85 60 03 00 00    	jne    c0035870 <_malloc_r+0x510>
c0035510:	89 ca                	mov    %ecx,%edx
c0035512:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035518:	01 f6                	add    %esi,%esi
c003551a:	83 c2 04             	add    $0x4,%edx
c003551d:	85 f0                	test   %esi,%eax
c003551f:	74 f7                	je     c0035518 <_malloc_r+0x1b8>
c0035521:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035524:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035527:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003552a:	8d 34 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%esi
c0035531:	89 f1                	mov    %esi,%ecx
c0035533:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035536:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035539:	39 d9                	cmp    %ebx,%ecx
c003553b:	75 1e                	jne    c003555b <_malloc_r+0x1fb>
c003553d:	e9 36 03 00 00       	jmp    c0035878 <_malloc_r+0x518>
c0035542:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035548:	85 d2                	test   %edx,%edx
c003554a:	0f 89 c0 03 00 00    	jns    c0035910 <_malloc_r+0x5b0>
c0035550:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035553:	39 d9                	cmp    %ebx,%ecx
c0035555:	0f 84 1d 03 00 00    	je     c0035878 <_malloc_r+0x518>
c003555b:	8b 43 04             	mov    0x4(%ebx),%eax
c003555e:	83 e0 fc             	and    $0xfffffffc,%eax
c0035561:	89 c2                	mov    %eax,%edx
c0035563:	29 fa                	sub    %edi,%edx
c0035565:	83 fa 0f             	cmp    $0xf,%edx
c0035568:	7e de                	jle    c0035548 <_malloc_r+0x1e8>
c003556a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c003556d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c0035570:	83 cf 01             	or     $0x1,%edi
c0035573:	8b 73 08             	mov    0x8(%ebx),%esi
c0035576:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035579:	89 4e 0c             	mov    %ecx,0xc(%esi)
c003557c:	89 71 08             	mov    %esi,0x8(%ecx)
c003557f:	89 d1                	mov    %edx,%ecx
c0035581:	83 c9 01             	or     $0x1,%ecx
c0035584:	a3 54 c5 03 c0       	mov    %eax,0xc003c554
c0035589:	a3 50 c5 03 c0       	mov    %eax,0xc003c550
c003558e:	c7 40 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%eax)
c0035595:	c7 40 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%eax)
c003559c:	89 48 04             	mov    %ecx,0x4(%eax)
c003559f:	89 14 10             	mov    %edx,(%eax,%edx,1)
c00355a2:	8b 45 08             	mov    0x8(%ebp),%eax
c00355a5:	89 04 24             	mov    %eax,(%esp)
c00355a8:	e8 a3 05 00 00       	call   c0035b50 <__malloc_unlock>
c00355ad:	8d 43 08             	lea    0x8(%ebx),%eax
c00355b0:	e9 22 fe ff ff       	jmp    c00353d7 <_malloc_r+0x77>
c00355b5:	8d 76 00             	lea    0x0(%esi),%esi
c00355b8:	b8 7e 00 00 00       	mov    $0x7e,%eax
c00355bd:	be 3f 00 00 00       	mov    $0x3f,%esi
c00355c2:	e9 5a fe ff ff       	jmp    c0035421 <_malloc_r+0xc1>
c00355c7:	90                   	nop
c00355c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00355cb:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c00355d0:	89 04 24             	mov    %eax,(%esp)
c00355d3:	e8 78 05 00 00       	call   c0035b50 <__malloc_unlock>
c00355d8:	83 c4 2c             	add    $0x2c,%esp
c00355db:	8d 43 08             	lea    0x8(%ebx),%eax
c00355de:	5b                   	pop    %ebx
c00355df:	5e                   	pop    %esi
c00355e0:	5f                   	pop    %edi
c00355e1:	5d                   	pop    %ebp
c00355e2:	c3                   	ret    
c00355e3:	90                   	nop
c00355e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00355e8:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c00355ee:	8b 73 04             	mov    0x4(%ebx),%esi
c00355f1:	83 e6 fc             	and    $0xfffffffc,%esi
c00355f4:	39 f7                	cmp    %esi,%edi
c00355f6:	77 0d                	ja     c0035605 <_malloc_r+0x2a5>
c00355f8:	89 f0                	mov    %esi,%eax
c00355fa:	29 f8                	sub    %edi,%eax
c00355fc:	83 f8 0f             	cmp    $0xf,%eax
c00355ff:	0f 8f 6b 01 00 00    	jg     c0035770 <_malloc_r+0x410>
c0035605:	8b 0d 50 f0 06 c0    	mov    0xc006f050,%ecx
c003560b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c003560e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035611:	01 f9                	add    %edi,%ecx
c0035613:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035619:	83 c1 10             	add    $0x10,%ecx
c003561c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035621:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035628:	0f 44 c1             	cmove  %ecx,%eax
c003562b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003562e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035632:	8b 45 08             	mov    0x8(%ebp),%eax
c0035635:	89 04 24             	mov    %eax,(%esp)
c0035638:	e8 03 13 00 00       	call   c0036940 <_sbrk_r>
c003563d:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035640:	89 c1                	mov    %eax,%ecx
c0035642:	0f 84 17 03 00 00    	je     c003595f <_malloc_r+0x5ff>
c0035648:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c003564b:	0f 87 02 03 00 00    	ja     c0035953 <_malloc_r+0x5f3>
c0035651:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035654:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c003565a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c003565d:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c0035663:	0f 84 a9 03 00 00    	je     c0035a12 <_malloc_r+0x6b2>
c0035669:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035670:	0f 84 ca 03 00 00    	je     c0035a40 <_malloc_r+0x6e0>
c0035676:	89 c8                	mov    %ecx,%eax
c0035678:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c003567b:	01 d0                	add    %edx,%eax
c003567d:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c0035682:	89 c8                	mov    %ecx,%eax
c0035684:	ba 00 10 00 00       	mov    $0x1000,%edx
c0035689:	83 e0 07             	and    $0x7,%eax
c003568c:	74 0c                	je     c003569a <_malloc_r+0x33a>
c003568e:	29 c1                	sub    %eax,%ecx
c0035690:	ba 08 10 00 00       	mov    $0x1008,%edx
c0035695:	8d 49 08             	lea    0x8(%ecx),%ecx
c0035698:	29 c2                	sub    %eax,%edx
c003569a:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003569d:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00356a0:	01 c8                	add    %ecx,%eax
c00356a2:	25 ff 0f 00 00       	and    $0xfff,%eax
c00356a7:	29 c2                	sub    %eax,%edx
c00356a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00356ac:	89 54 24 04          	mov    %edx,0x4(%esp)
c00356b0:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00356b3:	89 04 24             	mov    %eax,(%esp)
c00356b6:	e8 85 12 00 00       	call   c0036940 <_sbrk_r>
c00356bb:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00356be:	83 f8 ff             	cmp    $0xffffffff,%eax
c00356c1:	0f 84 6d 03 00 00    	je     c0035a34 <_malloc_r+0x6d4>
c00356c7:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00356ca:	29 c8                	sub    %ecx,%eax
c00356cc:	01 d0                	add    %edx,%eax
c00356ce:	83 c8 01             	or     $0x1,%eax
c00356d1:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c00356d7:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c00356dd:	89 0d 48 c5 03 c0    	mov    %ecx,0xc003c548
c00356e3:	89 41 04             	mov    %eax,0x4(%ecx)
c00356e6:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c00356ec:	0f 84 f2 02 00 00    	je     c00359e4 <_malloc_r+0x684>
c00356f2:	83 fe 0f             	cmp    $0xf,%esi
c00356f5:	0f 86 8d 02 00 00    	jbe    c0035988 <_malloc_r+0x628>
c00356fb:	8b 43 04             	mov    0x4(%ebx),%eax
c00356fe:	83 ee 0c             	sub    $0xc,%esi
c0035701:	83 e6 f8             	and    $0xfffffff8,%esi
c0035704:	83 e0 01             	and    $0x1,%eax
c0035707:	09 f0                	or     %esi,%eax
c0035709:	83 fe 0f             	cmp    $0xf,%esi
c003570c:	89 43 04             	mov    %eax,0x4(%ebx)
c003570f:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035714:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c003571b:	00 
c003571c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035723:	00 
c0035724:	0f 87 a2 02 00 00    	ja     c00359cc <_malloc_r+0x66c>
c003572a:	3b 15 4c f0 06 c0    	cmp    0xc006f04c,%edx
c0035730:	76 06                	jbe    c0035738 <_malloc_r+0x3d8>
c0035732:	89 15 4c f0 06 c0    	mov    %edx,0xc006f04c
c0035738:	3b 15 48 f0 06 c0    	cmp    0xc006f048,%edx
c003573e:	76 06                	jbe    c0035746 <_malloc_r+0x3e6>
c0035740:	89 15 48 f0 06 c0    	mov    %edx,0xc006f048
c0035746:	8b 50 04             	mov    0x4(%eax),%edx
c0035749:	89 c3                	mov    %eax,%ebx
c003574b:	83 e2 fc             	and    $0xfffffffc,%edx
c003574e:	89 d0                	mov    %edx,%eax
c0035750:	29 f8                	sub    %edi,%eax
c0035752:	39 d7                	cmp    %edx,%edi
c0035754:	77 05                	ja     c003575b <_malloc_r+0x3fb>
c0035756:	83 f8 0f             	cmp    $0xf,%eax
c0035759:	7f 15                	jg     c0035770 <_malloc_r+0x410>
c003575b:	8b 45 08             	mov    0x8(%ebp),%eax
c003575e:	89 04 24             	mov    %eax,(%esp)
c0035761:	e8 ea 03 00 00       	call   c0035b50 <__malloc_unlock>
c0035766:	31 c0                	xor    %eax,%eax
c0035768:	e9 6a fc ff ff       	jmp    c00353d7 <_malloc_r+0x77>
c003576d:	8d 76 00             	lea    0x0(%esi),%esi
c0035770:	89 fa                	mov    %edi,%edx
c0035772:	83 c8 01             	or     $0x1,%eax
c0035775:	83 ca 01             	or     $0x1,%edx
c0035778:	89 53 04             	mov    %edx,0x4(%ebx)
c003577b:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003577e:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c0035784:	89 42 04             	mov    %eax,0x4(%edx)
c0035787:	8b 45 08             	mov    0x8(%ebp),%eax
c003578a:	89 04 24             	mov    %eax,(%esp)
c003578d:	e8 be 03 00 00       	call   c0035b50 <__malloc_unlock>
c0035792:	83 c4 2c             	add    $0x2c,%esp
c0035795:	8d 43 08             	lea    0x8(%ebx),%eax
c0035798:	5b                   	pop    %ebx
c0035799:	5e                   	pop    %esi
c003579a:	5f                   	pop    %edi
c003579b:	5d                   	pop    %ebp
c003579c:	c3                   	ret    
c003579d:	8d 76 00             	lea    0x0(%esi),%esi
c00357a0:	83 fe 14             	cmp    $0x14,%esi
c00357a3:	0f 86 8f 01 00 00    	jbe    c0035938 <_malloc_r+0x5d8>
c00357a9:	83 fe 54             	cmp    $0x54,%esi
c00357ac:	0f 87 be 01 00 00    	ja     c0035970 <_malloc_r+0x610>
c00357b2:	89 fe                	mov    %edi,%esi
c00357b4:	c1 ee 0c             	shr    $0xc,%esi
c00357b7:	83 c6 6e             	add    $0x6e,%esi
c00357ba:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00357bd:	e9 5f fc ff ff       	jmp    c0035421 <_malloc_r+0xc1>
c00357c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00357c8:	89 f1                	mov    %esi,%ecx
c00357ca:	c1 e9 09             	shr    $0x9,%ecx
c00357cd:	83 f9 04             	cmp    $0x4,%ecx
c00357d0:	0f 86 6d 01 00 00    	jbe    c0035943 <_malloc_r+0x5e3>
c00357d6:	83 f9 14             	cmp    $0x14,%ecx
c00357d9:	0f 87 0f 02 00 00    	ja     c00359ee <_malloc_r+0x68e>
c00357df:	83 c1 5b             	add    $0x5b,%ecx
c00357e2:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c00357e5:	8d 04 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%eax
c00357ec:	8b 50 08             	mov    0x8(%eax),%edx
c00357ef:	39 c2                	cmp    %eax,%edx
c00357f1:	0f 84 a1 01 00 00    	je     c0035998 <_malloc_r+0x638>
c00357f7:	90                   	nop
c00357f8:	8b 4a 04             	mov    0x4(%edx),%ecx
c00357fb:	83 e1 fc             	and    $0xfffffffc,%ecx
c00357fe:	39 ce                	cmp    %ecx,%esi
c0035800:	73 07                	jae    c0035809 <_malloc_r+0x4a9>
c0035802:	8b 52 08             	mov    0x8(%edx),%edx
c0035805:	39 d0                	cmp    %edx,%eax
c0035807:	75 ef                	jne    c00357f8 <_malloc_r+0x498>
c0035809:	8b 4a 0c             	mov    0xc(%edx),%ecx
c003580c:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035811:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035814:	89 53 08             	mov    %edx,0x8(%ebx)
c0035817:	89 59 08             	mov    %ebx,0x8(%ecx)
c003581a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003581d:	e9 bb fc ff ff       	jmp    c00354dd <_malloc_r+0x17d>
c0035822:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035828:	89 c1                	mov    %eax,%ecx
c003582a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003582d:	83 c9 01             	or     $0x1,%ecx
c0035830:	83 cf 01             	or     $0x1,%edi
c0035833:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035836:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c003583c:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c0035842:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c0035849:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c0035850:	89 4a 04             	mov    %ecx,0x4(%edx)
c0035853:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0035856:	8b 45 08             	mov    0x8(%ebp),%eax
c0035859:	89 04 24             	mov    %eax,(%esp)
c003585c:	e8 ef 02 00 00       	call   c0035b50 <__malloc_unlock>
c0035861:	8d 43 08             	lea    0x8(%ebx),%eax
c0035864:	e9 6e fb ff ff       	jmp    c00353d7 <_malloc_r+0x77>
c0035869:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035870:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035873:	e9 af fc ff ff       	jmp    c0035527 <_malloc_r+0x1c7>
c0035878:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c003587c:	83 c1 08             	add    $0x8,%ecx
c003587f:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c0035883:	0f 85 ad fc ff ff    	jne    c0035536 <_malloc_r+0x1d6>
c0035889:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003588c:	eb 12                	jmp    c00358a0 <_malloc_r+0x540>
c003588e:	66 90                	xchg   %ax,%ax
c0035890:	8d 56 f8             	lea    -0x8(%esi),%edx
c0035893:	8b 36                	mov    (%esi),%esi
c0035895:	83 e8 01             	sub    $0x1,%eax
c0035898:	39 d6                	cmp    %edx,%esi
c003589a:	0f 85 ea 01 00 00    	jne    c0035a8a <_malloc_r+0x72a>
c00358a0:	a8 03                	test   $0x3,%al
c00358a2:	75 ec                	jne    c0035890 <_malloc_r+0x530>
c00358a4:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00358a7:	f7 d0                	not    %eax
c00358a9:	23 05 44 c5 03 c0    	and    0xc003c544,%eax
c00358af:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c00358b4:	d1 65 dc             	shll   -0x24(%ebp)
c00358b7:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00358ba:	39 c2                	cmp    %eax,%edx
c00358bc:	0f 87 26 fd ff ff    	ja     c00355e8 <_malloc_r+0x288>
c00358c2:	85 d2                	test   %edx,%edx
c00358c4:	0f 84 1e fd ff ff    	je     c00355e8 <_malloc_r+0x288>
c00358ca:	85 c2                	test   %eax,%edx
c00358cc:	0f 85 c2 01 00 00    	jne    c0035a94 <_malloc_r+0x734>
c00358d2:	8b 75 e0             	mov    -0x20(%ebp),%esi
c00358d5:	89 f1                	mov    %esi,%ecx
c00358d7:	01 d2                	add    %edx,%edx
c00358d9:	83 c1 04             	add    $0x4,%ecx
c00358dc:	85 d0                	test   %edx,%eax
c00358de:	74 f7                	je     c00358d7 <_malloc_r+0x577>
c00358e0:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00358e3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00358e6:	e9 3c fc ff ff       	jmp    c0035527 <_malloc_r+0x1c7>
c00358eb:	90                   	nop
c00358ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00358f0:	8d 43 08             	lea    0x8(%ebx),%eax
c00358f3:	8b 5b 14             	mov    0x14(%ebx),%ebx
c00358f6:	39 d8                	cmp    %ebx,%eax
c00358f8:	0f 85 b4 fa ff ff    	jne    c00353b2 <_malloc_r+0x52>
c00358fe:	8d 42 02             	lea    0x2(%edx),%eax
c0035901:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035904:	e9 56 fb ff ff       	jmp    c003545f <_malloc_r+0xff>
c0035909:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035910:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035915:	8b 53 08             	mov    0x8(%ebx),%edx
c0035918:	8b 43 0c             	mov    0xc(%ebx),%eax
c003591b:	89 42 0c             	mov    %eax,0xc(%edx)
c003591e:	89 50 08             	mov    %edx,0x8(%eax)
c0035921:	8b 45 08             	mov    0x8(%ebp),%eax
c0035924:	89 04 24             	mov    %eax,(%esp)
c0035927:	e8 24 02 00 00       	call   c0035b50 <__malloc_unlock>
c003592c:	8d 43 08             	lea    0x8(%ebx),%eax
c003592f:	e9 a3 fa ff ff       	jmp    c00353d7 <_malloc_r+0x77>
c0035934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035938:	83 c6 5b             	add    $0x5b,%esi
c003593b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c003593e:	e9 de fa ff ff       	jmp    c0035421 <_malloc_r+0xc1>
c0035943:	89 f1                	mov    %esi,%ecx
c0035945:	c1 e9 06             	shr    $0x6,%ecx
c0035948:	83 c1 38             	add    $0x38,%ecx
c003594b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c003594e:	e9 92 fe ff ff       	jmp    c00357e5 <_malloc_r+0x485>
c0035953:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c0035959:	0f 84 f2 fc ff ff    	je     c0035651 <_malloc_r+0x2f1>
c003595f:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c0035965:	8b 53 04             	mov    0x4(%ebx),%edx
c0035968:	83 e2 fc             	and    $0xfffffffc,%edx
c003596b:	e9 de fd ff ff       	jmp    c003574e <_malloc_r+0x3ee>
c0035970:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c0035976:	77 3c                	ja     c00359b4 <_malloc_r+0x654>
c0035978:	89 fe                	mov    %edi,%esi
c003597a:	c1 ee 0f             	shr    $0xf,%esi
c003597d:	83 c6 77             	add    $0x77,%esi
c0035980:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035983:	e9 99 fa ff ff       	jmp    c0035421 <_malloc_r+0xc1>
c0035988:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c003598f:	89 cb                	mov    %ecx,%ebx
c0035991:	31 d2                	xor    %edx,%edx
c0035993:	e9 b6 fd ff ff       	jmp    c003574e <_malloc_r+0x3ee>
c0035998:	c1 f9 02             	sar    $0x2,%ecx
c003599b:	b8 01 00 00 00       	mov    $0x1,%eax
c00359a0:	d3 e0                	shl    %cl,%eax
c00359a2:	89 d1                	mov    %edx,%ecx
c00359a4:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c00359aa:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c00359af:	e9 5d fe ff ff       	jmp    c0035811 <_malloc_r+0x4b1>
c00359b4:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c00359ba:	77 47                	ja     c0035a03 <_malloc_r+0x6a3>
c00359bc:	89 fe                	mov    %edi,%esi
c00359be:	c1 ee 12             	shr    $0x12,%esi
c00359c1:	83 c6 7c             	add    $0x7c,%esi
c00359c4:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00359c7:	e9 55 fa ff ff       	jmp    c0035421 <_malloc_r+0xc1>
c00359cc:	8b 45 08             	mov    0x8(%ebp),%eax
c00359cf:	83 c3 08             	add    $0x8,%ebx
c00359d2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00359d6:	89 04 24             	mov    %eax,(%esp)
c00359d9:	e8 c2 22 00 00       	call   c0037ca0 <_free_r>
c00359de:	8b 15 20 f0 06 c0    	mov    0xc006f020,%edx
c00359e4:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c00359e9:	e9 3c fd ff ff       	jmp    c003572a <_malloc_r+0x3ca>
c00359ee:	83 f9 54             	cmp    $0x54,%ecx
c00359f1:	77 58                	ja     c0035a4b <_malloc_r+0x6eb>
c00359f3:	89 f1                	mov    %esi,%ecx
c00359f5:	c1 e9 0c             	shr    $0xc,%ecx
c00359f8:	83 c1 6e             	add    $0x6e,%ecx
c00359fb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c00359fe:	e9 e2 fd ff ff       	jmp    c00357e5 <_malloc_r+0x485>
c0035a03:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035a08:	be 7e 00 00 00       	mov    $0x7e,%esi
c0035a0d:	e9 0f fa ff ff       	jmp    c0035421 <_malloc_r+0xc1>
c0035a12:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035a19:	0f 85 4a fc ff ff    	jne    c0035669 <_malloc_r+0x309>
c0035a1f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035a22:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035a27:	01 f1                	add    %esi,%ecx
c0035a29:	83 c9 01             	or     $0x1,%ecx
c0035a2c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035a2f:	e9 f6 fc ff ff       	jmp    c003572a <_malloc_r+0x3ca>
c0035a34:	b8 01 00 00 00       	mov    $0x1,%eax
c0035a39:	31 d2                	xor    %edx,%edx
c0035a3b:	e9 91 fc ff ff       	jmp    c00356d1 <_malloc_r+0x371>
c0035a40:	89 0d 20 c5 03 c0    	mov    %ecx,0xc003c520
c0035a46:	e9 37 fc ff ff       	jmp    c0035682 <_malloc_r+0x322>
c0035a4b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035a51:	77 10                	ja     c0035a63 <_malloc_r+0x703>
c0035a53:	89 f1                	mov    %esi,%ecx
c0035a55:	c1 e9 0f             	shr    $0xf,%ecx
c0035a58:	83 c1 77             	add    $0x77,%ecx
c0035a5b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a5e:	e9 82 fd ff ff       	jmp    c00357e5 <_malloc_r+0x485>
c0035a63:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035a69:	77 10                	ja     c0035a7b <_malloc_r+0x71b>
c0035a6b:	89 f1                	mov    %esi,%ecx
c0035a6d:	c1 e9 12             	shr    $0x12,%ecx
c0035a70:	83 c1 7c             	add    $0x7c,%ecx
c0035a73:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a76:	e9 6a fd ff ff       	jmp    c00357e5 <_malloc_r+0x485>
c0035a7b:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035a80:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035a85:	e9 5b fd ff ff       	jmp    c00357e5 <_malloc_r+0x485>
c0035a8a:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035a8f:	e9 20 fe ff ff       	jmp    c00358b4 <_malloc_r+0x554>
c0035a94:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035a97:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035a9a:	e9 88 fa ff ff       	jmp    c0035527 <_malloc_r+0x1c7>
c0035a9f:	90                   	nop

c0035aa0 <memchr>:
c0035aa0:	55                   	push   %ebp
c0035aa1:	89 e5                	mov    %esp,%ebp
c0035aa3:	57                   	push   %edi
c0035aa4:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035aa8:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035aab:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035aae:	31 d2                	xor    %edx,%edx
c0035ab0:	85 c9                	test   %ecx,%ecx
c0035ab2:	74 79                	je     c0035b2d <L20>
c0035ab4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035aba:	74 28                	je     c0035ae4 <L5>
c0035abc:	3a 07                	cmp    (%edi),%al
c0035abe:	74 6a                	je     c0035b2a <L15>
c0035ac0:	47                   	inc    %edi
c0035ac1:	49                   	dec    %ecx
c0035ac2:	74 69                	je     c0035b2d <L20>
c0035ac4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035aca:	74 18                	je     c0035ae4 <L5>
c0035acc:	3a 07                	cmp    (%edi),%al
c0035ace:	74 5a                	je     c0035b2a <L15>
c0035ad0:	47                   	inc    %edi
c0035ad1:	49                   	dec    %ecx
c0035ad2:	74 59                	je     c0035b2d <L20>
c0035ad4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035ada:	74 08                	je     c0035ae4 <L5>
c0035adc:	3a 07                	cmp    (%edi),%al
c0035ade:	74 4a                	je     c0035b2a <L15>
c0035ae0:	47                   	inc    %edi
c0035ae1:	49                   	dec    %ecx
c0035ae2:	74 49                	je     c0035b2d <L20>

c0035ae4 <L5>:
c0035ae4:	88 c4                	mov    %al,%ah
c0035ae6:	89 c2                	mov    %eax,%edx
c0035ae8:	c1 e2 10             	shl    $0x10,%edx
c0035aeb:	09 d0                	or     %edx,%eax
c0035aed:	53                   	push   %ebx
c0035aee:	66 90                	xchg   %ax,%ax

c0035af0 <L8>:
c0035af0:	83 e9 04             	sub    $0x4,%ecx
c0035af3:	72 1c                	jb     c0035b11 <L9>
c0035af5:	8b 17                	mov    (%edi),%edx
c0035af7:	83 c7 04             	add    $0x4,%edi
c0035afa:	31 c2                	xor    %eax,%edx
c0035afc:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035b02:	f7 d2                	not    %edx
c0035b04:	21 d3                	and    %edx,%ebx
c0035b06:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035b0c:	74 e2                	je     c0035af0 <L8>
c0035b0e:	83 ef 04             	sub    $0x4,%edi

c0035b11 <L9>:
c0035b11:	5b                   	pop    %ebx
c0035b12:	31 d2                	xor    %edx,%edx
c0035b14:	83 c1 04             	add    $0x4,%ecx
c0035b17:	74 14                	je     c0035b2d <L20>
c0035b19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035b20 <L10>:
c0035b20:	3a 07                	cmp    (%edi),%al
c0035b22:	74 06                	je     c0035b2a <L15>
c0035b24:	47                   	inc    %edi
c0035b25:	49                   	dec    %ecx
c0035b26:	75 f8                	jne    c0035b20 <L10>
c0035b28:	31 ff                	xor    %edi,%edi

c0035b2a <L15>:
c0035b2a:	4a                   	dec    %edx
c0035b2b:	21 fa                	and    %edi,%edx

c0035b2d <L20>:
c0035b2d:	89 d0                	mov    %edx,%eax
c0035b2f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035b32:	5f                   	pop    %edi
c0035b33:	c9                   	leave  
c0035b34:	c3                   	ret    
c0035b35:	66 90                	xchg   %ax,%ax
c0035b37:	66 90                	xchg   %ax,%ax
c0035b39:	66 90                	xchg   %ax,%ax
c0035b3b:	66 90                	xchg   %ax,%ax
c0035b3d:	66 90                	xchg   %ax,%ax
c0035b3f:	90                   	nop

c0035b40 <__malloc_lock>:
c0035b40:	55                   	push   %ebp
c0035b41:	89 e5                	mov    %esp,%ebp
c0035b43:	5d                   	pop    %ebp
c0035b44:	c3                   	ret    
c0035b45:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035b49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035b50 <__malloc_unlock>:
c0035b50:	55                   	push   %ebp
c0035b51:	89 e5                	mov    %esp,%ebp
c0035b53:	5d                   	pop    %ebp
c0035b54:	c3                   	ret    
c0035b55:	66 90                	xchg   %ax,%ax
c0035b57:	66 90                	xchg   %ax,%ax
c0035b59:	66 90                	xchg   %ax,%ax
c0035b5b:	66 90                	xchg   %ax,%ax
c0035b5d:	66 90                	xchg   %ax,%ax
c0035b5f:	90                   	nop

c0035b60 <_Balloc>:
c0035b60:	55                   	push   %ebp
c0035b61:	89 e5                	mov    %esp,%ebp
c0035b63:	57                   	push   %edi
c0035b64:	56                   	push   %esi
c0035b65:	53                   	push   %ebx
c0035b66:	83 ec 1c             	sub    $0x1c,%esp
c0035b69:	8b 75 08             	mov    0x8(%ebp),%esi
c0035b6c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035b6f:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035b72:	85 c0                	test   %eax,%eax
c0035b74:	74 2a                	je     c0035ba0 <_Balloc+0x40>
c0035b76:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035b79:	8b 02                	mov    (%edx),%eax
c0035b7b:	85 c0                	test   %eax,%eax
c0035b7d:	74 49                	je     c0035bc8 <_Balloc+0x68>
c0035b7f:	8b 08                	mov    (%eax),%ecx
c0035b81:	89 0a                	mov    %ecx,(%edx)
c0035b83:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035b8a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035b91:	83 c4 1c             	add    $0x1c,%esp
c0035b94:	5b                   	pop    %ebx
c0035b95:	5e                   	pop    %esi
c0035b96:	5f                   	pop    %edi
c0035b97:	5d                   	pop    %ebp
c0035b98:	c3                   	ret    
c0035b99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035ba0:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035ba7:	00 
c0035ba8:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035baf:	00 
c0035bb0:	89 34 24             	mov    %esi,(%esp)
c0035bb3:	e8 38 1f 00 00       	call   c0037af0 <_calloc_r>
c0035bb8:	85 c0                	test   %eax,%eax
c0035bba:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035bbd:	75 b7                	jne    c0035b76 <_Balloc+0x16>
c0035bbf:	31 c0                	xor    %eax,%eax
c0035bc1:	eb ce                	jmp    c0035b91 <_Balloc+0x31>
c0035bc3:	90                   	nop
c0035bc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035bc8:	89 d9                	mov    %ebx,%ecx
c0035bca:	bf 01 00 00 00       	mov    $0x1,%edi
c0035bcf:	d3 e7                	shl    %cl,%edi
c0035bd1:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035bd8:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035bdc:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035be3:	00 
c0035be4:	89 34 24             	mov    %esi,(%esp)
c0035be7:	e8 04 1f 00 00       	call   c0037af0 <_calloc_r>
c0035bec:	85 c0                	test   %eax,%eax
c0035bee:	74 cf                	je     c0035bbf <_Balloc+0x5f>
c0035bf0:	89 58 04             	mov    %ebx,0x4(%eax)
c0035bf3:	89 78 08             	mov    %edi,0x8(%eax)
c0035bf6:	eb 8b                	jmp    c0035b83 <_Balloc+0x23>
c0035bf8:	90                   	nop
c0035bf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035c00 <_Bfree>:
c0035c00:	55                   	push   %ebp
c0035c01:	89 e5                	mov    %esp,%ebp
c0035c03:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c06:	85 c0                	test   %eax,%eax
c0035c08:	74 12                	je     c0035c1c <_Bfree+0x1c>
c0035c0a:	8b 55 08             	mov    0x8(%ebp),%edx
c0035c0d:	8b 48 04             	mov    0x4(%eax),%ecx
c0035c10:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035c13:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035c16:	8b 0a                	mov    (%edx),%ecx
c0035c18:	89 08                	mov    %ecx,(%eax)
c0035c1a:	89 02                	mov    %eax,(%edx)
c0035c1c:	5d                   	pop    %ebp
c0035c1d:	c3                   	ret    
c0035c1e:	66 90                	xchg   %ax,%ax

c0035c20 <__multadd>:
c0035c20:	55                   	push   %ebp
c0035c21:	89 e5                	mov    %esp,%ebp
c0035c23:	57                   	push   %edi
c0035c24:	56                   	push   %esi
c0035c25:	53                   	push   %ebx
c0035c26:	83 ec 2c             	sub    $0x2c,%esp
c0035c29:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c2c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0035c2f:	8b 40 10             	mov    0x10(%eax),%eax
c0035c32:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035c35:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c38:	8d 78 14             	lea    0x14(%eax),%edi
c0035c3b:	31 c0                	xor    %eax,%eax
c0035c3d:	8d 76 00             	lea    0x0(%esi),%esi
c0035c40:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0035c43:	0f b7 d1             	movzwl %cx,%edx
c0035c46:	0f af 55 10          	imul   0x10(%ebp),%edx
c0035c4a:	c1 e9 10             	shr    $0x10,%ecx
c0035c4d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0035c51:	01 da                	add    %ebx,%edx
c0035c53:	89 d3                	mov    %edx,%ebx
c0035c55:	0f b7 d2             	movzwl %dx,%edx
c0035c58:	c1 eb 10             	shr    $0x10,%ebx
c0035c5b:	01 d9                	add    %ebx,%ecx
c0035c5d:	89 ce                	mov    %ecx,%esi
c0035c5f:	c1 e1 10             	shl    $0x10,%ecx
c0035c62:	01 d1                	add    %edx,%ecx
c0035c64:	c1 ee 10             	shr    $0x10,%esi
c0035c67:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c0035c6a:	83 c0 01             	add    $0x1,%eax
c0035c6d:	89 f3                	mov    %esi,%ebx
c0035c6f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035c72:	7f cc                	jg     c0035c40 <__multadd+0x20>
c0035c74:	85 f6                	test   %esi,%esi
c0035c76:	74 1b                	je     c0035c93 <__multadd+0x73>
c0035c78:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c7b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c0035c7e:	3b 78 08             	cmp    0x8(%eax),%edi
c0035c81:	7d 1d                	jge    c0035ca0 <__multadd+0x80>
c0035c83:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035c86:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035c89:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c0035c8d:	83 c0 01             	add    $0x1,%eax
c0035c90:	89 47 10             	mov    %eax,0x10(%edi)
c0035c93:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c96:	83 c4 2c             	add    $0x2c,%esp
c0035c99:	5b                   	pop    %ebx
c0035c9a:	5e                   	pop    %esi
c0035c9b:	5f                   	pop    %edi
c0035c9c:	5d                   	pop    %ebp
c0035c9d:	c3                   	ret    
c0035c9e:	66 90                	xchg   %ax,%ax
c0035ca0:	8b 40 04             	mov    0x4(%eax),%eax
c0035ca3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035ca6:	83 c0 01             	add    $0x1,%eax
c0035ca9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035cad:	8b 45 08             	mov    0x8(%ebp),%eax
c0035cb0:	89 04 24             	mov    %eax,(%esp)
c0035cb3:	e8 a8 fe ff ff       	call   c0035b60 <_Balloc>
c0035cb8:	89 c3                	mov    %eax,%ebx
c0035cba:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cbd:	8b 40 10             	mov    0x10(%eax),%eax
c0035cc0:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0035cc7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035ccb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cce:	83 c0 0c             	add    $0xc,%eax
c0035cd1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035cd5:	8d 43 0c             	lea    0xc(%ebx),%eax
c0035cd8:	89 04 24             	mov    %eax,(%esp)
c0035cdb:	e8 c4 c0 ff ff       	call   c0031da4 <memcpy>
c0035ce0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035ce3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035ce6:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0035ce9:	8b 50 04             	mov    0x4(%eax),%edx
c0035cec:	8b 45 08             	mov    0x8(%ebp),%eax
c0035cef:	8b 40 4c             	mov    0x4c(%eax),%eax
c0035cf2:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0035cf5:	8b 10                	mov    (%eax),%edx
c0035cf7:	89 17                	mov    %edx,(%edi)
c0035cf9:	89 38                	mov    %edi,(%eax)
c0035cfb:	eb 86                	jmp    c0035c83 <__multadd+0x63>
c0035cfd:	8d 76 00             	lea    0x0(%esi),%esi

c0035d00 <__s2b>:
c0035d00:	55                   	push   %ebp
c0035d01:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0035d06:	89 e5                	mov    %esp,%ebp
c0035d08:	57                   	push   %edi
c0035d09:	56                   	push   %esi
c0035d0a:	53                   	push   %ebx
c0035d0b:	83 ec 2c             	sub    $0x2c,%esp
c0035d0e:	8b 45 14             	mov    0x14(%ebp),%eax
c0035d11:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035d14:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035d17:	8d 48 08             	lea    0x8(%eax),%ecx
c0035d1a:	89 c8                	mov    %ecx,%eax
c0035d1c:	f7 ea                	imul   %edx
c0035d1e:	c1 f9 1f             	sar    $0x1f,%ecx
c0035d21:	d1 fa                	sar    %edx
c0035d23:	29 ca                	sub    %ecx,%edx
c0035d25:	83 fa 01             	cmp    $0x1,%edx
c0035d28:	0f 8e be 00 00 00    	jle    c0035dec <__s2b+0xec>
c0035d2e:	b8 01 00 00 00       	mov    $0x1,%eax
c0035d33:	31 c9                	xor    %ecx,%ecx
c0035d35:	8d 76 00             	lea    0x0(%esi),%esi
c0035d38:	01 c0                	add    %eax,%eax
c0035d3a:	83 c1 01             	add    $0x1,%ecx
c0035d3d:	39 c2                	cmp    %eax,%edx
c0035d3f:	7f f7                	jg     c0035d38 <__s2b+0x38>
c0035d41:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035d45:	89 1c 24             	mov    %ebx,(%esp)
c0035d48:	e8 13 fe ff ff       	call   c0035b60 <_Balloc>
c0035d4d:	8b 55 18             	mov    0x18(%ebp),%edx
c0035d50:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0035d54:	89 50 14             	mov    %edx,0x14(%eax)
c0035d57:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035d5e:	0f 8e 7c 00 00 00    	jle    c0035de0 <__s2b+0xe0>
c0035d64:	8d 4e 09             	lea    0x9(%esi),%ecx
c0035d67:	03 75 10             	add    0x10(%ebp),%esi
c0035d6a:	89 cf                	mov    %ecx,%edi
c0035d6c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035d6f:	90                   	nop
c0035d70:	83 c7 01             	add    $0x1,%edi
c0035d73:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0035d77:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035d7e:	00 
c0035d7f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035d83:	89 1c 24             	mov    %ebx,(%esp)
c0035d86:	83 ea 30             	sub    $0x30,%edx
c0035d89:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035d8d:	e8 8e fe ff ff       	call   c0035c20 <__multadd>
c0035d92:	39 f7                	cmp    %esi,%edi
c0035d94:	75 da                	jne    c0035d70 <__s2b+0x70>
c0035d96:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035d99:	8b 7d 10             	mov    0x10(%ebp),%edi
c0035d9c:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0035da0:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035da3:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0035da6:	7e 2e                	jle    c0035dd6 <__s2b+0xd6>
c0035da8:	8b 7d 14             	mov    0x14(%ebp),%edi
c0035dab:	29 cf                	sub    %ecx,%edi
c0035dad:	01 f7                	add    %esi,%edi
c0035daf:	90                   	nop
c0035db0:	83 c6 01             	add    $0x1,%esi
c0035db3:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0035db7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035dbe:	00 
c0035dbf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035dc3:	89 1c 24             	mov    %ebx,(%esp)
c0035dc6:	83 ea 30             	sub    $0x30,%edx
c0035dc9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035dcd:	e8 4e fe ff ff       	call   c0035c20 <__multadd>
c0035dd2:	39 fe                	cmp    %edi,%esi
c0035dd4:	75 da                	jne    c0035db0 <__s2b+0xb0>
c0035dd6:	83 c4 2c             	add    $0x2c,%esp
c0035dd9:	5b                   	pop    %ebx
c0035dda:	5e                   	pop    %esi
c0035ddb:	5f                   	pop    %edi
c0035ddc:	5d                   	pop    %ebp
c0035ddd:	c3                   	ret    
c0035dde:	66 90                	xchg   %ax,%ax
c0035de0:	83 c6 0a             	add    $0xa,%esi
c0035de3:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c0035dea:	eb b4                	jmp    c0035da0 <__s2b+0xa0>
c0035dec:	31 c9                	xor    %ecx,%ecx
c0035dee:	e9 4e ff ff ff       	jmp    c0035d41 <__s2b+0x41>
c0035df3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035df9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035e00 <__hi0bits>:
c0035e00:	55                   	push   %ebp
c0035e01:	31 c9                	xor    %ecx,%ecx
c0035e03:	89 e5                	mov    %esp,%ebp
c0035e05:	8b 55 08             	mov    0x8(%ebp),%edx
c0035e08:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c0035e0e:	75 05                	jne    c0035e15 <__hi0bits+0x15>
c0035e10:	c1 e2 10             	shl    $0x10,%edx
c0035e13:	b1 10                	mov    $0x10,%cl
c0035e15:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c0035e1b:	75 06                	jne    c0035e23 <__hi0bits+0x23>
c0035e1d:	83 c1 08             	add    $0x8,%ecx
c0035e20:	c1 e2 08             	shl    $0x8,%edx
c0035e23:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0035e29:	75 06                	jne    c0035e31 <__hi0bits+0x31>
c0035e2b:	83 c1 04             	add    $0x4,%ecx
c0035e2e:	c1 e2 04             	shl    $0x4,%edx
c0035e31:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0035e37:	75 06                	jne    c0035e3f <__hi0bits+0x3f>
c0035e39:	83 c1 02             	add    $0x2,%ecx
c0035e3c:	c1 e2 02             	shl    $0x2,%edx
c0035e3f:	85 d2                	test   %edx,%edx
c0035e41:	89 c8                	mov    %ecx,%eax
c0035e43:	78 0d                	js     c0035e52 <__hi0bits+0x52>
c0035e45:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c0035e4b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035e50:	75 06                	jne    c0035e58 <__hi0bits+0x58>
c0035e52:	5d                   	pop    %ebp
c0035e53:	c3                   	ret    
c0035e54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035e58:	8d 41 01             	lea    0x1(%ecx),%eax
c0035e5b:	5d                   	pop    %ebp
c0035e5c:	c3                   	ret    
c0035e5d:	8d 76 00             	lea    0x0(%esi),%esi

c0035e60 <__lo0bits>:
c0035e60:	55                   	push   %ebp
c0035e61:	89 e5                	mov    %esp,%ebp
c0035e63:	53                   	push   %ebx
c0035e64:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035e67:	8b 13                	mov    (%ebx),%edx
c0035e69:	f6 c2 07             	test   $0x7,%dl
c0035e6c:	74 1a                	je     c0035e88 <__lo0bits+0x28>
c0035e6e:	31 c0                	xor    %eax,%eax
c0035e70:	f6 c2 01             	test   $0x1,%dl
c0035e73:	75 0f                	jne    c0035e84 <__lo0bits+0x24>
c0035e75:	f6 c2 02             	test   $0x2,%dl
c0035e78:	75 56                	jne    c0035ed0 <__lo0bits+0x70>
c0035e7a:	c1 ea 02             	shr    $0x2,%edx
c0035e7d:	b8 02 00 00 00       	mov    $0x2,%eax
c0035e82:	89 13                	mov    %edx,(%ebx)
c0035e84:	5b                   	pop    %ebx
c0035e85:	5d                   	pop    %ebp
c0035e86:	c3                   	ret    
c0035e87:	90                   	nop
c0035e88:	31 c9                	xor    %ecx,%ecx
c0035e8a:	66 85 d2             	test   %dx,%dx
c0035e8d:	75 05                	jne    c0035e94 <__lo0bits+0x34>
c0035e8f:	c1 ea 10             	shr    $0x10,%edx
c0035e92:	b1 10                	mov    $0x10,%cl
c0035e94:	84 d2                	test   %dl,%dl
c0035e96:	75 06                	jne    c0035e9e <__lo0bits+0x3e>
c0035e98:	83 c1 08             	add    $0x8,%ecx
c0035e9b:	c1 ea 08             	shr    $0x8,%edx
c0035e9e:	f6 c2 0f             	test   $0xf,%dl
c0035ea1:	75 06                	jne    c0035ea9 <__lo0bits+0x49>
c0035ea3:	83 c1 04             	add    $0x4,%ecx
c0035ea6:	c1 ea 04             	shr    $0x4,%edx
c0035ea9:	f6 c2 03             	test   $0x3,%dl
c0035eac:	75 06                	jne    c0035eb4 <__lo0bits+0x54>
c0035eae:	83 c1 02             	add    $0x2,%ecx
c0035eb1:	c1 ea 02             	shr    $0x2,%edx
c0035eb4:	f6 c2 01             	test   $0x1,%dl
c0035eb7:	75 0c                	jne    c0035ec5 <__lo0bits+0x65>
c0035eb9:	d1 ea                	shr    %edx
c0035ebb:	b8 20 00 00 00       	mov    $0x20,%eax
c0035ec0:	74 c2                	je     c0035e84 <__lo0bits+0x24>
c0035ec2:	83 c1 01             	add    $0x1,%ecx
c0035ec5:	89 13                	mov    %edx,(%ebx)
c0035ec7:	89 c8                	mov    %ecx,%eax
c0035ec9:	5b                   	pop    %ebx
c0035eca:	5d                   	pop    %ebp
c0035ecb:	c3                   	ret    
c0035ecc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035ed0:	d1 ea                	shr    %edx
c0035ed2:	b0 01                	mov    $0x1,%al
c0035ed4:	89 13                	mov    %edx,(%ebx)
c0035ed6:	5b                   	pop    %ebx
c0035ed7:	5d                   	pop    %ebp
c0035ed8:	c3                   	ret    
c0035ed9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035ee0 <__i2b>:
c0035ee0:	55                   	push   %ebp
c0035ee1:	89 e5                	mov    %esp,%ebp
c0035ee3:	83 ec 18             	sub    $0x18,%esp
c0035ee6:	8b 45 08             	mov    0x8(%ebp),%eax
c0035ee9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035ef0:	00 
c0035ef1:	89 04 24             	mov    %eax,(%esp)
c0035ef4:	e8 67 fc ff ff       	call   c0035b60 <_Balloc>
c0035ef9:	8b 55 0c             	mov    0xc(%ebp),%edx
c0035efc:	89 50 14             	mov    %edx,0x14(%eax)
c0035eff:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035f06:	c9                   	leave  
c0035f07:	c3                   	ret    
c0035f08:	90                   	nop
c0035f09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f10 <__multiply>:
c0035f10:	55                   	push   %ebp
c0035f11:	89 e5                	mov    %esp,%ebp
c0035f13:	57                   	push   %edi
c0035f14:	56                   	push   %esi
c0035f15:	53                   	push   %ebx
c0035f16:	83 ec 3c             	sub    $0x3c,%esp
c0035f19:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035f1c:	8b 45 10             	mov    0x10(%ebp),%eax
c0035f1f:	8b 7e 10             	mov    0x10(%esi),%edi
c0035f22:	8b 58 10             	mov    0x10(%eax),%ebx
c0035f25:	39 df                	cmp    %ebx,%edi
c0035f27:	7d 0e                	jge    c0035f37 <__multiply+0x27>
c0035f29:	89 f8                	mov    %edi,%eax
c0035f2b:	89 df                	mov    %ebx,%edi
c0035f2d:	89 c3                	mov    %eax,%ebx
c0035f2f:	89 f0                	mov    %esi,%eax
c0035f31:	8b 75 10             	mov    0x10(%ebp),%esi
c0035f34:	89 45 10             	mov    %eax,0x10(%ebp)
c0035f37:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c0035f3a:	3b 46 08             	cmp    0x8(%esi),%eax
c0035f3d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0035f40:	0f 9f c0             	setg   %al
c0035f43:	0f b6 c0             	movzbl %al,%eax
c0035f46:	03 46 04             	add    0x4(%esi),%eax
c0035f49:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035f4d:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f50:	89 04 24             	mov    %eax,(%esp)
c0035f53:	e8 08 fc ff ff       	call   c0035b60 <_Balloc>
c0035f58:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0035f5b:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035f5e:	8d 40 14             	lea    0x14(%eax),%eax
c0035f61:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0035f64:	89 d1                	mov    %edx,%ecx
c0035f66:	39 c8                	cmp    %ecx,%eax
c0035f68:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0035f6b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c0035f6e:	73 15                	jae    c0035f85 <__multiply+0x75>
c0035f70:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0035f73:	90                   	nop
c0035f74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035f78:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0035f7e:	83 c0 04             	add    $0x4,%eax
c0035f81:	39 c2                	cmp    %eax,%edx
c0035f83:	77 f3                	ja     c0035f78 <__multiply+0x68>
c0035f85:	8d 46 14             	lea    0x14(%esi),%eax
c0035f88:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0035f8b:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c0035f8e:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0035f91:	8b 45 10             	mov    0x10(%ebp),%eax
c0035f94:	83 c0 14             	add    $0x14,%eax
c0035f97:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c0035f9a:	39 f8                	cmp    %edi,%eax
c0035f9c:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0035f9f:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0035fa2:	0f 83 e8 00 00 00    	jae    c0036090 <__multiply+0x180>
c0035fa8:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0035fab:	8b 00                	mov    (%eax),%eax
c0035fad:	0f b7 f8             	movzwl %ax,%edi
c0035fb0:	85 ff                	test   %edi,%edi
c0035fb2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0035fb5:	74 5a                	je     c0036011 <__multiply+0x101>
c0035fb7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0035fba:	31 db                	xor    %ebx,%ebx
c0035fbc:	8b 75 d0             	mov    -0x30(%ebp),%esi
c0035fbf:	eb 09                	jmp    c0035fca <__multiply+0xba>
c0035fc1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035fc8:	89 fa                	mov    %edi,%edx
c0035fca:	8b 0e                	mov    (%esi),%ecx
c0035fcc:	83 c6 04             	add    $0x4,%esi
c0035fcf:	0f b7 3a             	movzwl (%edx),%edi
c0035fd2:	0f b7 c1             	movzwl %cx,%eax
c0035fd5:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0035fd9:	c1 e9 10             	shr    $0x10,%ecx
c0035fdc:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0035fe0:	01 f8                	add    %edi,%eax
c0035fe2:	01 d8                	add    %ebx,%eax
c0035fe4:	8b 1a                	mov    (%edx),%ebx
c0035fe6:	8d 7a 04             	lea    0x4(%edx),%edi
c0035fe9:	c1 eb 10             	shr    $0x10,%ebx
c0035fec:	01 d9                	add    %ebx,%ecx
c0035fee:	89 c3                	mov    %eax,%ebx
c0035ff0:	c1 eb 10             	shr    $0x10,%ebx
c0035ff3:	0f b7 c0             	movzwl %ax,%eax
c0035ff6:	01 d9                	add    %ebx,%ecx
c0035ff8:	89 cb                	mov    %ecx,%ebx
c0035ffa:	c1 e1 10             	shl    $0x10,%ecx
c0035ffd:	09 c1                	or     %eax,%ecx
c0035fff:	c1 eb 10             	shr    $0x10,%ebx
c0036002:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0036005:	89 0a                	mov    %ecx,(%edx)
c0036007:	77 bf                	ja     c0035fc8 <__multiply+0xb8>
c0036009:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003600c:	89 5a 04             	mov    %ebx,0x4(%edx)
c003600f:	8b 00                	mov    (%eax),%eax
c0036011:	c1 e8 10             	shr    $0x10,%eax
c0036014:	85 c0                	test   %eax,%eax
c0036016:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036019:	74 61                	je     c003607c <__multiply+0x16c>
c003601b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003601e:	31 ff                	xor    %edi,%edi
c0036020:	89 fe                	mov    %edi,%esi
c0036022:	8b 10                	mov    (%eax),%edx
c0036024:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036027:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003602a:	89 d3                	mov    %edx,%ebx
c003602c:	eb 05                	jmp    c0036033 <__multiply+0x123>
c003602e:	66 90                	xchg   %ax,%ax
c0036030:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036033:	0f b7 08             	movzwl (%eax),%ecx
c0036036:	c1 eb 10             	shr    $0x10,%ebx
c0036039:	0f b7 d2             	movzwl %dx,%edx
c003603c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036040:	83 c0 04             	add    $0x4,%eax
c0036043:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0036046:	01 f7                	add    %esi,%edi
c0036048:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003604b:	89 fb                	mov    %edi,%ebx
c003604d:	c1 e3 10             	shl    $0x10,%ebx
c0036050:	09 d3                	or     %edx,%ebx
c0036052:	89 1e                	mov    %ebx,(%esi)
c0036054:	8b 5e 04             	mov    0x4(%esi),%ebx
c0036057:	8d 4e 04             	lea    0x4(%esi),%ecx
c003605a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c003605e:	c1 ef 10             	shr    $0x10,%edi
c0036061:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c0036065:	0f b7 f3             	movzwl %bx,%esi
c0036068:	01 f2                	add    %esi,%edx
c003606a:	01 fa                	add    %edi,%edx
c003606c:	89 d6                	mov    %edx,%esi
c003606e:	c1 ee 10             	shr    $0x10,%esi
c0036071:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c0036074:	77 ba                	ja     c0036030 <__multiply+0x120>
c0036076:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036079:	89 50 04             	mov    %edx,0x4(%eax)
c003607c:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c0036080:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036083:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c0036087:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c003608a:	0f 87 18 ff ff ff    	ja     c0035fa8 <__multiply+0x98>
c0036090:	8b 75 c8             	mov    -0x38(%ebp),%esi
c0036093:	85 f6                	test   %esi,%esi
c0036095:	7e 29                	jle    c00360c0 <__multiply+0x1b0>
c0036097:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c003609a:	8b 5f fc             	mov    -0x4(%edi),%ebx
c003609d:	85 db                	test   %ebx,%ebx
c003609f:	75 1f                	jne    c00360c0 <__multiply+0x1b0>
c00360a1:	8b 55 c8             	mov    -0x38(%ebp),%edx
c00360a4:	89 d0                	mov    %edx,%eax
c00360a6:	c1 e0 02             	shl    $0x2,%eax
c00360a9:	29 c7                	sub    %eax,%edi
c00360ab:	89 f8                	mov    %edi,%eax
c00360ad:	eb 09                	jmp    c00360b8 <__multiply+0x1a8>
c00360af:	90                   	nop
c00360b0:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00360b4:	85 c9                	test   %ecx,%ecx
c00360b6:	75 05                	jne    c00360bd <__multiply+0x1ad>
c00360b8:	83 ea 01             	sub    $0x1,%edx
c00360bb:	75 f3                	jne    c00360b0 <__multiply+0x1a0>
c00360bd:	89 55 c8             	mov    %edx,-0x38(%ebp)
c00360c0:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00360c3:	8b 7d c8             	mov    -0x38(%ebp),%edi
c00360c6:	89 78 10             	mov    %edi,0x10(%eax)
c00360c9:	83 c4 3c             	add    $0x3c,%esp
c00360cc:	5b                   	pop    %ebx
c00360cd:	5e                   	pop    %esi
c00360ce:	5f                   	pop    %edi
c00360cf:	5d                   	pop    %ebp
c00360d0:	c3                   	ret    
c00360d1:	eb 0d                	jmp    c00360e0 <__pow5mult>
c00360d3:	90                   	nop
c00360d4:	90                   	nop
c00360d5:	90                   	nop
c00360d6:	90                   	nop
c00360d7:	90                   	nop
c00360d8:	90                   	nop
c00360d9:	90                   	nop
c00360da:	90                   	nop
c00360db:	90                   	nop
c00360dc:	90                   	nop
c00360dd:	90                   	nop
c00360de:	90                   	nop
c00360df:	90                   	nop

c00360e0 <__pow5mult>:
c00360e0:	55                   	push   %ebp
c00360e1:	89 e5                	mov    %esp,%ebp
c00360e3:	57                   	push   %edi
c00360e4:	56                   	push   %esi
c00360e5:	53                   	push   %ebx
c00360e6:	83 ec 2c             	sub    $0x2c,%esp
c00360e9:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00360ec:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00360ef:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00360f2:	89 d8                	mov    %ebx,%eax
c00360f4:	83 e0 03             	and    $0x3,%eax
c00360f7:	0f 85 a3 00 00 00    	jne    c00361a0 <__pow5mult+0xc0>
c00360fd:	c1 fb 02             	sar    $0x2,%ebx
c0036100:	85 db                	test   %ebx,%ebx
c0036102:	74 5c                	je     c0036160 <__pow5mult+0x80>
c0036104:	8b 71 48             	mov    0x48(%ecx),%esi
c0036107:	85 f6                	test   %esi,%esi
c0036109:	0f 84 bd 00 00 00    	je     c00361cc <__pow5mult+0xec>
c003610f:	f6 c3 01             	test   $0x1,%bl
c0036112:	75 15                	jne    c0036129 <__pow5mult+0x49>
c0036114:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036118:	d1 fb                	sar    %ebx
c003611a:	74 44                	je     c0036160 <__pow5mult+0x80>
c003611c:	8b 06                	mov    (%esi),%eax
c003611e:	85 c0                	test   %eax,%eax
c0036120:	74 4e                	je     c0036170 <__pow5mult+0x90>
c0036122:	89 c6                	mov    %eax,%esi
c0036124:	f6 c3 01             	test   $0x1,%bl
c0036127:	74 ef                	je     c0036118 <__pow5mult+0x38>
c0036129:	89 0c 24             	mov    %ecx,(%esp)
c003612c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036130:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0036134:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036137:	e8 d4 fd ff ff       	call   c0035f10 <__multiply>
c003613c:	85 ff                	test   %edi,%edi
c003613e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036141:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036144:	74 52                	je     c0036198 <__pow5mult+0xb8>
c0036146:	8b 57 04             	mov    0x4(%edi),%edx
c0036149:	d1 fb                	sar    %ebx
c003614b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c003614e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036151:	8b 10                	mov    (%eax),%edx
c0036153:	89 17                	mov    %edx,(%edi)
c0036155:	89 38                	mov    %edi,(%eax)
c0036157:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003615a:	75 c0                	jne    c003611c <__pow5mult+0x3c>
c003615c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036160:	83 c4 2c             	add    $0x2c,%esp
c0036163:	89 f8                	mov    %edi,%eax
c0036165:	5b                   	pop    %ebx
c0036166:	5e                   	pop    %esi
c0036167:	5f                   	pop    %edi
c0036168:	5d                   	pop    %ebp
c0036169:	c3                   	ret    
c003616a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036170:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036174:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036178:	89 0c 24             	mov    %ecx,(%esp)
c003617b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003617e:	e8 8d fd ff ff       	call   c0035f10 <__multiply>
c0036183:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036186:	89 06                	mov    %eax,(%esi)
c0036188:	89 c6                	mov    %eax,%esi
c003618a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0036190:	eb 92                	jmp    c0036124 <__pow5mult+0x44>
c0036192:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036198:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003619b:	e9 78 ff ff ff       	jmp    c0036118 <__pow5mult+0x38>
c00361a0:	8b 04 85 7c 91 03 c0 	mov    -0x3ffc6e84(,%eax,4),%eax
c00361a7:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00361ab:	89 0c 24             	mov    %ecx,(%esp)
c00361ae:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00361b5:	00 
c00361b6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00361ba:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361bd:	e8 5e fa ff ff       	call   c0035c20 <__multadd>
c00361c2:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361c5:	89 c7                	mov    %eax,%edi
c00361c7:	e9 31 ff ff ff       	jmp    c00360fd <__pow5mult+0x1d>
c00361cc:	89 0c 24             	mov    %ecx,(%esp)
c00361cf:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00361d6:	00 
c00361d7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361da:	e8 81 f9 ff ff       	call   c0035b60 <_Balloc>
c00361df:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361e2:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c00361e9:	89 c6                	mov    %eax,%esi
c00361eb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00361f2:	89 41 48             	mov    %eax,0x48(%ecx)
c00361f5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00361fb:	e9 0f ff ff ff       	jmp    c003610f <__pow5mult+0x2f>

c0036200 <__lshift>:
c0036200:	55                   	push   %ebp
c0036201:	89 e5                	mov    %esp,%ebp
c0036203:	57                   	push   %edi
c0036204:	56                   	push   %esi
c0036205:	53                   	push   %ebx
c0036206:	83 ec 2c             	sub    $0x2c,%esp
c0036209:	8b 45 0c             	mov    0xc(%ebp),%eax
c003620c:	8b 75 10             	mov    0x10(%ebp),%esi
c003620f:	89 c7                	mov    %eax,%edi
c0036211:	8b 50 04             	mov    0x4(%eax),%edx
c0036214:	8b 40 10             	mov    0x10(%eax),%eax
c0036217:	89 f3                	mov    %esi,%ebx
c0036219:	c1 fb 05             	sar    $0x5,%ebx
c003621c:	01 d8                	add    %ebx,%eax
c003621e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036221:	83 c0 01             	add    $0x1,%eax
c0036224:	89 c1                	mov    %eax,%ecx
c0036226:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036229:	8b 47 08             	mov    0x8(%edi),%eax
c003622c:	39 c1                	cmp    %eax,%ecx
c003622e:	7e 09                	jle    c0036239 <__lshift+0x39>
c0036230:	01 c0                	add    %eax,%eax
c0036232:	83 c2 01             	add    $0x1,%edx
c0036235:	39 c1                	cmp    %eax,%ecx
c0036237:	7f f7                	jg     c0036230 <__lshift+0x30>
c0036239:	8b 45 08             	mov    0x8(%ebp),%eax
c003623c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0036240:	89 04 24             	mov    %eax,(%esp)
c0036243:	e8 18 f9 ff ff       	call   c0035b60 <_Balloc>
c0036248:	85 db                	test   %ebx,%ebx
c003624a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003624d:	8d 50 14             	lea    0x14(%eax),%edx
c0036250:	7e 17                	jle    c0036269 <__lshift+0x69>
c0036252:	31 c0                	xor    %eax,%eax
c0036254:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036258:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c003625f:	83 c0 01             	add    $0x1,%eax
c0036262:	39 d8                	cmp    %ebx,%eax
c0036264:	75 f2                	jne    c0036258 <__lshift+0x58>
c0036266:	8d 14 82             	lea    (%edx,%eax,4),%edx
c0036269:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003626c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003626f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036272:	83 c0 14             	add    $0x14,%eax
c0036275:	83 e6 1f             	and    $0x1f,%esi
c0036278:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003627b:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c003627e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036281:	74 7d                	je     c0036300 <__lshift+0x100>
c0036283:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c003628a:	29 75 dc             	sub    %esi,-0x24(%ebp)
c003628d:	31 f6                	xor    %esi,%esi
c003628f:	eb 09                	jmp    c003629a <__lshift+0x9a>
c0036291:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036298:	89 fa                	mov    %edi,%edx
c003629a:	8b 18                	mov    (%eax),%ebx
c003629c:	83 c0 04             	add    $0x4,%eax
c003629f:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00362a3:	8d 7a 04             	lea    0x4(%edx),%edi
c00362a6:	d3 e3                	shl    %cl,%ebx
c00362a8:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c00362ac:	09 f3                	or     %esi,%ebx
c00362ae:	89 1a                	mov    %ebx,(%edx)
c00362b0:	8b 70 fc             	mov    -0x4(%eax),%esi
c00362b3:	d3 ee                	shr    %cl,%esi
c00362b5:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00362b8:	77 de                	ja     c0036298 <__lshift+0x98>
c00362ba:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00362bd:	89 72 04             	mov    %esi,0x4(%edx)
c00362c0:	83 c0 02             	add    $0x2,%eax
c00362c3:	85 f6                	test   %esi,%esi
c00362c5:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c00362c9:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00362cc:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00362cf:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00362d2:	8b 75 0c             	mov    0xc(%ebp),%esi
c00362d5:	83 e8 01             	sub    $0x1,%eax
c00362d8:	89 47 10             	mov    %eax,0x10(%edi)
c00362db:	8b 45 0c             	mov    0xc(%ebp),%eax
c00362de:	8b 50 04             	mov    0x4(%eax),%edx
c00362e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00362e4:	8b 40 4c             	mov    0x4c(%eax),%eax
c00362e7:	8d 04 90             	lea    (%eax,%edx,4),%eax
c00362ea:	8b 10                	mov    (%eax),%edx
c00362ec:	89 16                	mov    %edx,(%esi)
c00362ee:	89 30                	mov    %esi,(%eax)
c00362f0:	83 c4 2c             	add    $0x2c,%esp
c00362f3:	89 f8                	mov    %edi,%eax
c00362f5:	5b                   	pop    %ebx
c00362f6:	5e                   	pop    %esi
c00362f7:	5f                   	pop    %edi
c00362f8:	5d                   	pop    %ebp
c00362f9:	c3                   	ret    
c00362fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036300:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0036303:	90                   	nop
c0036304:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036308:	83 c0 04             	add    $0x4,%eax
c003630b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c003630e:	83 c2 04             	add    $0x4,%edx
c0036311:	39 c3                	cmp    %eax,%ebx
c0036313:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036316:	77 f0                	ja     c0036308 <__lshift+0x108>
c0036318:	eb b2                	jmp    c00362cc <__lshift+0xcc>
c003631a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036320 <__mcmp>:
c0036320:	55                   	push   %ebp
c0036321:	89 e5                	mov    %esp,%ebp
c0036323:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036326:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036329:	53                   	push   %ebx
c003632a:	8b 41 10             	mov    0x10(%ecx),%eax
c003632d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036330:	29 d8                	sub    %ebx,%eax
c0036332:	85 c0                	test   %eax,%eax
c0036334:	75 27                	jne    c003635d <__mcmp+0x3d>
c0036336:	c1 e3 02             	shl    $0x2,%ebx
c0036339:	83 c1 14             	add    $0x14,%ecx
c003633c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c003633f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0036343:	eb 07                	jmp    c003634c <__mcmp+0x2c>
c0036345:	8d 76 00             	lea    0x0(%esi),%esi
c0036348:	39 c1                	cmp    %eax,%ecx
c003634a:	73 14                	jae    c0036360 <__mcmp+0x40>
c003634c:	83 ea 04             	sub    $0x4,%edx
c003634f:	83 e8 04             	sub    $0x4,%eax
c0036352:	8b 1a                	mov    (%edx),%ebx
c0036354:	39 18                	cmp    %ebx,(%eax)
c0036356:	74 f0                	je     c0036348 <__mcmp+0x28>
c0036358:	19 c0                	sbb    %eax,%eax
c003635a:	83 c8 01             	or     $0x1,%eax
c003635d:	5b                   	pop    %ebx
c003635e:	5d                   	pop    %ebp
c003635f:	c3                   	ret    
c0036360:	31 c0                	xor    %eax,%eax
c0036362:	5b                   	pop    %ebx
c0036363:	5d                   	pop    %ebp
c0036364:	c3                   	ret    
c0036365:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036369:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036370 <__mdiff>:
c0036370:	55                   	push   %ebp
c0036371:	89 e5                	mov    %esp,%ebp
c0036373:	57                   	push   %edi
c0036374:	56                   	push   %esi
c0036375:	53                   	push   %ebx
c0036376:	83 ec 2c             	sub    $0x2c,%esp
c0036379:	8b 75 0c             	mov    0xc(%ebp),%esi
c003637c:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003637f:	89 34 24             	mov    %esi,(%esp)
c0036382:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0036386:	e8 95 ff ff ff       	call   c0036320 <__mcmp>
c003638b:	85 c0                	test   %eax,%eax
c003638d:	0f 84 25 01 00 00    	je     c00364b8 <__mdiff+0x148>
c0036393:	0f 88 0f 01 00 00    	js     c00364a8 <__mdiff+0x138>
c0036399:	31 ff                	xor    %edi,%edi
c003639b:	8b 46 04             	mov    0x4(%esi),%eax
c003639e:	83 c6 14             	add    $0x14,%esi
c00363a1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00363a5:	8b 45 08             	mov    0x8(%ebp),%eax
c00363a8:	89 04 24             	mov    %eax,(%esp)
c00363ab:	e8 b0 f7 ff ff       	call   c0035b60 <_Balloc>
c00363b0:	8d 4b 14             	lea    0x14(%ebx),%ecx
c00363b3:	89 c2                	mov    %eax,%edx
c00363b5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00363b8:	89 78 0c             	mov    %edi,0xc(%eax)
c00363bb:	8b 46 fc             	mov    -0x4(%esi),%eax
c00363be:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c00363c1:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00363c4:	8d 04 86             	lea    (%esi,%eax,4),%eax
c00363c7:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00363ca:	8b 43 10             	mov    0x10(%ebx),%eax
c00363cd:	31 db                	xor    %ebx,%ebx
c00363cf:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c00363d2:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00363d5:	89 d0                	mov    %edx,%eax
c00363d7:	83 c0 14             	add    $0x14,%eax
c00363da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00363e0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00363e3:	83 c0 04             	add    $0x4,%eax
c00363e6:	83 c1 04             	add    $0x4,%ecx
c00363e9:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c00363ed:	8b 3e                	mov    (%esi),%edi
c00363ef:	8b 71 fc             	mov    -0x4(%ecx),%esi
c00363f2:	0f b7 d7             	movzwl %di,%edx
c00363f5:	01 da                	add    %ebx,%edx
c00363f7:	0f b7 de             	movzwl %si,%ebx
c00363fa:	29 da                	sub    %ebx,%edx
c00363fc:	c1 ef 10             	shr    $0x10,%edi
c00363ff:	89 d3                	mov    %edx,%ebx
c0036401:	c1 ee 10             	shr    $0x10,%esi
c0036404:	0f b7 d2             	movzwl %dx,%edx
c0036407:	c1 fb 10             	sar    $0x10,%ebx
c003640a:	29 f7                	sub    %esi,%edi
c003640c:	01 df                	add    %ebx,%edi
c003640e:	89 fb                	mov    %edi,%ebx
c0036410:	c1 e7 10             	shl    $0x10,%edi
c0036413:	09 d7                	or     %edx,%edi
c0036415:	c1 fb 10             	sar    $0x10,%ebx
c0036418:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c003641b:	89 78 fc             	mov    %edi,-0x4(%eax)
c003641e:	77 c0                	ja     c00363e0 <__mdiff+0x70>
c0036420:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036423:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036426:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036429:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003642c:	39 f1                	cmp    %esi,%ecx
c003642e:	76 3f                	jbe    c003646f <__mdiff+0xff>
c0036430:	8b 3e                	mov    (%esi),%edi
c0036432:	83 c6 04             	add    $0x4,%esi
c0036435:	83 c0 04             	add    $0x4,%eax
c0036438:	0f b7 d7             	movzwl %di,%edx
c003643b:	01 da                	add    %ebx,%edx
c003643d:	89 d3                	mov    %edx,%ebx
c003643f:	0f b7 d2             	movzwl %dx,%edx
c0036442:	c1 fb 10             	sar    $0x10,%ebx
c0036445:	c1 ef 10             	shr    $0x10,%edi
c0036448:	01 df                	add    %ebx,%edi
c003644a:	89 fb                	mov    %edi,%ebx
c003644c:	c1 e7 10             	shl    $0x10,%edi
c003644f:	09 d7                	or     %edx,%edi
c0036451:	c1 fb 10             	sar    $0x10,%ebx
c0036454:	39 f1                	cmp    %esi,%ecx
c0036456:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036459:	77 d5                	ja     c0036430 <__mdiff+0xc0>
c003645b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003645e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036461:	f7 d0                	not    %eax
c0036463:	01 c8                	add    %ecx,%eax
c0036465:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036468:	c1 e8 02             	shr    $0x2,%eax
c003646b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c003646f:	85 ff                	test   %edi,%edi
c0036471:	75 23                	jne    c0036496 <__mdiff+0x126>
c0036473:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0036476:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c003647d:	29 d0                	sub    %edx,%eax
c003647f:	89 ca                	mov    %ecx,%edx
c0036481:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036488:	83 ea 01             	sub    $0x1,%edx
c003648b:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c003648f:	85 c9                	test   %ecx,%ecx
c0036491:	74 f5                	je     c0036488 <__mdiff+0x118>
c0036493:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036496:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0036499:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c003649c:	89 48 10             	mov    %ecx,0x10(%eax)
c003649f:	83 c4 2c             	add    $0x2c,%esp
c00364a2:	5b                   	pop    %ebx
c00364a3:	5e                   	pop    %esi
c00364a4:	5f                   	pop    %edi
c00364a5:	5d                   	pop    %ebp
c00364a6:	c3                   	ret    
c00364a7:	90                   	nop
c00364a8:	89 f0                	mov    %esi,%eax
c00364aa:	bf 01 00 00 00       	mov    $0x1,%edi
c00364af:	89 de                	mov    %ebx,%esi
c00364b1:	89 c3                	mov    %eax,%ebx
c00364b3:	e9 e3 fe ff ff       	jmp    c003639b <__mdiff+0x2b>
c00364b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00364bb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00364c2:	00 
c00364c3:	89 04 24             	mov    %eax,(%esp)
c00364c6:	e8 95 f6 ff ff       	call   c0035b60 <_Balloc>
c00364cb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00364d2:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c00364d9:	83 c4 2c             	add    $0x2c,%esp
c00364dc:	5b                   	pop    %ebx
c00364dd:	5e                   	pop    %esi
c00364de:	5f                   	pop    %edi
c00364df:	5d                   	pop    %ebp
c00364e0:	c3                   	ret    
c00364e1:	eb 0d                	jmp    c00364f0 <__ulp>
c00364e3:	90                   	nop
c00364e4:	90                   	nop
c00364e5:	90                   	nop
c00364e6:	90                   	nop
c00364e7:	90                   	nop
c00364e8:	90                   	nop
c00364e9:	90                   	nop
c00364ea:	90                   	nop
c00364eb:	90                   	nop
c00364ec:	90                   	nop
c00364ed:	90                   	nop
c00364ee:	90                   	nop
c00364ef:	90                   	nop

c00364f0 <__ulp>:
c00364f0:	55                   	push   %ebp
c00364f1:	89 e5                	mov    %esp,%ebp
c00364f3:	83 ec 08             	sub    $0x8,%esp
c00364f6:	dd 45 08             	fldl   0x8(%ebp)
c00364f9:	dd 5d f8             	fstpl  -0x8(%ebp)
c00364fc:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c00364ff:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0036505:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c003650b:	85 c9                	test   %ecx,%ecx
c003650d:	7e 11                	jle    c0036520 <__ulp+0x30>
c003650f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036512:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036519:	dd 45 f8             	fldl   -0x8(%ebp)
c003651c:	c9                   	leave  
c003651d:	c3                   	ret    
c003651e:	66 90                	xchg   %ax,%ax
c0036520:	f7 d9                	neg    %ecx
c0036522:	c1 f9 14             	sar    $0x14,%ecx
c0036525:	83 f9 13             	cmp    $0x13,%ecx
c0036528:	7e 26                	jle    c0036550 <__ulp+0x60>
c003652a:	83 f9 32             	cmp    $0x32,%ecx
c003652d:	b8 01 00 00 00       	mov    $0x1,%eax
c0036532:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036539:	7f 0b                	jg     c0036546 <__ulp+0x56>
c003653b:	ba 33 00 00 00       	mov    $0x33,%edx
c0036540:	29 ca                	sub    %ecx,%edx
c0036542:	89 d1                	mov    %edx,%ecx
c0036544:	d3 e0                	shl    %cl,%eax
c0036546:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0036549:	dd 45 f8             	fldl   -0x8(%ebp)
c003654c:	c9                   	leave  
c003654d:	c3                   	ret    
c003654e:	66 90                	xchg   %ax,%ax
c0036550:	b8 00 00 08 00       	mov    $0x80000,%eax
c0036555:	d3 f8                	sar    %cl,%eax
c0036557:	89 45 fc             	mov    %eax,-0x4(%ebp)
c003655a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036561:	dd 45 f8             	fldl   -0x8(%ebp)
c0036564:	c9                   	leave  
c0036565:	c3                   	ret    
c0036566:	8d 76 00             	lea    0x0(%esi),%esi
c0036569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036570 <__b2d>:
c0036570:	55                   	push   %ebp
c0036571:	89 e5                	mov    %esp,%ebp
c0036573:	57                   	push   %edi
c0036574:	56                   	push   %esi
c0036575:	53                   	push   %ebx
c0036576:	83 ec 18             	sub    $0x18,%esp
c0036579:	8b 45 08             	mov    0x8(%ebp),%eax
c003657c:	8d 78 14             	lea    0x14(%eax),%edi
c003657f:	8b 40 10             	mov    0x10(%eax),%eax
c0036582:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c0036585:	8b 73 fc             	mov    -0x4(%ebx),%esi
c0036588:	8d 43 fc             	lea    -0x4(%ebx),%eax
c003658b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003658e:	89 34 24             	mov    %esi,(%esp)
c0036591:	e8 6a f8 ff ff       	call   c0035e00 <__hi0bits>
c0036596:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0036599:	ba 20 00 00 00       	mov    $0x20,%edx
c003659e:	29 c2                	sub    %eax,%edx
c00365a0:	83 f8 0a             	cmp    $0xa,%eax
c00365a3:	89 11                	mov    %edx,(%ecx)
c00365a5:	7f 41                	jg     c00365e8 <__b2d+0x78>
c00365a7:	b9 0b 00 00 00       	mov    $0xb,%ecx
c00365ac:	89 f2                	mov    %esi,%edx
c00365ae:	29 c1                	sub    %eax,%ecx
c00365b0:	d3 ea                	shr    %cl,%edx
c00365b2:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c00365b8:	89 55 ec             	mov    %edx,-0x14(%ebp)
c00365bb:	31 d2                	xor    %edx,%edx
c00365bd:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00365c0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00365c7:	73 05                	jae    c00365ce <__b2d+0x5e>
c00365c9:	8b 53 f8             	mov    -0x8(%ebx),%edx
c00365cc:	d3 ea                	shr    %cl,%edx
c00365ce:	8d 48 15             	lea    0x15(%eax),%ecx
c00365d1:	d3 e6                	shl    %cl,%esi
c00365d3:	09 f2                	or     %esi,%edx
c00365d5:	89 55 e8             	mov    %edx,-0x18(%ebp)
c00365d8:	dd 45 e8             	fldl   -0x18(%ebp)
c00365db:	83 c4 18             	add    $0x18,%esp
c00365de:	5b                   	pop    %ebx
c00365df:	5e                   	pop    %esi
c00365e0:	5f                   	pop    %edi
c00365e1:	5d                   	pop    %ebp
c00365e2:	c3                   	ret    
c00365e3:	90                   	nop
c00365e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00365e8:	31 d2                	xor    %edx,%edx
c00365ea:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00365ed:	73 09                	jae    c00365f8 <__b2d+0x88>
c00365ef:	8b 53 f8             	mov    -0x8(%ebx),%edx
c00365f2:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c00365f5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00365f8:	89 c3                	mov    %eax,%ebx
c00365fa:	83 eb 0b             	sub    $0xb,%ebx
c00365fd:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0036600:	74 4e                	je     c0036650 <__b2d+0xe0>
c0036602:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036606:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c003660b:	29 c3                	sub    %eax,%ebx
c003660d:	89 d0                	mov    %edx,%eax
c003660f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036616:	d3 e6                	shl    %cl,%esi
c0036618:	89 d9                	mov    %ebx,%ecx
c003661a:	d3 e8                	shr    %cl,%eax
c003661c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003661f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036625:	09 c6                	or     %eax,%esi
c0036627:	31 c0                	xor    %eax,%eax
c0036629:	89 75 ec             	mov    %esi,-0x14(%ebp)
c003662c:	39 f9                	cmp    %edi,%ecx
c003662e:	76 07                	jbe    c0036637 <__b2d+0xc7>
c0036630:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036633:	89 d9                	mov    %ebx,%ecx
c0036635:	d3 e8                	shr    %cl,%eax
c0036637:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c003663b:	d3 e2                	shl    %cl,%edx
c003663d:	09 d0                	or     %edx,%eax
c003663f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0036642:	dd 45 e8             	fldl   -0x18(%ebp)
c0036645:	83 c4 18             	add    $0x18,%esp
c0036648:	5b                   	pop    %ebx
c0036649:	5e                   	pop    %esi
c003664a:	5f                   	pop    %edi
c003664b:	5d                   	pop    %ebp
c003664c:	c3                   	ret    
c003664d:	8d 76 00             	lea    0x0(%esi),%esi
c0036650:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036656:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036659:	89 55 e8             	mov    %edx,-0x18(%ebp)
c003665c:	dd 45 e8             	fldl   -0x18(%ebp)
c003665f:	83 c4 18             	add    $0x18,%esp
c0036662:	5b                   	pop    %ebx
c0036663:	5e                   	pop    %esi
c0036664:	5f                   	pop    %edi
c0036665:	5d                   	pop    %ebp
c0036666:	c3                   	ret    
c0036667:	89 f6                	mov    %esi,%esi
c0036669:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036670 <__d2b>:
c0036670:	55                   	push   %ebp
c0036671:	89 e5                	mov    %esp,%ebp
c0036673:	57                   	push   %edi
c0036674:	56                   	push   %esi
c0036675:	53                   	push   %ebx
c0036676:	83 ec 2c             	sub    $0x2c,%esp
c0036679:	8b 45 08             	mov    0x8(%ebp),%eax
c003667c:	dd 45 0c             	fldl   0xc(%ebp)
c003667f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036686:	00 
c0036687:	dd 5d d0             	fstpl  -0x30(%ebp)
c003668a:	89 04 24             	mov    %eax,(%esp)
c003668d:	e8 ce f4 ff ff       	call   c0035b60 <_Balloc>
c0036692:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c0036695:	89 c6                	mov    %eax,%esi
c0036697:	89 d8                	mov    %ebx,%eax
c0036699:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c003669f:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00366a4:	c1 eb 14             	shr    $0x14,%ebx
c00366a7:	85 db                	test   %ebx,%ebx
c00366a9:	74 05                	je     c00366b0 <__d2b+0x40>
c00366ab:	0d 00 00 10 00       	or     $0x100000,%eax
c00366b0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00366b3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00366b6:	85 c0                	test   %eax,%eax
c00366b8:	74 56                	je     c0036710 <__d2b+0xa0>
c00366ba:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00366bd:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00366c0:	89 04 24             	mov    %eax,(%esp)
c00366c3:	e8 98 f7 ff ff       	call   c0035e60 <__lo0bits>
c00366c8:	85 c0                	test   %eax,%eax
c00366ca:	0f 85 90 00 00 00    	jne    c0036760 <__d2b+0xf0>
c00366d0:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00366d3:	89 56 14             	mov    %edx,0x14(%esi)
c00366d6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00366d9:	83 fa 01             	cmp    $0x1,%edx
c00366dc:	19 ff                	sbb    %edi,%edi
c00366de:	83 c7 02             	add    $0x2,%edi
c00366e1:	85 db                	test   %ebx,%ebx
c00366e3:	89 56 18             	mov    %edx,0x18(%esi)
c00366e6:	89 7e 10             	mov    %edi,0x10(%esi)
c00366e9:	74 49                	je     c0036734 <__d2b+0xc4>
c00366eb:	8b 4d 14             	mov    0x14(%ebp),%ecx
c00366ee:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c00366f5:	89 11                	mov    %edx,(%ecx)
c00366f7:	ba 35 00 00 00       	mov    $0x35,%edx
c00366fc:	29 c2                	sub    %eax,%edx
c00366fe:	8b 45 18             	mov    0x18(%ebp),%eax
c0036701:	89 10                	mov    %edx,(%eax)
c0036703:	83 c4 2c             	add    $0x2c,%esp
c0036706:	89 f0                	mov    %esi,%eax
c0036708:	5b                   	pop    %ebx
c0036709:	5e                   	pop    %esi
c003670a:	5f                   	pop    %edi
c003670b:	5d                   	pop    %ebp
c003670c:	c3                   	ret    
c003670d:	8d 76 00             	lea    0x0(%esi),%esi
c0036710:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036713:	bf 01 00 00 00       	mov    $0x1,%edi
c0036718:	89 04 24             	mov    %eax,(%esp)
c003671b:	e8 40 f7 ff ff       	call   c0035e60 <__lo0bits>
c0036720:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036723:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c003672a:	89 56 14             	mov    %edx,0x14(%esi)
c003672d:	83 c0 20             	add    $0x20,%eax
c0036730:	85 db                	test   %ebx,%ebx
c0036732:	75 b7                	jne    c00366eb <__d2b+0x7b>
c0036734:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036737:	2d 32 04 00 00       	sub    $0x432,%eax
c003673c:	89 01                	mov    %eax,(%ecx)
c003673e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0036742:	c1 e7 05             	shl    $0x5,%edi
c0036745:	89 04 24             	mov    %eax,(%esp)
c0036748:	e8 b3 f6 ff ff       	call   c0035e00 <__hi0bits>
c003674d:	29 c7                	sub    %eax,%edi
c003674f:	8b 45 18             	mov    0x18(%ebp),%eax
c0036752:	89 38                	mov    %edi,(%eax)
c0036754:	83 c4 2c             	add    $0x2c,%esp
c0036757:	89 f0                	mov    %esi,%eax
c0036759:	5b                   	pop    %ebx
c003675a:	5e                   	pop    %esi
c003675b:	5f                   	pop    %edi
c003675c:	5d                   	pop    %ebp
c003675d:	c3                   	ret    
c003675e:	66 90                	xchg   %ax,%ax
c0036760:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036763:	b9 20 00 00 00       	mov    $0x20,%ecx
c0036768:	29 c1                	sub    %eax,%ecx
c003676a:	89 d7                	mov    %edx,%edi
c003676c:	d3 e7                	shl    %cl,%edi
c003676e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036771:	09 f9                	or     %edi,%ecx
c0036773:	89 4e 14             	mov    %ecx,0x14(%esi)
c0036776:	89 c1                	mov    %eax,%ecx
c0036778:	d3 ea                	shr    %cl,%edx
c003677a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c003677d:	e9 57 ff ff ff       	jmp    c00366d9 <__d2b+0x69>
c0036782:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036789:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036790 <__ratio>:
c0036790:	55                   	push   %ebp
c0036791:	89 e5                	mov    %esp,%ebp
c0036793:	56                   	push   %esi
c0036794:	53                   	push   %ebx
c0036795:	83 ec 30             	sub    $0x30,%esp
c0036798:	8b 75 08             	mov    0x8(%ebp),%esi
c003679b:	8d 45 f0             	lea    -0x10(%ebp),%eax
c003679e:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00367a1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00367a5:	89 34 24             	mov    %esi,(%esp)
c00367a8:	e8 c3 fd ff ff       	call   c0036570 <__b2d>
c00367ad:	8d 45 f4             	lea    -0xc(%ebp),%eax
c00367b0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00367b4:	89 1c 24             	mov    %ebx,(%esp)
c00367b7:	dd 55 e0             	fstl   -0x20(%ebp)
c00367ba:	dd 5d d8             	fstpl  -0x28(%ebp)
c00367bd:	e8 ae fd ff ff       	call   c0036570 <__b2d>
c00367c2:	8b 46 10             	mov    0x10(%esi),%eax
c00367c5:	2b 43 10             	sub    0x10(%ebx),%eax
c00367c8:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00367cb:	2b 55 f4             	sub    -0xc(%ebp),%edx
c00367ce:	c1 e0 05             	shl    $0x5,%eax
c00367d1:	01 d0                	add    %edx,%eax
c00367d3:	dd 55 d0             	fstl   -0x30(%ebp)
c00367d6:	85 c0                	test   %eax,%eax
c00367d8:	dd 45 d8             	fldl   -0x28(%ebp)
c00367db:	7e 1b                	jle    c00367f8 <__ratio+0x68>
c00367dd:	dd d8                	fstp   %st(0)
c00367df:	c1 e0 14             	shl    $0x14,%eax
c00367e2:	01 45 e4             	add    %eax,-0x1c(%ebp)
c00367e5:	dd 45 e0             	fldl   -0x20(%ebp)
c00367e8:	83 c4 30             	add    $0x30,%esp
c00367eb:	5b                   	pop    %ebx
c00367ec:	de f1                	fdivp  %st,%st(1)
c00367ee:	5e                   	pop    %esi
c00367ef:	5d                   	pop    %ebp
c00367f0:	c3                   	ret    
c00367f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00367f8:	dd d9                	fstp   %st(1)
c00367fa:	c1 e0 14             	shl    $0x14,%eax
c00367fd:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0036800:	dd 45 d0             	fldl   -0x30(%ebp)
c0036803:	83 c4 30             	add    $0x30,%esp
c0036806:	5b                   	pop    %ebx
c0036807:	de f9                	fdivrp %st,%st(1)
c0036809:	5e                   	pop    %esi
c003680a:	5d                   	pop    %ebp
c003680b:	c3                   	ret    
c003680c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036810 <_mprec_log10>:
c0036810:	55                   	push   %ebp
c0036811:	89 e5                	mov    %esp,%ebp
c0036813:	8b 45 08             	mov    0x8(%ebp),%eax
c0036816:	83 f8 17             	cmp    $0x17,%eax
c0036819:	7e 1d                	jle    c0036838 <_mprec_log10+0x28>
c003681b:	d9 e8                	fld1   
c003681d:	d9 05 3c 91 03 c0    	flds   0xc003913c
c0036823:	90                   	nop
c0036824:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036828:	83 e8 01             	sub    $0x1,%eax
c003682b:	dc c9                	fmul   %st,%st(1)
c003682d:	75 f9                	jne    c0036828 <_mprec_log10+0x18>
c003682f:	dd d8                	fstp   %st(0)
c0036831:	5d                   	pop    %ebp
c0036832:	c3                   	ret    
c0036833:	90                   	nop
c0036834:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036838:	dd 04 c5 20 92 03 c0 	fldl   -0x3ffc6de0(,%eax,8)
c003683f:	5d                   	pop    %ebp
c0036840:	c3                   	ret    
c0036841:	eb 0d                	jmp    c0036850 <__copybits>
c0036843:	90                   	nop
c0036844:	90                   	nop
c0036845:	90                   	nop
c0036846:	90                   	nop
c0036847:	90                   	nop
c0036848:	90                   	nop
c0036849:	90                   	nop
c003684a:	90                   	nop
c003684b:	90                   	nop
c003684c:	90                   	nop
c003684d:	90                   	nop
c003684e:	90                   	nop
c003684f:	90                   	nop

c0036850 <__copybits>:
c0036850:	55                   	push   %ebp
c0036851:	89 e5                	mov    %esp,%ebp
c0036853:	57                   	push   %edi
c0036854:	8b 7d 10             	mov    0x10(%ebp),%edi
c0036857:	56                   	push   %esi
c0036858:	8b 75 0c             	mov    0xc(%ebp),%esi
c003685b:	8b 45 08             	mov    0x8(%ebp),%eax
c003685e:	53                   	push   %ebx
c003685f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036862:	8d 56 ff             	lea    -0x1(%esi),%edx
c0036865:	c1 fa 05             	sar    $0x5,%edx
c0036868:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c003686c:	8d 57 14             	lea    0x14(%edi),%edx
c003686f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c0036872:	39 da                	cmp    %ebx,%edx
c0036874:	73 34                	jae    c00368aa <__copybits+0x5a>
c0036876:	89 c1                	mov    %eax,%ecx
c0036878:	83 c2 04             	add    $0x4,%edx
c003687b:	8b 42 fc             	mov    -0x4(%edx),%eax
c003687e:	83 c1 04             	add    $0x4,%ecx
c0036881:	39 d3                	cmp    %edx,%ebx
c0036883:	89 41 fc             	mov    %eax,-0x4(%ecx)
c0036886:	77 f0                	ja     c0036878 <__copybits+0x28>
c0036888:	8b 45 08             	mov    0x8(%ebp),%eax
c003688b:	29 fb                	sub    %edi,%ebx
c003688d:	8d 53 eb             	lea    -0x15(%ebx),%edx
c0036890:	c1 ea 02             	shr    $0x2,%edx
c0036893:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c0036897:	39 c6                	cmp    %eax,%esi
c0036899:	76 13                	jbe    c00368ae <__copybits+0x5e>
c003689b:	90                   	nop
c003689c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368a0:	83 c0 04             	add    $0x4,%eax
c00368a3:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c00368aa:	39 c6                	cmp    %eax,%esi
c00368ac:	77 f2                	ja     c00368a0 <__copybits+0x50>
c00368ae:	5b                   	pop    %ebx
c00368af:	5e                   	pop    %esi
c00368b0:	5f                   	pop    %edi
c00368b1:	5d                   	pop    %ebp
c00368b2:	c3                   	ret    
c00368b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00368b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00368c0 <__any_on>:
c00368c0:	55                   	push   %ebp
c00368c1:	89 e5                	mov    %esp,%ebp
c00368c3:	8b 45 08             	mov    0x8(%ebp),%eax
c00368c6:	57                   	push   %edi
c00368c7:	56                   	push   %esi
c00368c8:	53                   	push   %ebx
c00368c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00368cc:	8d 50 14             	lea    0x14(%eax),%edx
c00368cf:	8b 40 10             	mov    0x10(%eax),%eax
c00368d2:	c1 fb 05             	sar    $0x5,%ebx
c00368d5:	39 d8                	cmp    %ebx,%eax
c00368d7:	7d 2f                	jge    c0036908 <__any_on+0x48>
c00368d9:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c00368dc:	39 da                	cmp    %ebx,%edx
c00368de:	73 1d                	jae    c00368fd <__any_on+0x3d>
c00368e0:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00368e3:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c00368e6:	85 db                	test   %ebx,%ebx
c00368e8:	74 0f                	je     c00368f9 <__any_on+0x39>
c00368ea:	eb 44                	jmp    c0036930 <__any_on+0x70>
c00368ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368f0:	83 e8 04             	sub    $0x4,%eax
c00368f3:	8b 08                	mov    (%eax),%ecx
c00368f5:	85 c9                	test   %ecx,%ecx
c00368f7:	75 37                	jne    c0036930 <__any_on+0x70>
c00368f9:	39 c2                	cmp    %eax,%edx
c00368fb:	72 f3                	jb     c00368f0 <__any_on+0x30>
c00368fd:	31 c0                	xor    %eax,%eax
c00368ff:	5b                   	pop    %ebx
c0036900:	5e                   	pop    %esi
c0036901:	5f                   	pop    %edi
c0036902:	5d                   	pop    %ebp
c0036903:	c3                   	ret    
c0036904:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036908:	7e 1e                	jle    c0036928 <__any_on+0x68>
c003690a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c003690d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036910:	83 e1 1f             	and    $0x1f,%ecx
c0036913:	74 c7                	je     c00368dc <__any_on+0x1c>
c0036915:	8b 3b                	mov    (%ebx),%edi
c0036917:	b8 01 00 00 00       	mov    $0x1,%eax
c003691c:	89 fe                	mov    %edi,%esi
c003691e:	d3 ee                	shr    %cl,%esi
c0036920:	d3 e6                	shl    %cl,%esi
c0036922:	39 fe                	cmp    %edi,%esi
c0036924:	75 d9                	jne    c00368ff <__any_on+0x3f>
c0036926:	eb b4                	jmp    c00368dc <__any_on+0x1c>
c0036928:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c003692b:	eb af                	jmp    c00368dc <__any_on+0x1c>
c003692d:	8d 76 00             	lea    0x0(%esi),%esi
c0036930:	5b                   	pop    %ebx
c0036931:	b8 01 00 00 00       	mov    $0x1,%eax
c0036936:	5e                   	pop    %esi
c0036937:	5f                   	pop    %edi
c0036938:	5d                   	pop    %ebp
c0036939:	c3                   	ret    
c003693a:	66 90                	xchg   %ax,%ax
c003693c:	66 90                	xchg   %ax,%ax
c003693e:	66 90                	xchg   %ax,%ax

c0036940 <_sbrk_r>:
c0036940:	55                   	push   %ebp
c0036941:	89 e5                	mov    %esp,%ebp
c0036943:	83 ec 18             	sub    $0x18,%esp
c0036946:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036949:	c7 05 04 30 09 c0 00 	movl   $0x0,0xc0093004
c0036950:	00 00 00 
c0036953:	89 04 24             	mov    %eax,(%esp)
c0036956:	e8 32 98 ff ff       	call   c003018d <sbrk>
c003695b:	83 f8 ff             	cmp    $0xffffffff,%eax
c003695e:	74 08                	je     c0036968 <_sbrk_r+0x28>
c0036960:	c9                   	leave  
c0036961:	c3                   	ret    
c0036962:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036968:	8b 15 04 30 09 c0    	mov    0xc0093004,%edx
c003696e:	85 d2                	test   %edx,%edx
c0036970:	74 ee                	je     c0036960 <_sbrk_r+0x20>
c0036972:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036975:	89 11                	mov    %edx,(%ecx)
c0036977:	c9                   	leave  
c0036978:	c3                   	ret    
c0036979:	66 90                	xchg   %ax,%ax
c003697b:	66 90                	xchg   %ax,%ax
c003697d:	66 90                	xchg   %ax,%ax
c003697f:	90                   	nop

c0036980 <__fpclassifyd>:
c0036980:	55                   	push   %ebp
c0036981:	b8 02 00 00 00       	mov    $0x2,%eax
c0036986:	89 e5                	mov    %esp,%ebp
c0036988:	53                   	push   %ebx
c0036989:	83 ec 0c             	sub    $0xc,%esp
c003698c:	dd 45 08             	fldl   0x8(%ebp)
c003698f:	dd 5d f0             	fstpl  -0x10(%ebp)
c0036992:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0036995:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0036998:	89 d3                	mov    %edx,%ebx
c003699a:	09 cb                	or     %ecx,%ebx
c003699c:	75 0a                	jne    c00369a8 <__fpclassifyd+0x28>
c003699e:	83 c4 0c             	add    $0xc,%esp
c00369a1:	5b                   	pop    %ebx
c00369a2:	5d                   	pop    %ebp
c00369a3:	c3                   	ret    
c00369a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00369a8:	85 d2                	test   %edx,%edx
c00369aa:	0f 94 c2             	sete   %dl
c00369ad:	75 08                	jne    c00369b7 <__fpclassifyd+0x37>
c00369af:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c00369b5:	74 e7                	je     c003699e <__fpclassifyd+0x1e>
c00369b7:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c00369bd:	b8 04 00 00 00       	mov    $0x4,%eax
c00369c2:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c00369c8:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c00369ce:	76 ce                	jbe    c003699e <__fpclassifyd+0x1e>
c00369d0:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c00369d6:	b0 03                	mov    $0x3,%al
c00369d8:	76 c4                	jbe    c003699e <__fpclassifyd+0x1e>
c00369da:	31 c0                	xor    %eax,%eax
c00369dc:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c00369e2:	0f 94 c0             	sete   %al
c00369e5:	21 d0                	and    %edx,%eax
c00369e7:	eb b5                	jmp    c003699e <__fpclassifyd+0x1e>
c00369e9:	66 90                	xchg   %ax,%ax
c00369eb:	66 90                	xchg   %ax,%ax
c00369ed:	66 90                	xchg   %ax,%ax
c00369ef:	90                   	nop

c00369f0 <strcmp>:
c00369f0:	55                   	push   %ebp
c00369f1:	89 e5                	mov    %esp,%ebp
c00369f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00369f6:	8b 55 0c             	mov    0xc(%ebp),%edx
c00369f9:	53                   	push   %ebx
c00369fa:	89 c1                	mov    %eax,%ecx
c00369fc:	09 d1                	or     %edx,%ecx
c00369fe:	83 e1 03             	and    $0x3,%ecx
c0036a01:	75 17                	jne    c0036a1a <strcmp+0x2a>
c0036a03:	8b 08                	mov    (%eax),%ecx
c0036a05:	3b 0a                	cmp    (%edx),%ecx
c0036a07:	74 33                	je     c0036a3c <strcmp+0x4c>
c0036a09:	eb 0f                	jmp    c0036a1a <strcmp+0x2a>
c0036a0b:	90                   	nop
c0036a0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a10:	3a 0a                	cmp    (%edx),%cl
c0036a12:	75 0d                	jne    c0036a21 <strcmp+0x31>
c0036a14:	83 c0 01             	add    $0x1,%eax
c0036a17:	83 c2 01             	add    $0x1,%edx
c0036a1a:	0f b6 08             	movzbl (%eax),%ecx
c0036a1d:	84 c9                	test   %cl,%cl
c0036a1f:	75 ef                	jne    c0036a10 <strcmp+0x20>
c0036a21:	0f b6 00             	movzbl (%eax),%eax
c0036a24:	0f b6 12             	movzbl (%edx),%edx
c0036a27:	5b                   	pop    %ebx
c0036a28:	5d                   	pop    %ebp
c0036a29:	29 d0                	sub    %edx,%eax
c0036a2b:	c3                   	ret    
c0036a2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a30:	83 c0 04             	add    $0x4,%eax
c0036a33:	83 c2 04             	add    $0x4,%edx
c0036a36:	8b 08                	mov    (%eax),%ecx
c0036a38:	3b 0a                	cmp    (%edx),%ecx
c0036a3a:	75 de                	jne    c0036a1a <strcmp+0x2a>
c0036a3c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0036a42:	f7 d1                	not    %ecx
c0036a44:	21 cb                	and    %ecx,%ebx
c0036a46:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c0036a4c:	74 e2                	je     c0036a30 <strcmp+0x40>
c0036a4e:	31 c0                	xor    %eax,%eax
c0036a50:	5b                   	pop    %ebx
c0036a51:	5d                   	pop    %ebp
c0036a52:	c3                   	ret    
c0036a53:	66 90                	xchg   %ax,%ax
c0036a55:	66 90                	xchg   %ax,%ax
c0036a57:	66 90                	xchg   %ax,%ax
c0036a59:	66 90                	xchg   %ax,%ax
c0036a5b:	66 90                	xchg   %ax,%ax
c0036a5d:	66 90                	xchg   %ax,%ax
c0036a5f:	90                   	nop

c0036a60 <strlen>:
c0036a60:	55                   	push   %ebp
c0036a61:	89 e5                	mov    %esp,%ebp
c0036a63:	57                   	push   %edi
c0036a64:	8b 55 08             	mov    0x8(%ebp),%edx
c0036a67:	89 d7                	mov    %edx,%edi
c0036a69:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036a6f:	74 25                	je     c0036a96 <L5>
c0036a71:	8a 0f                	mov    (%edi),%cl
c0036a73:	47                   	inc    %edi
c0036a74:	84 c9                	test   %cl,%cl
c0036a76:	74 56                	je     c0036ace <L15>
c0036a78:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036a7e:	74 16                	je     c0036a96 <L5>
c0036a80:	8a 0f                	mov    (%edi),%cl
c0036a82:	47                   	inc    %edi
c0036a83:	84 c9                	test   %cl,%cl
c0036a85:	74 47                	je     c0036ace <L15>
c0036a87:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036a8d:	74 07                	je     c0036a96 <L5>
c0036a8f:	8a 0f                	mov    (%edi),%cl
c0036a91:	47                   	inc    %edi
c0036a92:	84 c9                	test   %cl,%cl
c0036a94:	74 38                	je     c0036ace <L15>

c0036a96 <L5>:
c0036a96:	83 ef 04             	sub    $0x4,%edi
c0036a99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036aa0 <L10>:
c0036aa0:	83 c7 04             	add    $0x4,%edi
c0036aa3:	8b 0f                	mov    (%edi),%ecx
c0036aa5:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036aab:	f7 d1                	not    %ecx
c0036aad:	21 c8                	and    %ecx,%eax
c0036aaf:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036ab4:	74 ea                	je     c0036aa0 <L10>
c0036ab6:	f7 d1                	not    %ecx
c0036ab8:	47                   	inc    %edi
c0036ab9:	84 c9                	test   %cl,%cl
c0036abb:	74 11                	je     c0036ace <L15>
c0036abd:	47                   	inc    %edi
c0036abe:	c1 e9 08             	shr    $0x8,%ecx
c0036ac1:	84 c9                	test   %cl,%cl
c0036ac3:	74 09                	je     c0036ace <L15>
c0036ac5:	47                   	inc    %edi
c0036ac6:	c1 e9 08             	shr    $0x8,%ecx
c0036ac9:	84 c9                	test   %cl,%cl
c0036acb:	74 01                	je     c0036ace <L15>
c0036acd:	47                   	inc    %edi

c0036ace <L15>:
c0036ace:	29 d7                	sub    %edx,%edi
c0036ad0:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036ad3:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036ad6:	5f                   	pop    %edi
c0036ad7:	c9                   	leave  
c0036ad8:	c3                   	ret    
c0036ad9:	66 90                	xchg   %ax,%ax
c0036adb:	66 90                	xchg   %ax,%ax
c0036add:	66 90                	xchg   %ax,%ax
c0036adf:	90                   	nop

c0036ae0 <__ssprint_r>:
c0036ae0:	55                   	push   %ebp
c0036ae1:	89 e5                	mov    %esp,%ebp
c0036ae3:	57                   	push   %edi
c0036ae4:	56                   	push   %esi
c0036ae5:	53                   	push   %ebx
c0036ae6:	83 ec 2c             	sub    $0x2c,%esp
c0036ae9:	8b 45 10             	mov    0x10(%ebp),%eax
c0036aec:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036aef:	8b 00                	mov    (%eax),%eax
c0036af1:	89 c7                	mov    %eax,%edi
c0036af3:	8b 45 10             	mov    0x10(%ebp),%eax
c0036af6:	8b 40 08             	mov    0x8(%eax),%eax
c0036af9:	85 c0                	test   %eax,%eax
c0036afb:	0f 84 af 01 00 00    	je     c0036cb0 <__ssprint_r+0x1d0>
c0036b01:	31 c9                	xor    %ecx,%ecx
c0036b03:	31 d2                	xor    %edx,%edx
c0036b05:	8b 03                	mov    (%ebx),%eax
c0036b07:	89 ce                	mov    %ecx,%esi
c0036b09:	85 f6                	test   %esi,%esi
c0036b0b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036b0e:	0f 84 ec 00 00 00    	je     c0036c00 <__ssprint_r+0x120>
c0036b14:	8b 53 08             	mov    0x8(%ebx),%edx
c0036b17:	39 d6                	cmp    %edx,%esi
c0036b19:	0f 82 fc 00 00 00    	jb     c0036c1b <__ssprint_r+0x13b>
c0036b1f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036b23:	66 f7 c1 80 04       	test   $0x480,%cx
c0036b28:	0f 84 fa 00 00 00    	je     c0036c28 <__ssprint_r+0x148>
c0036b2e:	8b 53 10             	mov    0x10(%ebx),%edx
c0036b31:	29 d0                	sub    %edx,%eax
c0036b33:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036b36:	8b 43 14             	mov    0x14(%ebx),%eax
c0036b39:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036b3c:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036b3f:	89 c2                	mov    %eax,%edx
c0036b41:	c1 ea 1f             	shr    $0x1f,%edx
c0036b44:	01 d0                	add    %edx,%eax
c0036b46:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036b49:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036b4c:	d1 7d e0             	sarl   -0x20(%ebp)
c0036b4f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036b53:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036b56:	0f 83 34 01 00 00    	jae    c0036c90 <__ssprint_r+0x1b0>
c0036b5c:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036b5f:	80 e5 04             	and    $0x4,%ch
c0036b62:	0f 84 c8 00 00 00    	je     c0036c30 <__ssprint_r+0x150>
c0036b68:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036b6c:	8b 45 08             	mov    0x8(%ebp),%eax
c0036b6f:	89 04 24             	mov    %eax,(%esp)
c0036b72:	e8 e9 e7 ff ff       	call   c0035360 <_malloc_r>
c0036b77:	85 c0                	test   %eax,%eax
c0036b79:	89 c2                	mov    %eax,%edx
c0036b7b:	0f 84 e1 00 00 00    	je     c0036c62 <__ssprint_r+0x182>
c0036b81:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036b84:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036b87:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036b8b:	8b 43 10             	mov    0x10(%ebx),%eax
c0036b8e:	89 14 24             	mov    %edx,(%esp)
c0036b91:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036b95:	e8 0a b2 ff ff       	call   c0031da4 <memcpy>
c0036b9a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036b9e:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036ba1:	66 25 7f fb          	and    $0xfb7f,%ax
c0036ba5:	0c 80                	or     $0x80,%al
c0036ba7:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036bab:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036bae:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036bb1:	89 53 10             	mov    %edx,0x10(%ebx)
c0036bb4:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036bb7:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036bba:	01 d0                	add    %edx,%eax
c0036bbc:	89 03                	mov    %eax,(%ebx)
c0036bbe:	89 f2                	mov    %esi,%edx
c0036bc0:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036bc3:	89 f1                	mov    %esi,%ecx
c0036bc5:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036bc9:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036bcc:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036bcf:	89 04 24             	mov    %eax,(%esp)
c0036bd2:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036bd5:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036bd9:	e8 22 13 00 00       	call   c0037f00 <memmove>
c0036bde:	8b 03                	mov    (%ebx),%eax
c0036be0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036be3:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036be6:	29 53 08             	sub    %edx,0x8(%ebx)
c0036be9:	01 c8                	add    %ecx,%eax
c0036beb:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036bee:	89 03                	mov    %eax,(%ebx)
c0036bf0:	8b 51 08             	mov    0x8(%ecx),%edx
c0036bf3:	29 f2                	sub    %esi,%edx
c0036bf5:	85 d2                	test   %edx,%edx
c0036bf7:	89 51 08             	mov    %edx,0x8(%ecx)
c0036bfa:	0f 84 98 00 00 00    	je     c0036c98 <__ssprint_r+0x1b8>
c0036c00:	8b 77 04             	mov    0x4(%edi),%esi
c0036c03:	83 c7 08             	add    $0x8,%edi
c0036c06:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036c09:	85 f6                	test   %esi,%esi
c0036c0b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036c0e:	74 f0                	je     c0036c00 <__ssprint_r+0x120>
c0036c10:	8b 53 08             	mov    0x8(%ebx),%edx
c0036c13:	39 d6                	cmp    %edx,%esi
c0036c15:	0f 83 04 ff ff ff    	jae    c0036b1f <__ssprint_r+0x3f>
c0036c1b:	89 f2                	mov    %esi,%edx
c0036c1d:	89 f1                	mov    %esi,%ecx
c0036c1f:	eb a4                	jmp    c0036bc5 <__ssprint_r+0xe5>
c0036c21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036c28:	89 d1                	mov    %edx,%ecx
c0036c2a:	eb 99                	jmp    c0036bc5 <__ssprint_r+0xe5>
c0036c2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036c30:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036c34:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036c37:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c3b:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c3e:	89 04 24             	mov    %eax,(%esp)
c0036c41:	e8 4a 13 00 00       	call   c0037f90 <_realloc_r>
c0036c46:	85 c0                	test   %eax,%eax
c0036c48:	89 c2                	mov    %eax,%edx
c0036c4a:	0f 85 5b ff ff ff    	jne    c0036bab <__ssprint_r+0xcb>
c0036c50:	8b 43 10             	mov    0x10(%ebx),%eax
c0036c53:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c57:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c5a:	89 04 24             	mov    %eax,(%esp)
c0036c5d:	e8 3e 10 00 00       	call   c0037ca0 <_free_r>
c0036c62:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c65:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036c6b:	8b 45 10             	mov    0x10(%ebp),%eax
c0036c6e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036c73:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036c7a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036c81:	83 c4 2c             	add    $0x2c,%esp
c0036c84:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036c89:	5b                   	pop    %ebx
c0036c8a:	5e                   	pop    %esi
c0036c8b:	5f                   	pop    %edi
c0036c8c:	5d                   	pop    %ebp
c0036c8d:	c3                   	ret    
c0036c8e:	66 90                	xchg   %ax,%ax
c0036c90:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036c93:	e9 c7 fe ff ff       	jmp    c0036b5f <__ssprint_r+0x7f>
c0036c98:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c0036c9f:	83 c4 2c             	add    $0x2c,%esp
c0036ca2:	31 c0                	xor    %eax,%eax
c0036ca4:	5b                   	pop    %ebx
c0036ca5:	5e                   	pop    %esi
c0036ca6:	5f                   	pop    %edi
c0036ca7:	5d                   	pop    %ebp
c0036ca8:	c3                   	ret    
c0036ca9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036cb0:	8b 45 10             	mov    0x10(%ebp),%eax
c0036cb3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036cba:	83 c4 2c             	add    $0x2c,%esp
c0036cbd:	31 c0                	xor    %eax,%eax
c0036cbf:	5b                   	pop    %ebx
c0036cc0:	5e                   	pop    %esi
c0036cc1:	5f                   	pop    %edi
c0036cc2:	5d                   	pop    %ebp
c0036cc3:	c3                   	ret    
c0036cc4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036cca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0036cd0 <_svfiprintf_r>:
c0036cd0:	55                   	push   %ebp
c0036cd1:	89 e5                	mov    %esp,%ebp
c0036cd3:	57                   	push   %edi
c0036cd4:	56                   	push   %esi
c0036cd5:	53                   	push   %ebx
c0036cd6:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c0036cdc:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036cdf:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0036ce3:	74 0b                	je     c0036cf0 <_svfiprintf_r+0x20>
c0036ce5:	8b 50 10             	mov    0x10(%eax),%edx
c0036ce8:	85 d2                	test   %edx,%edx
c0036cea:	0f 84 1c 0d 00 00    	je     c0037a0c <_svfiprintf_r+0xd3c>
c0036cf0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036cf3:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0036cf6:	89 c6                	mov    %eax,%esi
c0036cf8:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0036cfe:	29 d8                	sub    %ebx,%eax
c0036d00:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0036d07:	00 00 00 
c0036d0a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0036d11:	00 00 00 
c0036d14:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0036d1b:	00 00 00 
c0036d1e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0036d25:	00 00 00 
c0036d28:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c0036d2e:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d31:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036d34:	0f b6 00             	movzbl (%eax),%eax
c0036d37:	84 c0                	test   %al,%al
c0036d39:	74 58                	je     c0036d93 <_svfiprintf_r+0xc3>
c0036d3b:	3c 25                	cmp    $0x25,%al
c0036d3d:	75 13                	jne    c0036d52 <_svfiprintf_r+0x82>
c0036d3f:	eb 52                	jmp    c0036d93 <_svfiprintf_r+0xc3>
c0036d41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036d48:	84 c0                	test   %al,%al
c0036d4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036d50:	74 0a                	je     c0036d5c <_svfiprintf_r+0x8c>
c0036d52:	83 c3 01             	add    $0x1,%ebx
c0036d55:	0f b6 03             	movzbl (%ebx),%eax
c0036d58:	3c 25                	cmp    $0x25,%al
c0036d5a:	75 ec                	jne    c0036d48 <_svfiprintf_r+0x78>
c0036d5c:	89 df                	mov    %ebx,%edi
c0036d5e:	2b 7d 10             	sub    0x10(%ebp),%edi
c0036d61:	74 30                	je     c0036d93 <_svfiprintf_r+0xc3>
c0036d63:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d66:	83 c6 08             	add    $0x8,%esi
c0036d69:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036d6c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0036d72:	89 46 f8             	mov    %eax,-0x8(%esi)
c0036d75:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036d7b:	83 c0 01             	add    $0x1,%eax
c0036d7e:	83 f8 07             	cmp    $0x7,%eax
c0036d81:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036d87:	0f 8f eb 0a 00 00    	jg     c0037878 <_svfiprintf_r+0xba8>
c0036d8d:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0036d93:	80 3b 00             	cmpb   $0x0,(%ebx)
c0036d96:	0f 84 11 09 00 00    	je     c00376ad <_svfiprintf_r+0x9dd>
c0036d9c:	8d 43 01             	lea    0x1(%ebx),%eax
c0036d9f:	31 ff                	xor    %edi,%edi
c0036da1:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036da8:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0036daf:	ff ff ff 
c0036db2:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0036db9:	00 00 00 
c0036dbc:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0036dc3:	00 00 00 
c0036dc6:	8d 50 01             	lea    0x1(%eax),%edx
c0036dc9:	0f be 00             	movsbl (%eax),%eax
c0036dcc:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0036dcf:	83 f9 58             	cmp    $0x58,%ecx
c0036dd2:	0f 87 63 03 00 00    	ja     c003713b <_svfiprintf_r+0x46b>
c0036dd8:	ff 24 8d e8 92 03 c0 	jmp    *-0x3ffc6d18(,%ecx,4)
c0036ddf:	90                   	nop
c0036de0:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036de7:	89 d0                	mov    %edx,%eax
c0036de9:	eb db                	jmp    c0036dc6 <_svfiprintf_r+0xf6>
c0036deb:	8b 45 14             	mov    0x14(%ebp),%eax
c0036dee:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0036df1:	8b 00                	mov    (%eax),%eax
c0036df3:	83 c3 04             	add    $0x4,%ebx
c0036df6:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0036df9:	85 c0                	test   %eax,%eax
c0036dfb:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0036e01:	79 e4                	jns    c0036de7 <_svfiprintf_r+0x117>
c0036e03:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0036e09:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0036e10:	89 d0                	mov    %edx,%eax
c0036e12:	eb b2                	jmp    c0036dc6 <_svfiprintf_r+0xf6>
c0036e14:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0036e19:	89 d0                	mov    %edx,%eax
c0036e1b:	eb a9                	jmp    c0036dc6 <_svfiprintf_r+0xf6>
c0036e1d:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e20:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0036e27:	89 55 10             	mov    %edx,0x10(%ebp)
c0036e2a:	ba 02 00 00 00       	mov    $0x2,%edx
c0036e2f:	8b 08                	mov    (%eax),%ecx
c0036e31:	83 c0 04             	add    $0x4,%eax
c0036e34:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0036e3b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0036e42:	89 45 14             	mov    %eax,0x14(%ebp)
c0036e45:	c7 85 44 ff ff ff 83 	movl   $0xc0038f83,-0xbc(%ebp)
c0036e4c:	8f 03 c0 
c0036e4f:	90                   	nop
c0036e50:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036e57:	31 ff                	xor    %edi,%edi
c0036e59:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c0036e5f:	89 d8                	mov    %ebx,%eax
c0036e61:	24 7f                	and    $0x7f,%al
c0036e63:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c0036e6a:	0f 48 c3             	cmovs  %ebx,%eax
c0036e6d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0036e73:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036e79:	85 c0                	test   %eax,%eax
c0036e7b:	75 08                	jne    c0036e85 <_svfiprintf_r+0x1b5>
c0036e7d:	85 c9                	test   %ecx,%ecx
c0036e7f:	0f 84 03 08 00 00    	je     c0037688 <_svfiprintf_r+0x9b8>
c0036e85:	80 fa 01             	cmp    $0x1,%dl
c0036e88:	0f 84 8a 0a 00 00    	je     c0037918 <_svfiprintf_r+0xc48>
c0036e8e:	80 fa 02             	cmp    $0x2,%dl
c0036e91:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0036e94:	0f 85 86 01 00 00    	jne    c0037020 <_svfiprintf_r+0x350>
c0036e9a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0036ea0:	89 c8                	mov    %ecx,%eax
c0036ea2:	83 eb 01             	sub    $0x1,%ebx
c0036ea5:	83 e0 0f             	and    $0xf,%eax
c0036ea8:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0036eac:	c1 e9 04             	shr    $0x4,%ecx
c0036eaf:	85 c9                	test   %ecx,%ecx
c0036eb1:	88 03                	mov    %al,(%ebx)
c0036eb3:	75 eb                	jne    c0036ea0 <_svfiprintf_r+0x1d0>
c0036eb5:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036eb8:	29 d8                	sub    %ebx,%eax
c0036eba:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0036ec0:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036ec6:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c0036ecc:	39 c1                	cmp    %eax,%ecx
c0036ece:	0f 4d c1             	cmovge %ecx,%eax
c0036ed1:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036ed7:	89 f8                	mov    %edi,%eax
c0036ed9:	3c 01                	cmp    $0x1,%al
c0036edb:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0036ee2:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0036ee8:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c0036eee:	89 d0                	mov    %edx,%eax
c0036ef0:	89 cf                	mov    %ecx,%edi
c0036ef2:	83 c0 02             	add    $0x2,%eax
c0036ef5:	83 e7 02             	and    $0x2,%edi
c0036ef8:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c0036efe:	89 cf                	mov    %ecx,%edi
c0036f00:	0f 44 c2             	cmove  %edx,%eax
c0036f03:	81 e7 84 00 00 00    	and    $0x84,%edi
c0036f09:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f0f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0036f15:	0f 85 cd 04 00 00    	jne    c00373e8 <_svfiprintf_r+0x718>
c0036f1b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0036f21:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0036f27:	85 ff                	test   %edi,%edi
c0036f29:	0f 8e b9 04 00 00    	jle    c00373e8 <_svfiprintf_r+0x718>
c0036f2f:	83 ff 10             	cmp    $0x10,%edi
c0036f32:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036f38:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036f3e:	7e 7c                	jle    c0036fbc <_svfiprintf_r+0x2ec>
c0036f40:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0036f46:	89 f1                	mov    %esi,%ecx
c0036f48:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036f4b:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036f4e:	eb 08                	jmp    c0036f58 <_svfiprintf_r+0x288>
c0036f50:	83 ef 10             	sub    $0x10,%edi
c0036f53:	83 ff 10             	cmp    $0x10,%edi
c0036f56:	7e 5c                	jle    c0036fb4 <_svfiprintf_r+0x2e4>
c0036f58:	83 c0 01             	add    $0x1,%eax
c0036f5b:	83 c2 10             	add    $0x10,%edx
c0036f5e:	c7 01 5c 94 03 c0    	movl   $0xc003945c,(%ecx)
c0036f64:	83 c1 08             	add    $0x8,%ecx
c0036f67:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0036f6e:	83 f8 07             	cmp    $0x7,%eax
c0036f71:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036f77:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036f7d:	7e d1                	jle    c0036f50 <_svfiprintf_r+0x280>
c0036f7f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0036f85:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036f89:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036f8d:	89 1c 24             	mov    %ebx,(%esp)
c0036f90:	e8 4b fb ff ff       	call   c0036ae0 <__ssprint_r>
c0036f95:	85 c0                	test   %eax,%eax
c0036f97:	0f 85 3b 07 00 00    	jne    c00376d8 <_svfiprintf_r+0xa08>
c0036f9d:	83 ef 10             	sub    $0x10,%edi
c0036fa0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036fa6:	83 ff 10             	cmp    $0x10,%edi
c0036fa9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036faf:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0036fb2:	7f a4                	jg     c0036f58 <_svfiprintf_r+0x288>
c0036fb4:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c0036fba:	89 ce                	mov    %ecx,%esi
c0036fbc:	83 c0 01             	add    $0x1,%eax
c0036fbf:	01 fa                	add    %edi,%edx
c0036fc1:	c7 06 5c 94 03 c0    	movl   $0xc003945c,(%esi)
c0036fc7:	83 c6 08             	add    $0x8,%esi
c0036fca:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036fcd:	83 f8 07             	cmp    $0x7,%eax
c0036fd0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036fd6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036fdc:	0f 8e 12 04 00 00    	jle    c00373f4 <_svfiprintf_r+0x724>
c0036fe2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0036fe8:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036fec:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036fef:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036ff3:	8b 45 08             	mov    0x8(%ebp),%eax
c0036ff6:	89 04 24             	mov    %eax,(%esp)
c0036ff9:	e8 e2 fa ff ff       	call   c0036ae0 <__ssprint_r>
c0036ffe:	85 c0                	test   %eax,%eax
c0037000:	0f 85 d2 06 00 00    	jne    c00376d8 <_svfiprintf_r+0xa08>
c0037006:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003700c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003700f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037015:	e9 da 03 00 00       	jmp    c00373f4 <_svfiprintf_r+0x724>
c003701a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037020:	89 c8                	mov    %ecx,%eax
c0037022:	83 eb 01             	sub    $0x1,%ebx
c0037025:	83 e0 07             	and    $0x7,%eax
c0037028:	c1 e9 03             	shr    $0x3,%ecx
c003702b:	83 c0 30             	add    $0x30,%eax
c003702e:	85 c9                	test   %ecx,%ecx
c0037030:	88 03                	mov    %al,(%ebx)
c0037032:	75 ec                	jne    c0037020 <_svfiprintf_r+0x350>
c0037034:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c003703b:	89 da                	mov    %ebx,%edx
c003703d:	0f 84 72 fe ff ff    	je     c0036eb5 <_svfiprintf_r+0x1e5>
c0037043:	3c 30                	cmp    $0x30,%al
c0037045:	0f 84 6a fe ff ff    	je     c0036eb5 <_svfiprintf_r+0x1e5>
c003704b:	83 eb 01             	sub    $0x1,%ebx
c003704e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037051:	29 d8                	sub    %ebx,%eax
c0037053:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0037057:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003705d:	e9 5e fe ff ff       	jmp    c0036ec0 <_svfiprintf_r+0x1f0>
c0037062:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037069:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037070:	89 55 10             	mov    %edx,0x10(%ebp)
c0037073:	8b 45 14             	mov    0x14(%ebp),%eax
c0037076:	0f 85 48 01 00 00    	jne    c00371c4 <_svfiprintf_r+0x4f4>
c003707c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037083:	0f 84 3b 01 00 00    	je     c00371c4 <_svfiprintf_r+0x4f4>
c0037089:	0f b7 08             	movzwl (%eax),%ecx
c003708c:	83 c0 04             	add    $0x4,%eax
c003708f:	31 d2                	xor    %edx,%edx
c0037091:	89 45 14             	mov    %eax,0x14(%ebp)
c0037094:	e9 b7 fd ff ff       	jmp    c0036e50 <_svfiprintf_r+0x180>
c0037099:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00370a0:	89 f8                	mov    %edi,%eax
c00370a2:	89 55 10             	mov    %edx,0x10(%ebp)
c00370a5:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00370ab:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00370b2:	8b 45 14             	mov    0x14(%ebp),%eax
c00370b5:	75 0d                	jne    c00370c4 <_svfiprintf_r+0x3f4>
c00370b7:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00370be:	0f 85 f2 08 00 00    	jne    c00379b6 <_svfiprintf_r+0xce6>
c00370c4:	8b 08                	mov    (%eax),%ecx
c00370c6:	83 c0 04             	add    $0x4,%eax
c00370c9:	89 45 14             	mov    %eax,0x14(%ebp)
c00370cc:	85 c9                	test   %ecx,%ecx
c00370ce:	0f 88 f3 08 00 00    	js     c00379c7 <_svfiprintf_r+0xcf7>
c00370d4:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00370db:	ba 01 00 00 00       	mov    $0x1,%edx
c00370e0:	e9 74 fd ff ff       	jmp    c0036e59 <_svfiprintf_r+0x189>
c00370e5:	0f be 02             	movsbl (%edx),%eax
c00370e8:	8d 5a 01             	lea    0x1(%edx),%ebx
c00370eb:	83 f8 2a             	cmp    $0x2a,%eax
c00370ee:	0f 84 af 09 00 00    	je     c0037aa3 <_svfiprintf_r+0xdd3>
c00370f4:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00370f7:	31 d2                	xor    %edx,%edx
c00370f9:	83 f9 09             	cmp    $0x9,%ecx
c00370fc:	0f 87 90 09 00 00    	ja     c0037a92 <_svfiprintf_r+0xdc2>
c0037102:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037108:	8d 04 92             	lea    (%edx,%edx,4),%eax
c003710b:	83 c3 01             	add    $0x1,%ebx
c003710e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037111:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037115:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037118:	83 f9 09             	cmp    $0x9,%ecx
c003711b:	76 eb                	jbe    c0037108 <_svfiprintf_r+0x438>
c003711d:	85 d2                	test   %edx,%edx
c003711f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0037124:	0f 48 d1             	cmovs  %ecx,%edx
c0037127:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003712a:	83 f9 58             	cmp    $0x58,%ecx
c003712d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0037133:	89 da                	mov    %ebx,%edx
c0037135:	0f 86 9d fc ff ff    	jbe    c0036dd8 <_svfiprintf_r+0x108>
c003713b:	89 fb                	mov    %edi,%ebx
c003713d:	85 c0                	test   %eax,%eax
c003713f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037142:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037148:	0f 84 5f 05 00 00    	je     c00376ad <_svfiprintf_r+0x9dd>
c003714e:	88 45 80             	mov    %al,-0x80(%ebp)
c0037151:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037154:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003715b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037162:	00 00 00 
c0037165:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003716c:	00 00 00 
c003716f:	e9 5a 01 00 00       	jmp    c00372ce <_svfiprintf_r+0x5fe>
c0037174:	31 db                	xor    %ebx,%ebx
c0037176:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037180:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c0037183:	83 c2 01             	add    $0x1,%edx
c0037186:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c0037189:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c003718d:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037190:	83 f9 09             	cmp    $0x9,%ecx
c0037193:	76 eb                	jbe    c0037180 <_svfiprintf_r+0x4b0>
c0037195:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c003719b:	e9 2c fc ff ff       	jmp    c0036dcc <_svfiprintf_r+0xfc>
c00371a0:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c00371a7:	00 00 00 
c00371aa:	89 d0                	mov    %edx,%eax
c00371ac:	e9 15 fc ff ff       	jmp    c0036dc6 <_svfiprintf_r+0xf6>
c00371b1:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00371b8:	89 55 10             	mov    %edx,0x10(%ebp)
c00371bb:	8b 45 14             	mov    0x14(%ebp),%eax
c00371be:	0f 84 b8 fe ff ff    	je     c003707c <_svfiprintf_r+0x3ac>
c00371c4:	8b 08                	mov    (%eax),%ecx
c00371c6:	83 c0 04             	add    $0x4,%eax
c00371c9:	31 d2                	xor    %edx,%edx
c00371cb:	89 45 14             	mov    %eax,0x14(%ebp)
c00371ce:	e9 7d fc ff ff       	jmp    c0036e50 <_svfiprintf_r+0x180>
c00371d3:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00371da:	89 f8                	mov    %edi,%eax
c00371dc:	89 55 10             	mov    %edx,0x10(%ebp)
c00371df:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00371e5:	0f 85 a2 07 00 00    	jne    c003798d <_svfiprintf_r+0xcbd>
c00371eb:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00371f2:	0f 84 95 07 00 00    	je     c003798d <_svfiprintf_r+0xcbd>
c00371f8:	8b 45 14             	mov    0x14(%ebp),%eax
c00371fb:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0037202:	8b 00                	mov    (%eax),%eax
c0037204:	66 89 18             	mov    %bx,(%eax)
c0037207:	8b 45 14             	mov    0x14(%ebp),%eax
c003720a:	83 c0 04             	add    $0x4,%eax
c003720d:	89 45 14             	mov    %eax,0x14(%ebp)
c0037210:	e9 19 fb ff ff       	jmp    c0036d2e <_svfiprintf_r+0x5e>
c0037215:	89 fb                	mov    %edi,%ebx
c0037217:	89 55 10             	mov    %edx,0x10(%ebp)
c003721a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037220:	c7 85 44 ff ff ff 83 	movl   $0xc0038f83,-0xbc(%ebp)
c0037227:	8f 03 c0 
c003722a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037231:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037234:	75 0d                	jne    c0037243 <_svfiprintf_r+0x573>
c0037236:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003723d:	0f 85 65 07 00 00    	jne    c00379a8 <_svfiprintf_r+0xcd8>
c0037243:	8b 0b                	mov    (%ebx),%ecx
c0037245:	83 c3 04             	add    $0x4,%ebx
c0037248:	89 5d 14             	mov    %ebx,0x14(%ebp)
c003724b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037252:	ba 02 00 00 00       	mov    $0x2,%edx
c0037257:	0f 84 f3 fb ff ff    	je     c0036e50 <_svfiprintf_r+0x180>
c003725d:	85 c9                	test   %ecx,%ecx
c003725f:	0f 84 eb fb ff ff    	je     c0036e50 <_svfiprintf_r+0x180>
c0037265:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c003726c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c0037272:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0037279:	e9 d2 fb ff ff       	jmp    c0036e50 <_svfiprintf_r+0x180>
c003727e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c0037285:	89 d0                	mov    %edx,%eax
c0037287:	e9 3a fb ff ff       	jmp    c0036dc6 <_svfiprintf_r+0xf6>
c003728c:	89 f8                	mov    %edi,%eax
c003728e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037291:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037297:	e9 0f fe ff ff       	jmp    c00370ab <_svfiprintf_r+0x3db>
c003729c:	8b 45 14             	mov    0x14(%ebp),%eax
c003729f:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00372a2:	89 55 10             	mov    %edx,0x10(%ebp)
c00372a5:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00372ac:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00372b3:	00 00 00 
c00372b6:	8b 00                	mov    (%eax),%eax
c00372b8:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00372bf:	00 00 00 
c00372c2:	88 45 80             	mov    %al,-0x80(%ebp)
c00372c5:	8b 45 14             	mov    0x14(%ebp),%eax
c00372c8:	83 c0 04             	add    $0x4,%eax
c00372cb:	89 45 14             	mov    %eax,0x14(%ebp)
c00372ce:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00372d5:	00 00 00 
c00372d8:	e9 05 fc ff ff       	jmp    c0036ee2 <_svfiprintf_r+0x212>
c00372dd:	89 fb                	mov    %edi,%ebx
c00372df:	89 55 10             	mov    %edx,0x10(%ebp)
c00372e2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00372e8:	c7 85 44 ff ff ff 72 	movl   $0xc0038f72,-0xbc(%ebp)
c00372ef:	8f 03 c0 
c00372f2:	e9 33 ff ff ff       	jmp    c003722a <_svfiprintf_r+0x55a>
c00372f7:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00372fe:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037305:	89 55 10             	mov    %edx,0x10(%ebp)
c0037308:	8b 45 14             	mov    0x14(%ebp),%eax
c003730b:	75 39                	jne    c0037346 <_svfiprintf_r+0x676>
c003730d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037314:	74 30                	je     c0037346 <_svfiprintf_r+0x676>
c0037316:	0f b7 08             	movzwl (%eax),%ecx
c0037319:	83 c0 04             	add    $0x4,%eax
c003731c:	ba 01 00 00 00       	mov    $0x1,%edx
c0037321:	89 45 14             	mov    %eax,0x14(%ebp)
c0037324:	e9 27 fb ff ff       	jmp    c0036e50 <_svfiprintf_r+0x180>
c0037329:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0037330:	89 d0                	mov    %edx,%eax
c0037332:	e9 8f fa ff ff       	jmp    c0036dc6 <_svfiprintf_r+0xf6>
c0037337:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003733e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037341:	8b 45 14             	mov    0x14(%ebp),%eax
c0037344:	74 c7                	je     c003730d <_svfiprintf_r+0x63d>
c0037346:	8b 08                	mov    (%eax),%ecx
c0037348:	83 c0 04             	add    $0x4,%eax
c003734b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037350:	89 45 14             	mov    %eax,0x14(%ebp)
c0037353:	e9 f8 fa ff ff       	jmp    c0036e50 <_svfiprintf_r+0x180>
c0037358:	8b 45 14             	mov    0x14(%ebp),%eax
c003735b:	89 55 10             	mov    %edx,0x10(%ebp)
c003735e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037365:	8b 18                	mov    (%eax),%ebx
c0037367:	8d 50 04             	lea    0x4(%eax),%edx
c003736a:	85 db                	test   %ebx,%ebx
c003736c:	0f 84 cc 06 00 00    	je     c0037a3e <_svfiprintf_r+0xd6e>
c0037372:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037378:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c003737e:	85 ff                	test   %edi,%edi
c0037380:	0f 88 59 06 00 00    	js     c00379df <_svfiprintf_r+0xd0f>
c0037386:	89 7c 24 08          	mov    %edi,0x8(%esp)
c003738a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037391:	00 
c0037392:	89 1c 24             	mov    %ebx,(%esp)
c0037395:	e8 06 e7 ff ff       	call   c0035aa0 <memchr>
c003739a:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c00373a0:	85 c0                	test   %eax,%eax
c00373a2:	0f 84 c5 06 00 00    	je     c0037a6d <_svfiprintf_r+0xd9d>
c00373a8:	29 d8                	sub    %ebx,%eax
c00373aa:	39 f8                	cmp    %edi,%eax
c00373ac:	0f 4f c7             	cmovg  %edi,%eax
c00373af:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00373b6:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00373bc:	89 55 14             	mov    %edx,0x14(%ebp)
c00373bf:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00373c6:	00 00 00 
c00373c9:	e9 f2 fa ff ff       	jmp    c0036ec0 <_svfiprintf_r+0x1f0>
c00373ce:	89 f8                	mov    %edi,%eax
c00373d0:	84 c0                	test   %al,%al
c00373d2:	b8 20 00 00 00       	mov    $0x20,%eax
c00373d7:	0f 44 f8             	cmove  %eax,%edi
c00373da:	89 d0                	mov    %edx,%eax
c00373dc:	e9 e5 f9 ff ff       	jmp    c0036dc6 <_svfiprintf_r+0xf6>
c00373e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00373e8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00373ee:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00373f4:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c00373fb:	74 2e                	je     c003742b <_svfiprintf_r+0x75b>
c00373fd:	83 c0 01             	add    $0x1,%eax
c0037400:	83 c2 01             	add    $0x1,%edx
c0037403:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0037409:	83 c6 08             	add    $0x8,%esi
c003740c:	89 4e f8             	mov    %ecx,-0x8(%esi)
c003740f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037416:	83 f8 07             	cmp    $0x7,%eax
c0037419:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003741f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037425:	0f 8f b5 04 00 00    	jg     c00378e0 <_svfiprintf_r+0xc10>
c003742b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0037431:	85 c9                	test   %ecx,%ecx
c0037433:	74 2e                	je     c0037463 <_svfiprintf_r+0x793>
c0037435:	83 c0 01             	add    $0x1,%eax
c0037438:	83 c2 02             	add    $0x2,%edx
c003743b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0037441:	83 c6 08             	add    $0x8,%esi
c0037444:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037447:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c003744e:	83 f8 07             	cmp    $0x7,%eax
c0037451:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037457:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003745d:	0f 8f 45 04 00 00    	jg     c00378a8 <_svfiprintf_r+0xbd8>
c0037463:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c003746a:	00 00 00 
c003746d:	0f 84 9d 02 00 00    	je     c0037710 <_svfiprintf_r+0xa40>
c0037473:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037479:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c003747f:	85 ff                	test   %edi,%edi
c0037481:	0f 8e e1 00 00 00    	jle    c0037568 <_svfiprintf_r+0x898>
c0037487:	83 ff 10             	cmp    $0x10,%edi
c003748a:	0f 8e 7c 00 00 00    	jle    c003750c <_svfiprintf_r+0x83c>
c0037490:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c0037496:	89 f1                	mov    %esi,%ecx
c0037498:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003749b:	8b 75 0c             	mov    0xc(%ebp),%esi
c003749e:	eb 08                	jmp    c00374a8 <_svfiprintf_r+0x7d8>
c00374a0:	83 ef 10             	sub    $0x10,%edi
c00374a3:	83 ff 10             	cmp    $0x10,%edi
c00374a6:	7e 5c                	jle    c0037504 <_svfiprintf_r+0x834>
c00374a8:	83 c0 01             	add    $0x1,%eax
c00374ab:	83 c2 10             	add    $0x10,%edx
c00374ae:	c7 01 4c 94 03 c0    	movl   $0xc003944c,(%ecx)
c00374b4:	83 c1 08             	add    $0x8,%ecx
c00374b7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00374be:	83 f8 07             	cmp    $0x7,%eax
c00374c1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00374c7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00374cd:	7e d1                	jle    c00374a0 <_svfiprintf_r+0x7d0>
c00374cf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00374d5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00374d9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00374dd:	89 1c 24             	mov    %ebx,(%esp)
c00374e0:	e8 fb f5 ff ff       	call   c0036ae0 <__ssprint_r>
c00374e5:	85 c0                	test   %eax,%eax
c00374e7:	0f 85 eb 01 00 00    	jne    c00376d8 <_svfiprintf_r+0xa08>
c00374ed:	83 ef 10             	sub    $0x10,%edi
c00374f0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00374f6:	83 ff 10             	cmp    $0x10,%edi
c00374f9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00374ff:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037502:	7f a4                	jg     c00374a8 <_svfiprintf_r+0x7d8>
c0037504:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003750a:	89 ce                	mov    %ecx,%esi
c003750c:	83 c0 01             	add    $0x1,%eax
c003750f:	01 fa                	add    %edi,%edx
c0037511:	c7 06 4c 94 03 c0    	movl   $0xc003944c,(%esi)
c0037517:	83 c6 08             	add    $0x8,%esi
c003751a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003751d:	83 f8 07             	cmp    $0x7,%eax
c0037520:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037526:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003752c:	7e 3a                	jle    c0037568 <_svfiprintf_r+0x898>
c003752e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037534:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037538:	8b 45 0c             	mov    0xc(%ebp),%eax
c003753b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003753f:	8b 45 08             	mov    0x8(%ebp),%eax
c0037542:	89 04 24             	mov    %eax,(%esp)
c0037545:	e8 96 f5 ff ff       	call   c0036ae0 <__ssprint_r>
c003754a:	85 c0                	test   %eax,%eax
c003754c:	0f 85 86 01 00 00    	jne    c00376d8 <_svfiprintf_r+0xa08>
c0037552:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037558:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003755b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037561:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037568:	89 1e                	mov    %ebx,(%esi)
c003756a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c0037570:	83 c0 01             	add    $0x1,%eax
c0037573:	83 c6 08             	add    $0x8,%esi
c0037576:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003757c:	89 5e fc             	mov    %ebx,-0x4(%esi)
c003757f:	01 da                	add    %ebx,%edx
c0037581:	83 f8 07             	cmp    $0x7,%eax
c0037584:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003758a:	0f 8f 80 02 00 00    	jg     c0037810 <_svfiprintf_r+0xb40>
c0037590:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c0037597:	0f 84 b9 00 00 00    	je     c0037656 <_svfiprintf_r+0x986>
c003759d:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c00375a3:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c00375a9:	85 ff                	test   %edi,%edi
c00375ab:	0f 8e a5 00 00 00    	jle    c0037656 <_svfiprintf_r+0x986>
c00375b1:	83 ff 10             	cmp    $0x10,%edi
c00375b4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00375ba:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00375c0:	7e 71                	jle    c0037633 <_svfiprintf_r+0x963>
c00375c2:	89 f1                	mov    %esi,%ecx
c00375c4:	8b 75 08             	mov    0x8(%ebp),%esi
c00375c7:	eb 0f                	jmp    c00375d8 <_svfiprintf_r+0x908>
c00375c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00375d0:	83 ef 10             	sub    $0x10,%edi
c00375d3:	83 ff 10             	cmp    $0x10,%edi
c00375d6:	7e 59                	jle    c0037631 <_svfiprintf_r+0x961>
c00375d8:	83 c0 01             	add    $0x1,%eax
c00375db:	83 c2 10             	add    $0x10,%edx
c00375de:	c7 01 5c 94 03 c0    	movl   $0xc003945c,(%ecx)
c00375e4:	83 c1 08             	add    $0x8,%ecx
c00375e7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00375ee:	83 f8 07             	cmp    $0x7,%eax
c00375f1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00375f7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00375fd:	7e d1                	jle    c00375d0 <_svfiprintf_r+0x900>
c00375ff:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037602:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0037606:	89 34 24             	mov    %esi,(%esp)
c0037609:	89 44 24 04          	mov    %eax,0x4(%esp)
c003760d:	e8 ce f4 ff ff       	call   c0036ae0 <__ssprint_r>
c0037612:	85 c0                	test   %eax,%eax
c0037614:	0f 85 be 00 00 00    	jne    c00376d8 <_svfiprintf_r+0xa08>
c003761a:	83 ef 10             	sub    $0x10,%edi
c003761d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037623:	83 ff 10             	cmp    $0x10,%edi
c0037626:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003762c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c003762f:	7f a7                	jg     c00375d8 <_svfiprintf_r+0x908>
c0037631:	89 ce                	mov    %ecx,%esi
c0037633:	83 c0 01             	add    $0x1,%eax
c0037636:	01 fa                	add    %edi,%edx
c0037638:	83 f8 07             	cmp    $0x7,%eax
c003763b:	c7 06 5c 94 03 c0    	movl   $0xc003945c,(%esi)
c0037641:	89 7e 04             	mov    %edi,0x4(%esi)
c0037644:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003764a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037650:	0f 8f ee 02 00 00    	jg     c0037944 <_svfiprintf_r+0xc74>
c0037656:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c003765c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0037662:	39 c6                	cmp    %eax,%esi
c0037664:	0f 4d c6             	cmovge %esi,%eax
c0037667:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c003766d:	85 d2                	test   %edx,%edx
c003766f:	0f 85 d3 01 00 00    	jne    c0037848 <_svfiprintf_r+0xb78>
c0037675:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003767c:	00 00 00 
c003767f:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037682:	e9 a7 f6 ff ff       	jmp    c0036d2e <_svfiprintf_r+0x5e>
c0037687:	90                   	nop
c0037688:	84 d2                	test   %dl,%dl
c003768a:	75 6c                	jne    c00376f8 <_svfiprintf_r+0xa28>
c003768c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037693:	74 63                	je     c00376f8 <_svfiprintf_r+0xa28>
c0037695:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003769b:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c003769e:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c00376a2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00376a8:	e9 13 f8 ff ff       	jmp    c0036ec0 <_svfiprintf_r+0x1f0>
c00376ad:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c00376b3:	85 c0                	test   %eax,%eax
c00376b5:	74 21                	je     c00376d8 <_svfiprintf_r+0xa08>
c00376b7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00376bd:	89 44 24 08          	mov    %eax,0x8(%esp)
c00376c1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00376c4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00376c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00376cb:	89 04 24             	mov    %eax,(%esp)
c00376ce:	e8 0d f4 ff ff       	call   c0036ae0 <__ssprint_r>
c00376d3:	90                   	nop
c00376d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00376d8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00376db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00376e0:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c00376e4:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c00376eb:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c00376f1:	5b                   	pop    %ebx
c00376f2:	5e                   	pop    %esi
c00376f3:	5f                   	pop    %edi
c00376f4:	5d                   	pop    %ebp
c00376f5:	c3                   	ret    
c00376f6:	66 90                	xchg   %ax,%ax
c00376f8:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c00376ff:	00 00 00 
c0037702:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037705:	e9 b6 f7 ff ff       	jmp    c0036ec0 <_svfiprintf_r+0x1f0>
c003770a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037710:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037716:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c003771c:	85 ff                	test   %edi,%edi
c003771e:	0f 8e 4f fd ff ff    	jle    c0037473 <_svfiprintf_r+0x7a3>
c0037724:	83 ff 10             	cmp    $0x10,%edi
c0037727:	0f 8e 7f 00 00 00    	jle    c00377ac <_svfiprintf_r+0xadc>
c003772d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037733:	89 f1                	mov    %esi,%ecx
c0037735:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037738:	8b 75 0c             	mov    0xc(%ebp),%esi
c003773b:	eb 0b                	jmp    c0037748 <_svfiprintf_r+0xa78>
c003773d:	8d 76 00             	lea    0x0(%esi),%esi
c0037740:	83 ef 10             	sub    $0x10,%edi
c0037743:	83 ff 10             	cmp    $0x10,%edi
c0037746:	7e 5c                	jle    c00377a4 <_svfiprintf_r+0xad4>
c0037748:	83 c0 01             	add    $0x1,%eax
c003774b:	83 c2 10             	add    $0x10,%edx
c003774e:	c7 01 4c 94 03 c0    	movl   $0xc003944c,(%ecx)
c0037754:	83 c1 08             	add    $0x8,%ecx
c0037757:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003775e:	83 f8 07             	cmp    $0x7,%eax
c0037761:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037767:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003776d:	7e d1                	jle    c0037740 <_svfiprintf_r+0xa70>
c003776f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037775:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037779:	89 74 24 04          	mov    %esi,0x4(%esp)
c003777d:	89 1c 24             	mov    %ebx,(%esp)
c0037780:	e8 5b f3 ff ff       	call   c0036ae0 <__ssprint_r>
c0037785:	85 c0                	test   %eax,%eax
c0037787:	0f 85 4b ff ff ff    	jne    c00376d8 <_svfiprintf_r+0xa08>
c003778d:	83 ef 10             	sub    $0x10,%edi
c0037790:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037796:	83 ff 10             	cmp    $0x10,%edi
c0037799:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003779f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00377a2:	7f a4                	jg     c0037748 <_svfiprintf_r+0xa78>
c00377a4:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c00377aa:	89 ce                	mov    %ecx,%esi
c00377ac:	83 c0 01             	add    $0x1,%eax
c00377af:	01 fa                	add    %edi,%edx
c00377b1:	c7 06 4c 94 03 c0    	movl   $0xc003944c,(%esi)
c00377b7:	83 c6 08             	add    $0x8,%esi
c00377ba:	89 7e fc             	mov    %edi,-0x4(%esi)
c00377bd:	83 f8 07             	cmp    $0x7,%eax
c00377c0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00377c6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00377cc:	0f 8e a1 fc ff ff    	jle    c0037473 <_svfiprintf_r+0x7a3>
c00377d2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00377d8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00377dc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00377df:	89 44 24 04          	mov    %eax,0x4(%esp)
c00377e3:	8b 45 08             	mov    0x8(%ebp),%eax
c00377e6:	89 04 24             	mov    %eax,(%esp)
c00377e9:	e8 f2 f2 ff ff       	call   c0036ae0 <__ssprint_r>
c00377ee:	85 c0                	test   %eax,%eax
c00377f0:	0f 85 e2 fe ff ff    	jne    c00376d8 <_svfiprintf_r+0xa08>
c00377f6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00377fc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00377ff:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037805:	e9 69 fc ff ff       	jmp    c0037473 <_svfiprintf_r+0x7a3>
c003780a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037810:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037816:	89 44 24 08          	mov    %eax,0x8(%esp)
c003781a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003781d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037821:	8b 45 08             	mov    0x8(%ebp),%eax
c0037824:	89 04 24             	mov    %eax,(%esp)
c0037827:	e8 b4 f2 ff ff       	call   c0036ae0 <__ssprint_r>
c003782c:	85 c0                	test   %eax,%eax
c003782e:	0f 85 a4 fe ff ff    	jne    c00376d8 <_svfiprintf_r+0xa08>
c0037834:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003783a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003783d:	e9 4e fd ff ff       	jmp    c0037590 <_svfiprintf_r+0x8c0>
c0037842:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037848:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003784e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037852:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037855:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037859:	8b 45 08             	mov    0x8(%ebp),%eax
c003785c:	89 04 24             	mov    %eax,(%esp)
c003785f:	e8 7c f2 ff ff       	call   c0036ae0 <__ssprint_r>
c0037864:	85 c0                	test   %eax,%eax
c0037866:	0f 84 09 fe ff ff    	je     c0037675 <_svfiprintf_r+0x9a5>
c003786c:	e9 67 fe ff ff       	jmp    c00376d8 <_svfiprintf_r+0xa08>
c0037871:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037878:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003787e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037882:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037885:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037889:	8b 45 08             	mov    0x8(%ebp),%eax
c003788c:	89 04 24             	mov    %eax,(%esp)
c003788f:	e8 4c f2 ff ff       	call   c0036ae0 <__ssprint_r>
c0037894:	85 c0                	test   %eax,%eax
c0037896:	0f 85 3c fe ff ff    	jne    c00376d8 <_svfiprintf_r+0xa08>
c003789c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003789f:	e9 e9 f4 ff ff       	jmp    c0036d8d <_svfiprintf_r+0xbd>
c00378a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00378a8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378ae:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378b2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378b5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378bc:	89 04 24             	mov    %eax,(%esp)
c00378bf:	e8 1c f2 ff ff       	call   c0036ae0 <__ssprint_r>
c00378c4:	85 c0                	test   %eax,%eax
c00378c6:	0f 85 0c fe ff ff    	jne    c00376d8 <_svfiprintf_r+0xa08>
c00378cc:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00378d2:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378d5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00378db:	e9 83 fb ff ff       	jmp    c0037463 <_svfiprintf_r+0x793>
c00378e0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378e6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378ea:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378ed:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378f1:	8b 45 08             	mov    0x8(%ebp),%eax
c00378f4:	89 04 24             	mov    %eax,(%esp)
c00378f7:	e8 e4 f1 ff ff       	call   c0036ae0 <__ssprint_r>
c00378fc:	85 c0                	test   %eax,%eax
c00378fe:	0f 85 d4 fd ff ff    	jne    c00376d8 <_svfiprintf_r+0xa08>
c0037904:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003790a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003790d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037913:	e9 13 fb ff ff       	jmp    c003742b <_svfiprintf_r+0x75b>
c0037918:	83 f9 09             	cmp    $0x9,%ecx
c003791b:	76 56                	jbe    c0037973 <_svfiprintf_r+0xca3>
c003791d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037920:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0037925:	83 eb 01             	sub    $0x1,%ebx
c0037928:	f7 e1                	mul    %ecx
c003792a:	c1 ea 03             	shr    $0x3,%edx
c003792d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0037930:	01 c0                	add    %eax,%eax
c0037932:	29 c1                	sub    %eax,%ecx
c0037934:	83 c1 30             	add    $0x30,%ecx
c0037937:	85 d2                	test   %edx,%edx
c0037939:	88 0b                	mov    %cl,(%ebx)
c003793b:	89 d1                	mov    %edx,%ecx
c003793d:	75 e1                	jne    c0037920 <_svfiprintf_r+0xc50>
c003793f:	e9 71 f5 ff ff       	jmp    c0036eb5 <_svfiprintf_r+0x1e5>
c0037944:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003794a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003794e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037951:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037955:	8b 45 08             	mov    0x8(%ebp),%eax
c0037958:	89 04 24             	mov    %eax,(%esp)
c003795b:	e8 80 f1 ff ff       	call   c0036ae0 <__ssprint_r>
c0037960:	85 c0                	test   %eax,%eax
c0037962:	0f 85 70 fd ff ff    	jne    c00376d8 <_svfiprintf_r+0xa08>
c0037968:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003796e:	e9 e3 fc ff ff       	jmp    c0037656 <_svfiprintf_r+0x986>
c0037973:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0037979:	83 c1 30             	add    $0x30,%ecx
c003797c:	88 4d a7             	mov    %cl,-0x59(%ebp)
c003797f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037982:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037988:	e9 33 f5 ff ff       	jmp    c0036ec0 <_svfiprintf_r+0x1f0>
c003798d:	8b 45 14             	mov    0x14(%ebp),%eax
c0037990:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c0037996:	8b 00                	mov    (%eax),%eax
c0037998:	89 18                	mov    %ebx,(%eax)
c003799a:	8b 45 14             	mov    0x14(%ebp),%eax
c003799d:	83 c0 04             	add    $0x4,%eax
c00379a0:	89 45 14             	mov    %eax,0x14(%ebp)
c00379a3:	e9 86 f3 ff ff       	jmp    c0036d2e <_svfiprintf_r+0x5e>
c00379a8:	0f b7 0b             	movzwl (%ebx),%ecx
c00379ab:	83 c3 04             	add    $0x4,%ebx
c00379ae:	89 5d 14             	mov    %ebx,0x14(%ebp)
c00379b1:	e9 95 f8 ff ff       	jmp    c003724b <_svfiprintf_r+0x57b>
c00379b6:	0f bf 08             	movswl (%eax),%ecx
c00379b9:	83 c0 04             	add    $0x4,%eax
c00379bc:	89 45 14             	mov    %eax,0x14(%ebp)
c00379bf:	85 c9                	test   %ecx,%ecx
c00379c1:	0f 89 0d f7 ff ff    	jns    c00370d4 <_svfiprintf_r+0x404>
c00379c7:	f7 d9                	neg    %ecx
c00379c9:	bf 2d 00 00 00       	mov    $0x2d,%edi
c00379ce:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c00379d5:	ba 01 00 00 00       	mov    $0x1,%edx
c00379da:	e9 7a f4 ff ff       	jmp    c0036e59 <_svfiprintf_r+0x189>
c00379df:	89 1c 24             	mov    %ebx,(%esp)
c00379e2:	e8 79 f0 ff ff       	call   c0036a60 <strlen>
c00379e7:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c00379ed:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00379f4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00379fb:	00 00 00 
c00379fe:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a01:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a07:	e9 b4 f4 ff ff       	jmp    c0036ec0 <_svfiprintf_r+0x1f0>
c0037a0c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a0f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037a16:	00 
c0037a17:	89 04 24             	mov    %eax,(%esp)
c0037a1a:	e8 41 d9 ff ff       	call   c0035360 <_malloc_r>
c0037a1f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037a22:	85 c0                	test   %eax,%eax
c0037a24:	89 06                	mov    %eax,(%esi)
c0037a26:	89 46 10             	mov    %eax,0x10(%esi)
c0037a29:	0f 84 a3 00 00 00    	je     c0037ad2 <_svfiprintf_r+0xe02>
c0037a2f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037a32:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037a39:	e9 b2 f2 ff ff       	jmp    c0036cf0 <_svfiprintf_r+0x20>
c0037a3e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037a44:	b8 06 00 00 00       	mov    $0x6,%eax
c0037a49:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a4c:	83 ff 06             	cmp    $0x6,%edi
c0037a4f:	0f 46 c7             	cmovbe %edi,%eax
c0037a52:	85 c0                	test   %eax,%eax
c0037a54:	0f 49 d8             	cmovns %eax,%ebx
c0037a57:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037a5d:	bb 94 8f 03 c0       	mov    $0xc0038f94,%ebx
c0037a62:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a68:	e9 61 f8 ff ff       	jmp    c00372ce <_svfiprintf_r+0x5fe>
c0037a6d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037a73:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037a7a:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a7d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037a84:	00 00 00 
c0037a87:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a8d:	e9 2e f4 ff ff       	jmp    c0036ec0 <_svfiprintf_r+0x1f0>
c0037a92:	89 da                	mov    %ebx,%edx
c0037a94:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037a9b:	00 00 00 
c0037a9e:	e9 29 f3 ff ff       	jmp    c0036dcc <_svfiprintf_r+0xfc>
c0037aa3:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037aa6:	89 da                	mov    %ebx,%edx
c0037aa8:	8b 45 14             	mov    0x14(%ebp),%eax
c0037aab:	8b 09                	mov    (%ecx),%ecx
c0037aad:	83 c0 04             	add    $0x4,%eax
c0037ab0:	89 45 14             	mov    %eax,0x14(%ebp)
c0037ab3:	85 c9                	test   %ecx,%ecx
c0037ab5:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037abb:	0f 89 26 f3 ff ff    	jns    c0036de7 <_svfiprintf_r+0x117>
c0037ac1:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037ac8:	ff ff ff 
c0037acb:	89 d0                	mov    %edx,%eax
c0037acd:	e9 f4 f2 ff ff       	jmp    c0036dc6 <_svfiprintf_r+0xf6>
c0037ad2:	8b 45 08             	mov    0x8(%ebp),%eax
c0037ad5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037adb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037ae0:	e9 06 fc ff ff       	jmp    c00376eb <_svfiprintf_r+0xa1b>
c0037ae5:	66 90                	xchg   %ax,%ax
c0037ae7:	66 90                	xchg   %ax,%ax
c0037ae9:	66 90                	xchg   %ax,%ax
c0037aeb:	66 90                	xchg   %ax,%ax
c0037aed:	66 90                	xchg   %ax,%ax
c0037aef:	90                   	nop

c0037af0 <_calloc_r>:
c0037af0:	55                   	push   %ebp
c0037af1:	89 e5                	mov    %esp,%ebp
c0037af3:	53                   	push   %ebx
c0037af4:	83 ec 14             	sub    $0x14,%esp
c0037af7:	8b 45 10             	mov    0x10(%ebp),%eax
c0037afa:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037afe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037b02:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b05:	89 04 24             	mov    %eax,(%esp)
c0037b08:	e8 53 d8 ff ff       	call   c0035360 <_malloc_r>
c0037b0d:	85 c0                	test   %eax,%eax
c0037b0f:	89 c3                	mov    %eax,%ebx
c0037b11:	0f 84 91 00 00 00    	je     c0037ba8 <_calloc_r+0xb8>
c0037b17:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037b1a:	83 e0 fc             	and    $0xfffffffc,%eax
c0037b1d:	83 e8 04             	sub    $0x4,%eax
c0037b20:	83 f8 24             	cmp    $0x24,%eax
c0037b23:	77 63                	ja     c0037b88 <_calloc_r+0x98>
c0037b25:	83 f8 13             	cmp    $0x13,%eax
c0037b28:	89 da                	mov    %ebx,%edx
c0037b2a:	77 1c                	ja     c0037b48 <_calloc_r+0x58>
c0037b2c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037b32:	89 d8                	mov    %ebx,%eax
c0037b34:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037b3b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037b42:	83 c4 14             	add    $0x14,%esp
c0037b45:	5b                   	pop    %ebx
c0037b46:	5d                   	pop    %ebp
c0037b47:	c3                   	ret    
c0037b48:	83 f8 1b             	cmp    $0x1b,%eax
c0037b4b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037b51:	8d 53 08             	lea    0x8(%ebx),%edx
c0037b54:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037b5b:	76 cf                	jbe    c0037b2c <_calloc_r+0x3c>
c0037b5d:	83 f8 24             	cmp    $0x24,%eax
c0037b60:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037b67:	8d 53 10             	lea    0x10(%ebx),%edx
c0037b6a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037b71:	75 b9                	jne    c0037b2c <_calloc_r+0x3c>
c0037b73:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037b7a:	8d 53 18             	lea    0x18(%ebx),%edx
c0037b7d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037b84:	eb a6                	jmp    c0037b2c <_calloc_r+0x3c>
c0037b86:	66 90                	xchg   %ax,%ax
c0037b88:	89 1c 24             	mov    %ebx,(%esp)
c0037b8b:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037b8f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037b96:	00 
c0037b97:	e8 50 a2 ff ff       	call   c0031dec <memset>
c0037b9c:	83 c4 14             	add    $0x14,%esp
c0037b9f:	89 d8                	mov    %ebx,%eax
c0037ba1:	5b                   	pop    %ebx
c0037ba2:	5d                   	pop    %ebp
c0037ba3:	c3                   	ret    
c0037ba4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037ba8:	31 c0                	xor    %eax,%eax
c0037baa:	eb 96                	jmp    c0037b42 <_calloc_r+0x52>
c0037bac:	66 90                	xchg   %ax,%ax
c0037bae:	66 90                	xchg   %ax,%ax

c0037bb0 <_malloc_trim_r>:
c0037bb0:	55                   	push   %ebp
c0037bb1:	89 e5                	mov    %esp,%ebp
c0037bb3:	57                   	push   %edi
c0037bb4:	56                   	push   %esi
c0037bb5:	53                   	push   %ebx
c0037bb6:	83 ec 1c             	sub    $0x1c,%esp
c0037bb9:	8b 75 08             	mov    0x8(%ebp),%esi
c0037bbc:	89 34 24             	mov    %esi,(%esp)
c0037bbf:	e8 7c df ff ff       	call   c0035b40 <__malloc_lock>
c0037bc4:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0037bc9:	8b 58 04             	mov    0x4(%eax),%ebx
c0037bcc:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037bcf:	89 d8                	mov    %ebx,%eax
c0037bd1:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037bd4:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037bd9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037bde:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037be4:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037bea:	7e 1c                	jle    c0037c08 <_malloc_trim_r+0x58>
c0037bec:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037bf3:	00 
c0037bf4:	89 34 24             	mov    %esi,(%esp)
c0037bf7:	e8 44 ed ff ff       	call   c0036940 <_sbrk_r>
c0037bfc:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0037c02:	01 da                	add    %ebx,%edx
c0037c04:	39 d0                	cmp    %edx,%eax
c0037c06:	74 18                	je     c0037c20 <_malloc_trim_r+0x70>
c0037c08:	89 34 24             	mov    %esi,(%esp)
c0037c0b:	e8 40 df ff ff       	call   c0035b50 <__malloc_unlock>
c0037c10:	83 c4 1c             	add    $0x1c,%esp
c0037c13:	31 c0                	xor    %eax,%eax
c0037c15:	5b                   	pop    %ebx
c0037c16:	5e                   	pop    %esi
c0037c17:	5f                   	pop    %edi
c0037c18:	5d                   	pop    %ebp
c0037c19:	c3                   	ret    
c0037c1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037c20:	89 f8                	mov    %edi,%eax
c0037c22:	f7 d8                	neg    %eax
c0037c24:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037c28:	89 34 24             	mov    %esi,(%esp)
c0037c2b:	e8 10 ed ff ff       	call   c0036940 <_sbrk_r>
c0037c30:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037c33:	74 2b                	je     c0037c60 <_malloc_trim_r+0xb0>
c0037c35:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0037c3a:	29 fb                	sub    %edi,%ebx
c0037c3c:	83 cb 01             	or     $0x1,%ebx
c0037c3f:	29 3d 20 f0 06 c0    	sub    %edi,0xc006f020
c0037c45:	89 58 04             	mov    %ebx,0x4(%eax)
c0037c48:	89 34 24             	mov    %esi,(%esp)
c0037c4b:	e8 00 df ff ff       	call   c0035b50 <__malloc_unlock>
c0037c50:	83 c4 1c             	add    $0x1c,%esp
c0037c53:	b8 01 00 00 00       	mov    $0x1,%eax
c0037c58:	5b                   	pop    %ebx
c0037c59:	5e                   	pop    %esi
c0037c5a:	5f                   	pop    %edi
c0037c5b:	5d                   	pop    %ebp
c0037c5c:	c3                   	ret    
c0037c5d:	8d 76 00             	lea    0x0(%esi),%esi
c0037c60:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c67:	00 
c0037c68:	89 34 24             	mov    %esi,(%esp)
c0037c6b:	e8 d0 ec ff ff       	call   c0036940 <_sbrk_r>
c0037c70:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0037c76:	89 c1                	mov    %eax,%ecx
c0037c78:	29 d1                	sub    %edx,%ecx
c0037c7a:	83 f9 0f             	cmp    $0xf,%ecx
c0037c7d:	7e 89                	jle    c0037c08 <_malloc_trim_r+0x58>
c0037c7f:	2b 05 20 c5 03 c0    	sub    0xc003c520,%eax
c0037c85:	83 c9 01             	or     $0x1,%ecx
c0037c88:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037c8b:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c0037c90:	e9 73 ff ff ff       	jmp    c0037c08 <_malloc_trim_r+0x58>
c0037c95:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037c99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037ca0 <_free_r>:
c0037ca0:	55                   	push   %ebp
c0037ca1:	89 e5                	mov    %esp,%ebp
c0037ca3:	57                   	push   %edi
c0037ca4:	56                   	push   %esi
c0037ca5:	53                   	push   %ebx
c0037ca6:	83 ec 1c             	sub    $0x1c,%esp
c0037ca9:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037cac:	8b 45 08             	mov    0x8(%ebp),%eax
c0037caf:	85 f6                	test   %esi,%esi
c0037cb1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037cb4:	0f 84 fe 00 00 00    	je     c0037db8 <_free_r+0x118>
c0037cba:	89 04 24             	mov    %eax,(%esp)
c0037cbd:	e8 7e de ff ff       	call   c0035b40 <__malloc_lock>
c0037cc2:	8b 7e fc             	mov    -0x4(%esi),%edi
c0037cc5:	8d 56 f8             	lea    -0x8(%esi),%edx
c0037cc8:	89 f8                	mov    %edi,%eax
c0037cca:	83 e0 fe             	and    $0xfffffffe,%eax
c0037ccd:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0037cd0:	8b 59 04             	mov    0x4(%ecx),%ebx
c0037cd3:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037cd6:	39 0d 48 c5 03 c0    	cmp    %ecx,0xc003c548
c0037cdc:	0f 84 0e 01 00 00    	je     c0037df0 <_free_r+0x150>
c0037ce2:	83 e7 01             	and    $0x1,%edi
c0037ce5:	89 59 04             	mov    %ebx,0x4(%ecx)
c0037ce8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0037cef:	75 1f                	jne    c0037d10 <_free_r+0x70>
c0037cf1:	8b 76 f8             	mov    -0x8(%esi),%esi
c0037cf4:	29 f2                	sub    %esi,%edx
c0037cf6:	01 f0                	add    %esi,%eax
c0037cf8:	8b 72 08             	mov    0x8(%edx),%esi
c0037cfb:	81 fe 48 c5 03 c0    	cmp    $0xc003c548,%esi
c0037d01:	0f 84 39 01 00 00    	je     c0037e40 <_free_r+0x1a0>
c0037d07:	8b 7a 0c             	mov    0xc(%edx),%edi
c0037d0a:	89 7e 0c             	mov    %edi,0xc(%esi)
c0037d0d:	89 77 08             	mov    %esi,0x8(%edi)
c0037d10:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0037d15:	75 21                	jne    c0037d38 <_free_r+0x98>
c0037d17:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0037d1a:	01 d8                	add    %ebx,%eax
c0037d1c:	8b 59 08             	mov    0x8(%ecx),%ebx
c0037d1f:	85 f6                	test   %esi,%esi
c0037d21:	75 0c                	jne    c0037d2f <_free_r+0x8f>
c0037d23:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c0037d29:	0f 84 21 01 00 00    	je     c0037e50 <_free_r+0x1b0>
c0037d2f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0037d32:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037d35:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037d38:	89 c1                	mov    %eax,%ecx
c0037d3a:	83 c9 01             	or     $0x1,%ecx
c0037d3d:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037d40:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037d43:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037d46:	85 c9                	test   %ecx,%ecx
c0037d48:	75 56                	jne    c0037da0 <_free_r+0x100>
c0037d4a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c0037d4f:	76 6f                	jbe    c0037dc0 <_free_r+0x120>
c0037d51:	89 c1                	mov    %eax,%ecx
c0037d53:	c1 e9 09             	shr    $0x9,%ecx
c0037d56:	83 f9 04             	cmp    $0x4,%ecx
c0037d59:	0f 87 21 01 00 00    	ja     c0037e80 <_free_r+0x1e0>
c0037d5f:	89 c1                	mov    %eax,%ecx
c0037d61:	c1 e9 06             	shr    $0x6,%ecx
c0037d64:	83 c1 38             	add    $0x38,%ecx
c0037d67:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037d6a:	8d 34 9d 40 c5 03 c0 	lea    -0x3ffc3ac0(,%ebx,4),%esi
c0037d71:	8b 5e 08             	mov    0x8(%esi),%ebx
c0037d74:	39 f3                	cmp    %esi,%ebx
c0037d76:	0f 84 14 01 00 00    	je     c0037e90 <_free_r+0x1f0>
c0037d7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037d80:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0037d83:	83 e1 fc             	and    $0xfffffffc,%ecx
c0037d86:	39 c8                	cmp    %ecx,%eax
c0037d88:	73 07                	jae    c0037d91 <_free_r+0xf1>
c0037d8a:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0037d8d:	39 de                	cmp    %ebx,%esi
c0037d8f:	75 ef                	jne    c0037d80 <_free_r+0xe0>
c0037d91:	8b 43 0c             	mov    0xc(%ebx),%eax
c0037d94:	89 42 0c             	mov    %eax,0xc(%edx)
c0037d97:	89 5a 08             	mov    %ebx,0x8(%edx)
c0037d9a:	89 50 08             	mov    %edx,0x8(%eax)
c0037d9d:	89 53 0c             	mov    %edx,0xc(%ebx)
c0037da0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037da3:	89 45 08             	mov    %eax,0x8(%ebp)
c0037da6:	83 c4 1c             	add    $0x1c,%esp
c0037da9:	5b                   	pop    %ebx
c0037daa:	5e                   	pop    %esi
c0037dab:	5f                   	pop    %edi
c0037dac:	5d                   	pop    %ebp
c0037dad:	e9 9e dd ff ff       	jmp    c0035b50 <__malloc_unlock>
c0037db2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037db8:	83 c4 1c             	add    $0x1c,%esp
c0037dbb:	5b                   	pop    %ebx
c0037dbc:	5e                   	pop    %esi
c0037dbd:	5f                   	pop    %edi
c0037dbe:	5d                   	pop    %ebp
c0037dbf:	c3                   	ret    
c0037dc0:	c1 e8 03             	shr    $0x3,%eax
c0037dc3:	bb 01 00 00 00       	mov    $0x1,%ebx
c0037dc8:	89 c1                	mov    %eax,%ecx
c0037dca:	c1 f9 02             	sar    $0x2,%ecx
c0037dcd:	8d 04 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%eax
c0037dd4:	d3 e3                	shl    %cl,%ebx
c0037dd6:	8b 48 08             	mov    0x8(%eax),%ecx
c0037dd9:	09 1d 44 c5 03 c0    	or     %ebx,0xc003c544
c0037ddf:	89 42 0c             	mov    %eax,0xc(%edx)
c0037de2:	89 4a 08             	mov    %ecx,0x8(%edx)
c0037de5:	89 50 08             	mov    %edx,0x8(%eax)
c0037de8:	89 51 0c             	mov    %edx,0xc(%ecx)
c0037deb:	eb b3                	jmp    c0037da0 <_free_r+0x100>
c0037ded:	8d 76 00             	lea    0x0(%esi),%esi
c0037df0:	01 d8                	add    %ebx,%eax
c0037df2:	83 e7 01             	and    $0x1,%edi
c0037df5:	75 13                	jne    c0037e0a <_free_r+0x16a>
c0037df7:	8b 4e f8             	mov    -0x8(%esi),%ecx
c0037dfa:	29 ca                	sub    %ecx,%edx
c0037dfc:	01 c8                	add    %ecx,%eax
c0037dfe:	8b 5a 08             	mov    0x8(%edx),%ebx
c0037e01:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0037e04:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037e07:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037e0a:	89 c1                	mov    %eax,%ecx
c0037e0c:	83 c9 01             	or     $0x1,%ecx
c0037e0f:	3b 05 24 c5 03 c0    	cmp    0xc003c524,%eax
c0037e15:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e18:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c0037e1e:	72 80                	jb     c0037da0 <_free_r+0x100>
c0037e20:	a1 50 f0 06 c0       	mov    0xc006f050,%eax
c0037e25:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037e29:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037e2c:	89 04 24             	mov    %eax,(%esp)
c0037e2f:	e8 7c fd ff ff       	call   c0037bb0 <_malloc_trim_r>
c0037e34:	e9 67 ff ff ff       	jmp    c0037da0 <_free_r+0x100>
c0037e39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037e40:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0037e47:	e9 c4 fe ff ff       	jmp    c0037d10 <_free_r+0x70>
c0037e4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037e50:	89 c1                	mov    %eax,%ecx
c0037e52:	83 c9 01             	or     $0x1,%ecx
c0037e55:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c0037e5b:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c0037e61:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c0037e68:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c0037e6f:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e72:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037e75:	e9 26 ff ff ff       	jmp    c0037da0 <_free_r+0x100>
c0037e7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037e80:	83 f9 14             	cmp    $0x14,%ecx
c0037e83:	77 23                	ja     c0037ea8 <_free_r+0x208>
c0037e85:	83 c1 5b             	add    $0x5b,%ecx
c0037e88:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037e8b:	e9 da fe ff ff       	jmp    c0037d6a <_free_r+0xca>
c0037e90:	c1 f9 02             	sar    $0x2,%ecx
c0037e93:	b8 01 00 00 00       	mov    $0x1,%eax
c0037e98:	d3 e0                	shl    %cl,%eax
c0037e9a:	09 05 44 c5 03 c0    	or     %eax,0xc003c544
c0037ea0:	89 d8                	mov    %ebx,%eax
c0037ea2:	e9 ed fe ff ff       	jmp    c0037d94 <_free_r+0xf4>
c0037ea7:	90                   	nop
c0037ea8:	83 f9 54             	cmp    $0x54,%ecx
c0037eab:	77 10                	ja     c0037ebd <_free_r+0x21d>
c0037ead:	89 c1                	mov    %eax,%ecx
c0037eaf:	c1 e9 0c             	shr    $0xc,%ecx
c0037eb2:	83 c1 6e             	add    $0x6e,%ecx
c0037eb5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037eb8:	e9 ad fe ff ff       	jmp    c0037d6a <_free_r+0xca>
c0037ebd:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0037ec3:	77 10                	ja     c0037ed5 <_free_r+0x235>
c0037ec5:	89 c1                	mov    %eax,%ecx
c0037ec7:	c1 e9 0f             	shr    $0xf,%ecx
c0037eca:	83 c1 77             	add    $0x77,%ecx
c0037ecd:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037ed0:	e9 95 fe ff ff       	jmp    c0037d6a <_free_r+0xca>
c0037ed5:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0037edb:	77 10                	ja     c0037eed <_free_r+0x24d>
c0037edd:	89 c1                	mov    %eax,%ecx
c0037edf:	c1 e9 12             	shr    $0x12,%ecx
c0037ee2:	83 c1 7c             	add    $0x7c,%ecx
c0037ee5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037ee8:	e9 7d fe ff ff       	jmp    c0037d6a <_free_r+0xca>
c0037eed:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0037ef2:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0037ef7:	e9 6e fe ff ff       	jmp    c0037d6a <_free_r+0xca>
c0037efc:	66 90                	xchg   %ax,%ax
c0037efe:	66 90                	xchg   %ax,%ax

c0037f00 <memmove>:
c0037f00:	55                   	push   %ebp
c0037f01:	89 e5                	mov    %esp,%ebp
c0037f03:	56                   	push   %esi
c0037f04:	57                   	push   %edi
c0037f05:	53                   	push   %ebx
c0037f06:	8b 7d 08             	mov    0x8(%ebp),%edi
c0037f09:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0037f0c:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037f0f:	fc                   	cld    
c0037f10:	39 fe                	cmp    %edi,%esi
c0037f12:	73 43                	jae    c0037f57 <memmove+0x57>
c0037f14:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0037f18:	39 df                	cmp    %ebx,%edi
c0037f1a:	77 3b                	ja     c0037f57 <memmove+0x57>
c0037f1c:	01 ce                	add    %ecx,%esi
c0037f1e:	01 cf                	add    %ecx,%edi
c0037f20:	fd                   	std    
c0037f21:	83 f9 08             	cmp    $0x8,%ecx
c0037f24:	76 2b                	jbe    c0037f51 <memmove+0x51>
c0037f26:	89 fa                	mov    %edi,%edx
c0037f28:	89 cb                	mov    %ecx,%ebx
c0037f2a:	83 e2 03             	and    $0x3,%edx
c0037f2d:	74 0c                	je     c0037f3b <memmove+0x3b>
c0037f2f:	89 d1                	mov    %edx,%ecx
c0037f31:	4e                   	dec    %esi
c0037f32:	4f                   	dec    %edi
c0037f33:	29 cb                	sub    %ecx,%ebx
c0037f35:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f37:	89 d9                	mov    %ebx,%ecx
c0037f39:	46                   	inc    %esi
c0037f3a:	47                   	inc    %edi
c0037f3b:	c1 e9 02             	shr    $0x2,%ecx
c0037f3e:	83 ee 04             	sub    $0x4,%esi
c0037f41:	83 ef 04             	sub    $0x4,%edi
c0037f44:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037f46:	83 c6 04             	add    $0x4,%esi
c0037f49:	83 c7 04             	add    $0x4,%edi
c0037f4c:	89 d9                	mov    %ebx,%ecx
c0037f4e:	83 e1 03             	and    $0x3,%ecx
c0037f51:	4e                   	dec    %esi
c0037f52:	4f                   	dec    %edi
c0037f53:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f55:	eb 2a                	jmp    c0037f81 <memmove+0x81>
c0037f57:	83 f9 08             	cmp    $0x8,%ecx
c0037f5a:	76 23                	jbe    c0037f7f <memmove+0x7f>
c0037f5c:	89 fa                	mov    %edi,%edx
c0037f5e:	89 cb                	mov    %ecx,%ebx
c0037f60:	83 e2 03             	and    $0x3,%edx
c0037f63:	74 10                	je     c0037f75 <memmove+0x75>
c0037f65:	b9 04 00 00 00       	mov    $0x4,%ecx
c0037f6a:	29 d1                	sub    %edx,%ecx
c0037f6c:	83 e1 03             	and    $0x3,%ecx
c0037f6f:	29 cb                	sub    %ecx,%ebx
c0037f71:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f73:	89 d9                	mov    %ebx,%ecx
c0037f75:	c1 e9 02             	shr    $0x2,%ecx
c0037f78:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037f7a:	89 d9                	mov    %ebx,%ecx
c0037f7c:	83 e1 03             	and    $0x3,%ecx
c0037f7f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f81:	8b 45 08             	mov    0x8(%ebp),%eax
c0037f84:	fc                   	cld    
c0037f85:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0037f88:	5b                   	pop    %ebx
c0037f89:	5f                   	pop    %edi
c0037f8a:	5e                   	pop    %esi
c0037f8b:	c9                   	leave  
c0037f8c:	c3                   	ret    
c0037f8d:	66 90                	xchg   %ax,%ax
c0037f8f:	90                   	nop

c0037f90 <_realloc_r>:
c0037f90:	55                   	push   %ebp
c0037f91:	89 e5                	mov    %esp,%ebp
c0037f93:	57                   	push   %edi
c0037f94:	56                   	push   %esi
c0037f95:	53                   	push   %ebx
c0037f96:	83 ec 3c             	sub    $0x3c,%esp
c0037f99:	8b 45 08             	mov    0x8(%ebp),%eax
c0037f9c:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0037f9f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037fa2:	8b 45 10             	mov    0x10(%ebp),%eax
c0037fa5:	85 ff                	test   %edi,%edi
c0037fa7:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0037faa:	0f 84 50 02 00 00    	je     c0038200 <_realloc_r+0x270>
c0037fb0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037fb3:	8d 77 f8             	lea    -0x8(%edi),%esi
c0037fb6:	89 04 24             	mov    %eax,(%esp)
c0037fb9:	e8 82 db ff ff       	call   c0035b40 <__malloc_lock>
c0037fbe:	8b 47 fc             	mov    -0x4(%edi),%eax
c0037fc1:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037fc4:	89 c3                	mov    %eax,%ebx
c0037fc6:	8d 51 0b             	lea    0xb(%ecx),%edx
c0037fc9:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037fcc:	83 fa 16             	cmp    $0x16,%edx
c0037fcf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0037fd2:	0f 87 00 01 00 00    	ja     c00380d8 <_realloc_r+0x148>
c0037fd8:	31 d2                	xor    %edx,%edx
c0037fda:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c0037fe1:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c0037fe8:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037feb:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c0037fee:	0f 82 1c 02 00 00    	jb     c0038210 <_realloc_r+0x280>
c0037ff4:	84 d2                	test   %dl,%dl
c0037ff6:	0f 85 14 02 00 00    	jne    c0038210 <_realloc_r+0x280>
c0037ffc:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c0037fff:	0f 8d eb 00 00 00    	jge    c00380f0 <_realloc_r+0x160>
c0038005:	8b 0d 48 c5 03 c0    	mov    0xc003c548,%ecx
c003800b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c003800e:	39 d1                	cmp    %edx,%ecx
c0038010:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0038013:	0f 84 6f 02 00 00    	je     c0038288 <_realloc_r+0x2f8>
c0038019:	8b 4a 04             	mov    0x4(%edx),%ecx
c003801c:	89 c8                	mov    %ecx,%eax
c003801e:	83 e0 fe             	and    $0xfffffffe,%eax
c0038021:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0038026:	0f 84 f4 00 00 00    	je     c0038120 <_realloc_r+0x190>
c003802c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c0038033:	31 d2                	xor    %edx,%edx
c0038035:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c0038039:	0f 85 39 01 00 00    	jne    c0038178 <_realloc_r+0x1e8>
c003803f:	89 f1                	mov    %esi,%ecx
c0038041:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0038044:	8b 41 04             	mov    0x4(%ecx),%eax
c0038047:	83 e0 fc             	and    $0xfffffffc,%eax
c003804a:	85 d2                	test   %edx,%edx
c003804c:	0f 84 f6 02 00 00    	je     c0038348 <_realloc_r+0x3b8>
c0038052:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c0038055:	0f 84 f5 02 00 00    	je     c0038350 <_realloc_r+0x3c0>
c003805b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003805e:	8b 55 d0             	mov    -0x30(%ebp),%edx
c0038061:	01 d8                	add    %ebx,%eax
c0038063:	01 c2                	add    %eax,%edx
c0038065:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038068:	89 55 d0             	mov    %edx,-0x30(%ebp)
c003806b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003806e:	0f 8c ac 01 00 00    	jl     c0038220 <_realloc_r+0x290>
c0038074:	8b 42 0c             	mov    0xc(%edx),%eax
c0038077:	83 eb 04             	sub    $0x4,%ebx
c003807a:	8b 52 08             	mov    0x8(%edx),%edx
c003807d:	83 fb 24             	cmp    $0x24,%ebx
c0038080:	8d 71 08             	lea    0x8(%ecx),%esi
c0038083:	89 42 0c             	mov    %eax,0xc(%edx)
c0038086:	89 50 08             	mov    %edx,0x8(%eax)
c0038089:	8b 41 0c             	mov    0xc(%ecx),%eax
c003808c:	8b 51 08             	mov    0x8(%ecx),%edx
c003808f:	89 42 0c             	mov    %eax,0xc(%edx)
c0038092:	89 50 08             	mov    %edx,0x8(%eax)
c0038095:	0f 87 85 03 00 00    	ja     c0038420 <_realloc_r+0x490>
c003809b:	83 fb 13             	cmp    $0x13,%ebx
c003809e:	89 f0                	mov    %esi,%eax
c00380a0:	76 1a                	jbe    c00380bc <_realloc_r+0x12c>
c00380a2:	8b 07                	mov    (%edi),%eax
c00380a4:	83 fb 1b             	cmp    $0x1b,%ebx
c00380a7:	89 41 08             	mov    %eax,0x8(%ecx)
c00380aa:	8b 47 04             	mov    0x4(%edi),%eax
c00380ad:	89 41 0c             	mov    %eax,0xc(%ecx)
c00380b0:	0f 87 8f 03 00 00    	ja     c0038445 <_realloc_r+0x4b5>
c00380b6:	8d 41 10             	lea    0x10(%ecx),%eax
c00380b9:	83 c7 08             	add    $0x8,%edi
c00380bc:	8b 17                	mov    (%edi),%edx
c00380be:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c00380c1:	89 10                	mov    %edx,(%eax)
c00380c3:	8b 57 04             	mov    0x4(%edi),%edx
c00380c6:	89 50 04             	mov    %edx,0x4(%eax)
c00380c9:	8b 57 08             	mov    0x8(%edi),%edx
c00380cc:	89 f7                	mov    %esi,%edi
c00380ce:	89 ce                	mov    %ecx,%esi
c00380d0:	89 50 08             	mov    %edx,0x8(%eax)
c00380d3:	8b 41 04             	mov    0x4(%ecx),%eax
c00380d6:	eb 1b                	jmp    c00380f3 <_realloc_r+0x163>
c00380d8:	83 e2 f8             	and    $0xfffffff8,%edx
c00380db:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00380de:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00380e1:	c1 ea 1f             	shr    $0x1f,%edx
c00380e4:	e9 ff fe ff ff       	jmp    c0037fe8 <_realloc_r+0x58>
c00380e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00380f0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00380f3:	89 da                	mov    %ebx,%edx
c00380f5:	2b 55 dc             	sub    -0x24(%ebp),%edx
c00380f8:	83 fa 0f             	cmp    $0xf,%edx
c00380fb:	77 4b                	ja     c0038148 <_realloc_r+0x1b8>
c00380fd:	83 e0 01             	and    $0x1,%eax
c0038100:	09 d8                	or     %ebx,%eax
c0038102:	89 46 04             	mov    %eax,0x4(%esi)
c0038105:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c003810a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003810d:	89 04 24             	mov    %eax,(%esp)
c0038110:	e8 3b da ff ff       	call   c0035b50 <__malloc_unlock>
c0038115:	89 f8                	mov    %edi,%eax
c0038117:	83 c4 3c             	add    $0x3c,%esp
c003811a:	5b                   	pop    %ebx
c003811b:	5e                   	pop    %esi
c003811c:	5f                   	pop    %edi
c003811d:	5d                   	pop    %ebp
c003811e:	c3                   	ret    
c003811f:	90                   	nop
c0038120:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038123:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038126:	01 d9                	add    %ebx,%ecx
c0038128:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c003812b:	0f 8c 04 ff ff ff    	jl     c0038035 <_realloc_r+0xa5>
c0038131:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0038134:	8b 52 08             	mov    0x8(%edx),%edx
c0038137:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003813a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003813d:	89 53 08             	mov    %edx,0x8(%ebx)
c0038140:	89 cb                	mov    %ecx,%ebx
c0038142:	eb af                	jmp    c00380f3 <_realloc_r+0x163>
c0038144:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038148:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003814b:	83 e0 01             	and    $0x1,%eax
c003814e:	09 d8                	or     %ebx,%eax
c0038150:	89 46 04             	mov    %eax,0x4(%esi)
c0038153:	89 d0                	mov    %edx,%eax
c0038155:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c0038158:	83 c8 01             	or     $0x1,%eax
c003815b:	89 41 04             	mov    %eax,0x4(%ecx)
c003815e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038161:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c0038166:	83 c1 08             	add    $0x8,%ecx
c0038169:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c003816d:	89 04 24             	mov    %eax,(%esp)
c0038170:	e8 2b fb ff ff       	call   c0037ca0 <_free_r>
c0038175:	eb 93                	jmp    c003810a <_realloc_r+0x17a>
c0038177:	90                   	nop
c0038178:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003817b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003817f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038182:	89 04 24             	mov    %eax,(%esp)
c0038185:	e8 d6 d1 ff ff       	call   c0035360 <_malloc_r>
c003818a:	85 c0                	test   %eax,%eax
c003818c:	89 c1                	mov    %eax,%ecx
c003818e:	0f 84 65 03 00 00    	je     c00384f9 <_realloc_r+0x569>
c0038194:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038197:	8d 51 f8             	lea    -0x8(%ecx),%edx
c003819a:	89 55 e0             	mov    %edx,-0x20(%ebp)
c003819d:	89 c2                	mov    %eax,%edx
c003819f:	83 e2 fe             	and    $0xfffffffe,%edx
c00381a2:	01 f2                	add    %esi,%edx
c00381a4:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c00381a7:	0f 84 63 02 00 00    	je     c0038410 <_realloc_r+0x480>
c00381ad:	83 eb 04             	sub    $0x4,%ebx
c00381b0:	83 fb 24             	cmp    $0x24,%ebx
c00381b3:	0f 87 6f 01 00 00    	ja     c0038328 <_realloc_r+0x398>
c00381b9:	83 fb 13             	cmp    $0x13,%ebx
c00381bc:	0f 87 ee 00 00 00    	ja     c00382b0 <_realloc_r+0x320>
c00381c2:	89 c8                	mov    %ecx,%eax
c00381c4:	89 fa                	mov    %edi,%edx
c00381c6:	8b 1a                	mov    (%edx),%ebx
c00381c8:	89 18                	mov    %ebx,(%eax)
c00381ca:	8b 5a 04             	mov    0x4(%edx),%ebx
c00381cd:	89 58 04             	mov    %ebx,0x4(%eax)
c00381d0:	8b 52 08             	mov    0x8(%edx),%edx
c00381d3:	89 50 08             	mov    %edx,0x8(%eax)
c00381d6:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00381d9:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00381dd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00381e0:	89 34 24             	mov    %esi,(%esp)
c00381e3:	e8 b8 fa ff ff       	call   c0037ca0 <_free_r>
c00381e8:	89 34 24             	mov    %esi,(%esp)
c00381eb:	e8 60 d9 ff ff       	call   c0035b50 <__malloc_unlock>
c00381f0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00381f3:	83 c4 3c             	add    $0x3c,%esp
c00381f6:	5b                   	pop    %ebx
c00381f7:	5e                   	pop    %esi
c00381f8:	5f                   	pop    %edi
c00381f9:	89 c8                	mov    %ecx,%eax
c00381fb:	5d                   	pop    %ebp
c00381fc:	c3                   	ret    
c00381fd:	8d 76 00             	lea    0x0(%esi),%esi
c0038200:	89 45 0c             	mov    %eax,0xc(%ebp)
c0038203:	83 c4 3c             	add    $0x3c,%esp
c0038206:	5b                   	pop    %ebx
c0038207:	5e                   	pop    %esi
c0038208:	5f                   	pop    %edi
c0038209:	5d                   	pop    %ebp
c003820a:	e9 51 d1 ff ff       	jmp    c0035360 <_malloc_r>
c003820f:	90                   	nop
c0038210:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038213:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038219:	31 c0                	xor    %eax,%eax
c003821b:	e9 f7 fe ff ff       	jmp    c0038117 <_realloc_r+0x187>
c0038220:	89 c2                	mov    %eax,%edx
c0038222:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038225:	0f 8c 4d ff ff ff    	jl     c0038178 <_realloc_r+0x1e8>
c003822b:	8b 71 08             	mov    0x8(%ecx),%esi
c003822e:	83 eb 04             	sub    $0x4,%ebx
c0038231:	8b 41 0c             	mov    0xc(%ecx),%eax
c0038234:	83 fb 24             	cmp    $0x24,%ebx
c0038237:	89 46 0c             	mov    %eax,0xc(%esi)
c003823a:	89 70 08             	mov    %esi,0x8(%eax)
c003823d:	8d 71 08             	lea    0x8(%ecx),%esi
c0038240:	0f 87 88 00 00 00    	ja     c00382ce <_realloc_r+0x33e>
c0038246:	83 fb 13             	cmp    $0x13,%ebx
c0038249:	89 f0                	mov    %esi,%eax
c003824b:	76 1a                	jbe    c0038267 <_realloc_r+0x2d7>
c003824d:	8b 07                	mov    (%edi),%eax
c003824f:	83 fb 1b             	cmp    $0x1b,%ebx
c0038252:	89 41 08             	mov    %eax,0x8(%ecx)
c0038255:	8b 47 04             	mov    0x4(%edi),%eax
c0038258:	89 41 0c             	mov    %eax,0xc(%ecx)
c003825b:	0f 87 17 02 00 00    	ja     c0038478 <_realloc_r+0x4e8>
c0038261:	8d 41 10             	lea    0x10(%ecx),%eax
c0038264:	83 c7 08             	add    $0x8,%edi
c0038267:	8b 1f                	mov    (%edi),%ebx
c0038269:	89 18                	mov    %ebx,(%eax)
c003826b:	8b 5f 04             	mov    0x4(%edi),%ebx
c003826e:	89 58 04             	mov    %ebx,0x4(%eax)
c0038271:	8b 5f 08             	mov    0x8(%edi),%ebx
c0038274:	89 f7                	mov    %esi,%edi
c0038276:	89 ce                	mov    %ecx,%esi
c0038278:	89 58 08             	mov    %ebx,0x8(%eax)
c003827b:	89 d3                	mov    %edx,%ebx
c003827d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038280:	e9 6e fe ff ff       	jmp    c00380f3 <_realloc_r+0x163>
c0038285:	8d 76 00             	lea    0x0(%esi),%esi
c0038288:	8b 45 cc             	mov    -0x34(%ebp),%eax
c003828b:	8b 55 dc             	mov    -0x24(%ebp),%edx
c003828e:	8b 48 04             	mov    0x4(%eax),%ecx
c0038291:	83 c2 10             	add    $0x10,%edx
c0038294:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038297:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c003829b:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c003829e:	01 d9                	add    %ebx,%ecx
c00382a0:	39 d1                	cmp    %edx,%ecx
c00382a2:	7d 54                	jge    c00382f8 <_realloc_r+0x368>
c00382a4:	89 c2                	mov    %eax,%edx
c00382a6:	e9 8a fd ff ff       	jmp    c0038035 <_realloc_r+0xa5>
c00382ab:	90                   	nop
c00382ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00382b0:	8b 07                	mov    (%edi),%eax
c00382b2:	83 fb 1b             	cmp    $0x1b,%ebx
c00382b5:	89 01                	mov    %eax,(%ecx)
c00382b7:	8b 47 04             	mov    0x4(%edi),%eax
c00382ba:	89 41 04             	mov    %eax,0x4(%ecx)
c00382bd:	0f 87 2d 01 00 00    	ja     c00383f0 <_realloc_r+0x460>
c00382c3:	8d 41 08             	lea    0x8(%ecx),%eax
c00382c6:	8d 57 08             	lea    0x8(%edi),%edx
c00382c9:	e9 f8 fe ff ff       	jmp    c00381c6 <_realloc_r+0x236>
c00382ce:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00382d2:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00382d6:	89 f7                	mov    %esi,%edi
c00382d8:	89 34 24             	mov    %esi,(%esp)
c00382db:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00382de:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00382e1:	e8 1a fc ff ff       	call   c0037f00 <memmove>
c00382e6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00382e9:	8b 55 d8             	mov    -0x28(%ebp),%edx
c00382ec:	8b 41 04             	mov    0x4(%ecx),%eax
c00382ef:	89 ce                	mov    %ecx,%esi
c00382f1:	89 d3                	mov    %edx,%ebx
c00382f3:	e9 fb fd ff ff       	jmp    c00380f3 <_realloc_r+0x163>
c00382f8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00382fb:	29 d9                	sub    %ebx,%ecx
c00382fd:	01 de                	add    %ebx,%esi
c00382ff:	83 c9 01             	or     $0x1,%ecx
c0038302:	89 35 48 c5 03 c0    	mov    %esi,0xc003c548
c0038308:	89 4e 04             	mov    %ecx,0x4(%esi)
c003830b:	8b 47 fc             	mov    -0x4(%edi),%eax
c003830e:	83 e0 01             	and    $0x1,%eax
c0038311:	09 d8                	or     %ebx,%eax
c0038313:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038316:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038319:	89 04 24             	mov    %eax,(%esp)
c003831c:	e8 2f d8 ff ff       	call   c0035b50 <__malloc_unlock>
c0038321:	89 f8                	mov    %edi,%eax
c0038323:	e9 ef fd ff ff       	jmp    c0038117 <_realloc_r+0x187>
c0038328:	89 0c 24             	mov    %ecx,(%esp)
c003832b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003832f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038333:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038336:	e8 c5 fb ff ff       	call   c0037f00 <memmove>
c003833b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003833e:	e9 93 fe ff ff       	jmp    c00381d6 <_realloc_r+0x246>
c0038343:	90                   	nop
c0038344:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038348:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c003834b:	e9 d2 fe ff ff       	jmp    c0038222 <_realloc_r+0x292>
c0038350:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038353:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0038356:	01 d0                	add    %edx,%eax
c0038358:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003835b:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003835e:	83 c0 10             	add    $0x10,%eax
c0038361:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c0038364:	0f 8c b8 fe ff ff    	jl     c0038222 <_realloc_r+0x292>
c003836a:	8b 41 0c             	mov    0xc(%ecx),%eax
c003836d:	83 eb 04             	sub    $0x4,%ebx
c0038370:	8b 51 08             	mov    0x8(%ecx),%edx
c0038373:	83 fb 24             	cmp    $0x24,%ebx
c0038376:	8d 71 08             	lea    0x8(%ecx),%esi
c0038379:	89 42 0c             	mov    %eax,0xc(%edx)
c003837c:	89 50 08             	mov    %edx,0x8(%eax)
c003837f:	0f 87 3d 01 00 00    	ja     c00384c2 <_realloc_r+0x532>
c0038385:	83 fb 13             	cmp    $0x13,%ebx
c0038388:	89 f0                	mov    %esi,%eax
c003838a:	76 1a                	jbe    c00383a6 <_realloc_r+0x416>
c003838c:	8b 07                	mov    (%edi),%eax
c003838e:	83 fb 1b             	cmp    $0x1b,%ebx
c0038391:	89 41 08             	mov    %eax,0x8(%ecx)
c0038394:	8b 47 04             	mov    0x4(%edi),%eax
c0038397:	89 41 0c             	mov    %eax,0xc(%ecx)
c003839a:	0f 87 3d 01 00 00    	ja     c00384dd <_realloc_r+0x54d>
c00383a0:	8d 41 10             	lea    0x10(%ecx),%eax
c00383a3:	83 c7 08             	add    $0x8,%edi
c00383a6:	8b 17                	mov    (%edi),%edx
c00383a8:	89 10                	mov    %edx,(%eax)
c00383aa:	8b 57 04             	mov    0x4(%edi),%edx
c00383ad:	89 50 04             	mov    %edx,0x4(%eax)
c00383b0:	8b 57 08             	mov    0x8(%edi),%edx
c00383b3:	89 50 08             	mov    %edx,0x8(%eax)
c00383b6:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00383b9:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00383bc:	89 d8                	mov    %ebx,%eax
c00383be:	29 df                	sub    %ebx,%edi
c00383c0:	01 c8                	add    %ecx,%eax
c00383c2:	83 cf 01             	or     $0x1,%edi
c00383c5:	a3 48 c5 03 c0       	mov    %eax,0xc003c548
c00383ca:	89 78 04             	mov    %edi,0x4(%eax)
c00383cd:	8b 41 04             	mov    0x4(%ecx),%eax
c00383d0:	83 e0 01             	and    $0x1,%eax
c00383d3:	09 d8                	or     %ebx,%eax
c00383d5:	89 41 04             	mov    %eax,0x4(%ecx)
c00383d8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00383db:	89 04 24             	mov    %eax,(%esp)
c00383de:	e8 6d d7 ff ff       	call   c0035b50 <__malloc_unlock>
c00383e3:	89 f0                	mov    %esi,%eax
c00383e5:	e9 2d fd ff ff       	jmp    c0038117 <_realloc_r+0x187>
c00383ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00383f0:	8b 47 08             	mov    0x8(%edi),%eax
c00383f3:	83 fb 24             	cmp    $0x24,%ebx
c00383f6:	89 41 08             	mov    %eax,0x8(%ecx)
c00383f9:	8b 47 0c             	mov    0xc(%edi),%eax
c00383fc:	89 41 0c             	mov    %eax,0xc(%ecx)
c00383ff:	74 60                	je     c0038461 <_realloc_r+0x4d1>
c0038401:	8d 41 10             	lea    0x10(%ecx),%eax
c0038404:	8d 57 10             	lea    0x10(%edi),%edx
c0038407:	e9 ba fd ff ff       	jmp    c00381c6 <_realloc_r+0x236>
c003840c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038410:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038413:	83 e2 fc             	and    $0xfffffffc,%edx
c0038416:	01 d3                	add    %edx,%ebx
c0038418:	e9 d6 fc ff ff       	jmp    c00380f3 <_realloc_r+0x163>
c003841d:	8d 76 00             	lea    0x0(%esi),%esi
c0038420:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038424:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038428:	89 f7                	mov    %esi,%edi
c003842a:	89 34 24             	mov    %esi,(%esp)
c003842d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038430:	e8 cb fa ff ff       	call   c0037f00 <memmove>
c0038435:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038438:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c003843b:	8b 41 04             	mov    0x4(%ecx),%eax
c003843e:	89 ce                	mov    %ecx,%esi
c0038440:	e9 ae fc ff ff       	jmp    c00380f3 <_realloc_r+0x163>
c0038445:	8b 47 08             	mov    0x8(%edi),%eax
c0038448:	83 fb 24             	cmp    $0x24,%ebx
c003844b:	89 41 10             	mov    %eax,0x10(%ecx)
c003844e:	8b 47 0c             	mov    0xc(%edi),%eax
c0038451:	89 41 14             	mov    %eax,0x14(%ecx)
c0038454:	74 3e                	je     c0038494 <_realloc_r+0x504>
c0038456:	8d 41 18             	lea    0x18(%ecx),%eax
c0038459:	83 c7 10             	add    $0x10,%edi
c003845c:	e9 5b fc ff ff       	jmp    c00380bc <_realloc_r+0x12c>
c0038461:	8b 47 10             	mov    0x10(%edi),%eax
c0038464:	8d 57 18             	lea    0x18(%edi),%edx
c0038467:	89 41 10             	mov    %eax,0x10(%ecx)
c003846a:	8b 5f 14             	mov    0x14(%edi),%ebx
c003846d:	8d 41 18             	lea    0x18(%ecx),%eax
c0038470:	89 59 14             	mov    %ebx,0x14(%ecx)
c0038473:	e9 4e fd ff ff       	jmp    c00381c6 <_realloc_r+0x236>
c0038478:	8b 47 08             	mov    0x8(%edi),%eax
c003847b:	83 fb 24             	cmp    $0x24,%ebx
c003847e:	89 41 10             	mov    %eax,0x10(%ecx)
c0038481:	8b 47 0c             	mov    0xc(%edi),%eax
c0038484:	89 41 14             	mov    %eax,0x14(%ecx)
c0038487:	74 22                	je     c00384ab <_realloc_r+0x51b>
c0038489:	8d 41 18             	lea    0x18(%ecx),%eax
c003848c:	83 c7 10             	add    $0x10,%edi
c003848f:	e9 d3 fd ff ff       	jmp    c0038267 <_realloc_r+0x2d7>
c0038494:	8b 47 10             	mov    0x10(%edi),%eax
c0038497:	83 c7 18             	add    $0x18,%edi
c003849a:	89 41 18             	mov    %eax,0x18(%ecx)
c003849d:	8b 57 fc             	mov    -0x4(%edi),%edx
c00384a0:	8d 41 20             	lea    0x20(%ecx),%eax
c00384a3:	89 51 1c             	mov    %edx,0x1c(%ecx)
c00384a6:	e9 11 fc ff ff       	jmp    c00380bc <_realloc_r+0x12c>
c00384ab:	8b 47 10             	mov    0x10(%edi),%eax
c00384ae:	83 c7 18             	add    $0x18,%edi
c00384b1:	89 41 18             	mov    %eax,0x18(%ecx)
c00384b4:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00384b7:	8d 41 20             	lea    0x20(%ecx),%eax
c00384ba:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c00384bd:	e9 a5 fd ff ff       	jmp    c0038267 <_realloc_r+0x2d7>
c00384c2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00384c6:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00384ca:	89 34 24             	mov    %esi,(%esp)
c00384cd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00384d0:	e8 2b fa ff ff       	call   c0037f00 <memmove>
c00384d5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00384d8:	e9 d9 fe ff ff       	jmp    c00383b6 <_realloc_r+0x426>
c00384dd:	8b 47 08             	mov    0x8(%edi),%eax
c00384e0:	83 fb 24             	cmp    $0x24,%ebx
c00384e3:	89 41 10             	mov    %eax,0x10(%ecx)
c00384e6:	8b 47 0c             	mov    0xc(%edi),%eax
c00384e9:	89 41 14             	mov    %eax,0x14(%ecx)
c00384ec:	74 1d                	je     c003850b <_realloc_r+0x57b>
c00384ee:	8d 41 18             	lea    0x18(%ecx),%eax
c00384f1:	83 c7 10             	add    $0x10,%edi
c00384f4:	e9 ad fe ff ff       	jmp    c00383a6 <_realloc_r+0x416>
c00384f9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00384fc:	89 04 24             	mov    %eax,(%esp)
c00384ff:	e8 4c d6 ff ff       	call   c0035b50 <__malloc_unlock>
c0038504:	31 c0                	xor    %eax,%eax
c0038506:	e9 0c fc ff ff       	jmp    c0038117 <_realloc_r+0x187>
c003850b:	8b 47 10             	mov    0x10(%edi),%eax
c003850e:	83 c7 18             	add    $0x18,%edi
c0038511:	89 41 18             	mov    %eax,0x18(%ecx)
c0038514:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038517:	8d 41 20             	lea    0x20(%ecx),%eax
c003851a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c003851d:	e9 84 fe ff ff       	jmp    c00383a6 <_realloc_r+0x416>
c0038522:	66 90                	xchg   %ax,%ax
c0038524:	66 90                	xchg   %ax,%ax
c0038526:	66 90                	xchg   %ax,%ax
c0038528:	66 90                	xchg   %ax,%ax
c003852a:	66 90                	xchg   %ax,%ax
c003852c:	66 90                	xchg   %ax,%ax
c003852e:	66 90                	xchg   %ax,%ax

c0038530 <cleanup_glue>:
c0038530:	55                   	push   %ebp
c0038531:	89 e5                	mov    %esp,%ebp
c0038533:	56                   	push   %esi
c0038534:	53                   	push   %ebx
c0038535:	83 ec 10             	sub    $0x10,%esp
c0038538:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003853b:	8b 75 08             	mov    0x8(%ebp),%esi
c003853e:	8b 03                	mov    (%ebx),%eax
c0038540:	85 c0                	test   %eax,%eax
c0038542:	74 0c                	je     c0038550 <cleanup_glue+0x20>
c0038544:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038548:	89 34 24             	mov    %esi,(%esp)
c003854b:	e8 e0 ff ff ff       	call   c0038530 <cleanup_glue>
c0038550:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0038553:	89 75 08             	mov    %esi,0x8(%ebp)
c0038556:	83 c4 10             	add    $0x10,%esp
c0038559:	5b                   	pop    %ebx
c003855a:	5e                   	pop    %esi
c003855b:	5d                   	pop    %ebp
c003855c:	e9 3f f7 ff ff       	jmp    c0037ca0 <_free_r>
c0038561:	eb 0d                	jmp    c0038570 <_reclaim_reent>
c0038563:	90                   	nop
c0038564:	90                   	nop
c0038565:	90                   	nop
c0038566:	90                   	nop
c0038567:	90                   	nop
c0038568:	90                   	nop
c0038569:	90                   	nop
c003856a:	90                   	nop
c003856b:	90                   	nop
c003856c:	90                   	nop
c003856d:	90                   	nop
c003856e:	90                   	nop
c003856f:	90                   	nop

c0038570 <_reclaim_reent>:
c0038570:	55                   	push   %ebp
c0038571:	89 e5                	mov    %esp,%ebp
c0038573:	57                   	push   %edi
c0038574:	56                   	push   %esi
c0038575:	53                   	push   %ebx
c0038576:	83 ec 1c             	sub    $0x1c,%esp
c0038579:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003857c:	3b 1d 40 c0 03 c0    	cmp    0xc003c040,%ebx
c0038582:	0f 84 a6 00 00 00    	je     c003862e <_reclaim_reent+0xbe>
c0038588:	8b 53 4c             	mov    0x4c(%ebx),%edx
c003858b:	85 d2                	test   %edx,%edx
c003858d:	74 46                	je     c00385d5 <_reclaim_reent+0x65>
c003858f:	31 c0                	xor    %eax,%eax
c0038591:	31 f6                	xor    %esi,%esi
c0038593:	90                   	nop
c0038594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038598:	8b 04 82             	mov    (%edx,%eax,4),%eax
c003859b:	85 c0                	test   %eax,%eax
c003859d:	75 0b                	jne    c00385aa <_reclaim_reent+0x3a>
c003859f:	eb 1e                	jmp    c00385bf <_reclaim_reent+0x4f>
c00385a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00385a8:	89 f8                	mov    %edi,%eax
c00385aa:	8b 38                	mov    (%eax),%edi
c00385ac:	89 44 24 04          	mov    %eax,0x4(%esp)
c00385b0:	89 1c 24             	mov    %ebx,(%esp)
c00385b3:	e8 e8 f6 ff ff       	call   c0037ca0 <_free_r>
c00385b8:	85 ff                	test   %edi,%edi
c00385ba:	75 ec                	jne    c00385a8 <_reclaim_reent+0x38>
c00385bc:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00385bf:	83 c6 01             	add    $0x1,%esi
c00385c2:	83 fe 20             	cmp    $0x20,%esi
c00385c5:	89 f0                	mov    %esi,%eax
c00385c7:	75 cf                	jne    c0038598 <_reclaim_reent+0x28>
c00385c9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00385cd:	89 1c 24             	mov    %ebx,(%esp)
c00385d0:	e8 cb f6 ff ff       	call   c0037ca0 <_free_r>
c00385d5:	8b 43 40             	mov    0x40(%ebx),%eax
c00385d8:	85 c0                	test   %eax,%eax
c00385da:	74 0c                	je     c00385e8 <_reclaim_reent+0x78>
c00385dc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00385e0:	89 1c 24             	mov    %ebx,(%esp)
c00385e3:	e8 b8 f6 ff ff       	call   c0037ca0 <_free_r>
c00385e8:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c00385ee:	85 c0                	test   %eax,%eax
c00385f0:	74 22                	je     c0038614 <_reclaim_reent+0xa4>
c00385f2:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c00385f8:	39 f0                	cmp    %esi,%eax
c00385fa:	75 06                	jne    c0038602 <_reclaim_reent+0x92>
c00385fc:	eb 16                	jmp    c0038614 <_reclaim_reent+0xa4>
c00385fe:	66 90                	xchg   %ax,%ax
c0038600:	89 f8                	mov    %edi,%eax
c0038602:	8b 38                	mov    (%eax),%edi
c0038604:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038608:	89 1c 24             	mov    %ebx,(%esp)
c003860b:	e8 90 f6 ff ff       	call   c0037ca0 <_free_r>
c0038610:	39 fe                	cmp    %edi,%esi
c0038612:	75 ec                	jne    c0038600 <_reclaim_reent+0x90>
c0038614:	8b 43 54             	mov    0x54(%ebx),%eax
c0038617:	85 c0                	test   %eax,%eax
c0038619:	74 0c                	je     c0038627 <_reclaim_reent+0xb7>
c003861b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003861f:	89 1c 24             	mov    %ebx,(%esp)
c0038622:	e8 79 f6 ff ff       	call   c0037ca0 <_free_r>
c0038627:	8b 43 38             	mov    0x38(%ebx),%eax
c003862a:	85 c0                	test   %eax,%eax
c003862c:	75 08                	jne    c0038636 <_reclaim_reent+0xc6>
c003862e:	83 c4 1c             	add    $0x1c,%esp
c0038631:	5b                   	pop    %ebx
c0038632:	5e                   	pop    %esi
c0038633:	5f                   	pop    %edi
c0038634:	5d                   	pop    %ebp
c0038635:	c3                   	ret    
c0038636:	89 1c 24             	mov    %ebx,(%esp)
c0038639:	ff 53 3c             	call   *0x3c(%ebx)
c003863c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0038642:	85 c0                	test   %eax,%eax
c0038644:	74 e8                	je     c003862e <_reclaim_reent+0xbe>
c0038646:	89 1c 24             	mov    %ebx,(%esp)
c0038649:	89 44 24 04          	mov    %eax,0x4(%esp)
c003864d:	e8 de fe ff ff       	call   c0038530 <cleanup_glue>
c0038652:	83 c4 1c             	add    $0x1c,%esp
c0038655:	5b                   	pop    %ebx
c0038656:	5e                   	pop    %esi
c0038657:	5f                   	pop    %edi
c0038658:	5d                   	pop    %ebp
c0038659:	c3                   	ret    
