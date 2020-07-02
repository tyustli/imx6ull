
.\rtthread.elf:     file format elf32-littlearm


Disassembly of section .text:

87800000 <__text_start>:
87800000:	e59ff018 	ldr	pc, [pc, #24]	; 87800020 <_vector_reset>
87800004:	e59ff018 	ldr	pc, [pc, #24]	; 87800024 <_vector_undef>
87800008:	e59ff018 	ldr	pc, [pc, #24]	; 87800028 <_vector_swi>
8780000c:	e59ff018 	ldr	pc, [pc, #24]	; 8780002c <_vector_pabt>
87800010:	e59ff018 	ldr	pc, [pc, #24]	; 87800030 <_vector_dabt>
87800014:	e59ff018 	ldr	pc, [pc, #24]	; 87800034 <_vector_resv>
87800018:	e59ff018 	ldr	pc, [pc, #24]	; 87800038 <_vector_irq>
8780001c:	e59ff018 	ldr	pc, [pc, #24]	; 8780003c <_vector_fiq>

87800020 <_vector_reset>:
87800020:	87800220 	.word	0x87800220

87800024 <_vector_undef>:
87800024:	878002a0 	.word	0x878002a0

87800028 <_vector_swi>:
87800028:	878002c0 	.word	0x878002c0

8780002c <_vector_pabt>:
8780002c:	878002e0 	.word	0x878002e0

87800030 <_vector_dabt>:
87800030:	87800300 	.word	0x87800300

87800034 <_vector_resv>:
87800034:	87800320 	.word	0x87800320

87800038 <_vector_irq>:
87800038:	87800340 	.word	0x87800340

8780003c <_vector_fiq>:
8780003c:	87800360 	.word	0x87800360

87800040 <__do_global_dtors_aux>:
87800040:	b510      	push	{r4, lr}
87800042:	f244 64d0 	movw	r4, #18128	; 0x46d0
87800046:	f2c8 7480 	movt	r4, #34688	; 0x8780
8780004a:	7823      	ldrb	r3, [r4, #0]
8780004c:	b963      	cbnz	r3, 87800068 <__do_global_dtors_aux+0x28>
8780004e:	f240 0300 	movw	r3, #0
87800052:	f2c0 0300 	movt	r3, #0
87800056:	b12b      	cbz	r3, 87800064 <__do_global_dtors_aux+0x24>
87800058:	f244 2028 	movw	r0, #16936	; 0x4228
8780005c:	f2c8 7080 	movt	r0, #34688	; 0x8780
87800060:	f3af 8000 	nop.w
87800064:	2301      	movs	r3, #1
87800066:	7023      	strb	r3, [r4, #0]
87800068:	bd10      	pop	{r4, pc}
8780006a:	bf00      	nop

8780006c <frame_dummy>:
8780006c:	f240 0300 	movw	r3, #0
87800070:	f2c0 0300 	movt	r3, #0
87800074:	b510      	push	{r4, lr}
87800076:	b14b      	cbz	r3, 8780008c <frame_dummy+0x20>
87800078:	f244 61d4 	movw	r1, #18132	; 0x46d4
8780007c:	f244 2028 	movw	r0, #16936	; 0x4228
87800080:	f2c8 7180 	movt	r1, #34688	; 0x8780
87800084:	f2c8 7080 	movt	r0, #34688	; 0x8780
87800088:	f3af 8000 	nop.w
8780008c:	f244 60cc 	movw	r0, #18124	; 0x46cc
87800090:	f2c8 7080 	movt	r0, #34688	; 0x8780
87800094:	6803      	ldr	r3, [r0, #0]
87800096:	b903      	cbnz	r3, 8780009a <frame_dummy+0x2e>
87800098:	bd10      	pop	{r4, pc}
8780009a:	f240 0300 	movw	r3, #0
8780009e:	f2c0 0300 	movt	r3, #0
878000a2:	2b00      	cmp	r3, #0
878000a4:	d0f8      	beq.n	87800098 <frame_dummy+0x2c>
878000a6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
878000aa:	4718      	bx	r3

878000ac <clk_enable>:
878000ac:	e59f3020 	ldr	r3, [pc, #32]	; 878000d4 <clk_enable+0x28>
878000b0:	e3e02000 	mvn	r2, #0
878000b4:	e5832068 	str	r2, [r3, #104]	; 0x68
878000b8:	e583206c 	str	r2, [r3, #108]	; 0x6c
878000bc:	e5832070 	str	r2, [r3, #112]	; 0x70
878000c0:	e5832074 	str	r2, [r3, #116]	; 0x74
878000c4:	e5832078 	str	r2, [r3, #120]	; 0x78
878000c8:	e583207c 	str	r2, [r3, #124]	; 0x7c
878000cc:	e5832080 	str	r2, [r3, #128]	; 0x80
878000d0:	e12fff1e 	bx	lr
878000d4:	020c4000 	.word	0x020c4000

878000d8 <led_init>:
878000d8:	e59f3024 	ldr	r3, [pc, #36]	; 87800104 <led_init+0x2c>
878000dc:	e3a02005 	mov	r2, #5
878000e0:	e5832068 	str	r2, [r3, #104]	; 0x68
878000e4:	e30120b0 	movw	r2, #4272	; 0x10b0
878000e8:	e58322f4 	str	r2, [r3, #756]	; 0x2f4
878000ec:	e2433911 	sub	r3, r3, #278528	; 0x44000
878000f0:	e3a02008 	mov	r2, #8
878000f4:	e5832004 	str	r2, [r3, #4]
878000f8:	e3a02000 	mov	r2, #0
878000fc:	e5832000 	str	r2, [r3]
87800100:	e12fff1e 	bx	lr
87800104:	020e0000 	.word	0x020e0000

87800108 <led_on>:
87800108:	e59f200c 	ldr	r2, [pc, #12]	; 8780011c <led_on+0x14>
8780010c:	e5923000 	ldr	r3, [r2]
87800110:	e3c33008 	bic	r3, r3, #8
87800114:	e5823000 	str	r3, [r2]
87800118:	e12fff1e 	bx	lr
8780011c:	0209c000 	.word	0x0209c000

87800120 <led_off>:
87800120:	e59f200c 	ldr	r2, [pc, #12]	; 87800134 <led_off+0x14>
87800124:	e5923000 	ldr	r3, [r2]
87800128:	e3833008 	orr	r3, r3, #8
8780012c:	e5823000 	str	r3, [r2]
87800130:	e12fff1e 	bx	lr
87800134:	0209c000 	.word	0x0209c000

87800138 <delay_short>:
87800138:	e24dd008 	sub	sp, sp, #8
8780013c:	e58d0004 	str	r0, [sp, #4]
87800140:	e59d3004 	ldr	r3, [sp, #4]
87800144:	e3530000 	cmp	r3, #0
87800148:	e2432001 	sub	r2, r3, #1
8780014c:	e58d2004 	str	r2, [sp, #4]
87800150:	1afffffa 	bne	87800140 <delay_short+0x8>
87800154:	e28dd008 	add	sp, sp, #8
87800158:	e12fff1e 	bx	lr

8780015c <delay>:
8780015c:	e92d4007 	push	{r0, r1, r2, lr}
87800160:	e58d0004 	str	r0, [sp, #4]
87800164:	e59d3004 	ldr	r3, [sp, #4]
87800168:	e3530000 	cmp	r3, #0
8780016c:	e2432001 	sub	r2, r3, #1
87800170:	e58d2004 	str	r2, [sp, #4]
87800174:	0a000002 	beq	87800184 <delay+0x28>
87800178:	e30007ff 	movw	r0, #2047	; 0x7ff
8780017c:	ebffffed 	bl	87800138 <delay_short>
87800180:	eafffff7 	b	87800164 <delay+0x8>
87800184:	e28dd00c 	add	sp, sp, #12
87800188:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

8780018c <rt_hw_stack_init>:
8780018c:	e2822004 	add	r2, r2, #4
87800190:	e3100001 	tst	r0, #1
87800194:	e3c22007 	bic	r2, r2, #7
87800198:	e5023008 	str	r3, [r2, #-8]
8780019c:	e59f3048 	ldr	r3, [pc, #72]	; 878001ec <rt_hw_stack_init+0x60>
878001a0:	e5020004 	str	r0, [r2, #-4]
878001a4:	e2420040 	sub	r0, r2, #64	; 0x40
878001a8:	e502300c 	str	r3, [r2, #-12]
878001ac:	e5023010 	str	r3, [r2, #-16]
878001b0:	e5023014 	str	r3, [r2, #-20]	; 0xffffffec
878001b4:	e5023018 	str	r3, [r2, #-24]	; 0xffffffe8
878001b8:	e502301c 	str	r3, [r2, #-28]	; 0xffffffe4
878001bc:	e5023020 	str	r3, [r2, #-32]	; 0xffffffe0
878001c0:	e5023024 	str	r3, [r2, #-36]	; 0xffffffdc
878001c4:	e5023028 	str	r3, [r2, #-40]	; 0xffffffd8
878001c8:	e502302c 	str	r3, [r2, #-44]	; 0xffffffd4
878001cc:	e5023030 	str	r3, [r2, #-48]	; 0xffffffd0
878001d0:	e5023034 	str	r3, [r2, #-52]	; 0xffffffcc
878001d4:	e5023038 	str	r3, [r2, #-56]	; 0xffffffc8
878001d8:	03a03013 	moveq	r3, #19
878001dc:	e502103c 	str	r1, [r2, #-60]	; 0xffffffc4
878001e0:	13a03033 	movne	r3, #51	; 0x33
878001e4:	e5023040 	str	r3, [r2, #-64]	; 0xffffffc0
878001e8:	e12fff1e 	bx	lr
878001ec:	deadbeef 	.word	0xdeadbeef

878001f0 <rt_hw_interrupt_disable>:
878001f0:	e10f0000 	mrs	r0, CPSR
878001f4:	f10c0080 	cpsid	i
878001f8:	e12fff1e 	bx	lr

878001fc <rt_hw_interrupt_enable>:
878001fc:	e129f000 	msr	CPSR_fc, r0
87800200:	e12fff1e 	bx	lr

87800204 <rt_hw_context_switch_to>:
87800204:	e590d000 	ldr	sp, [r0]
87800208:	ea000f6d 	b	87803fc4 <rt_hw_context_switch_exit>
	...

87800220 <reset>:
87800220:	f10c0080 	cpsid	i
87800224:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
87800228:	e3c00a01 	bic	r0, r0, #4096	; 0x1000
8780022c:	e3c00004 	bic	r0, r0, #4
87800230:	e3c00002 	bic	r0, r0, #2
87800234:	e3c00b02 	bic	r0, r0, #2048	; 0x800
87800238:	e3c00001 	bic	r0, r0, #1
8780023c:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
87800240:	e10f0000 	mrs	r0, CPSR
87800244:	e3c0001f 	bic	r0, r0, #31
87800248:	e3800012 	orr	r0, r0, #18
8780024c:	e129f000 	msr	CPSR_fc, r0
87800250:	e59fd10c 	ldr	sp, [pc, #268]	; 87800364 <vector_fiq+0x4>
87800254:	e10f0000 	mrs	r0, CPSR
87800258:	e3c0001f 	bic	r0, r0, #31
8780025c:	e380001f 	orr	r0, r0, #31
87800260:	e129f000 	msr	CPSR_fc, r0
87800264:	e59fd0fc 	ldr	sp, [pc, #252]	; 87800368 <vector_fiq+0x8>
87800268:	e10f0000 	mrs	r0, CPSR
8780026c:	e3c0001f 	bic	r0, r0, #31
87800270:	e3800013 	orr	r0, r0, #19
87800274:	e129f000 	msr	CPSR_fc, r0
87800278:	e59fd0ec 	ldr	sp, [pc, #236]	; 8780036c <vector_fiq+0xc>
8780027c:	f1080080 	cpsie	i
87800280:	ea000f31 	b	87803f4c <main>
87800284:	e320f000 	nop	{0}
87800288:	e320f000 	nop	{0}
8780028c:	e320f000 	nop	{0}
87800290:	e320f000 	nop	{0}
87800294:	e320f000 	nop	{0}
87800298:	e320f000 	nop	{0}
8780029c:	e320f000 	nop	{0}

878002a0 <vector_undef>:
878002a0:	eafffffe 	b	878002a0 <vector_undef>
878002a4:	e320f000 	nop	{0}
878002a8:	e320f000 	nop	{0}
878002ac:	e320f000 	nop	{0}
878002b0:	e320f000 	nop	{0}
878002b4:	e320f000 	nop	{0}
878002b8:	e320f000 	nop	{0}
878002bc:	e320f000 	nop	{0}

878002c0 <vector_swi>:
878002c0:	eafffffe 	b	878002c0 <vector_swi>
878002c4:	e320f000 	nop	{0}
878002c8:	e320f000 	nop	{0}
878002cc:	e320f000 	nop	{0}
878002d0:	e320f000 	nop	{0}
878002d4:	e320f000 	nop	{0}
878002d8:	e320f000 	nop	{0}
878002dc:	e320f000 	nop	{0}

878002e0 <vector_pabt>:
878002e0:	eafffffe 	b	878002e0 <vector_pabt>
878002e4:	e320f000 	nop	{0}
878002e8:	e320f000 	nop	{0}
878002ec:	e320f000 	nop	{0}
878002f0:	e320f000 	nop	{0}
878002f4:	e320f000 	nop	{0}
878002f8:	e320f000 	nop	{0}
878002fc:	e320f000 	nop	{0}

87800300 <vector_dabt>:
87800300:	eafffffe 	b	87800300 <vector_dabt>
87800304:	e320f000 	nop	{0}
87800308:	e320f000 	nop	{0}
8780030c:	e320f000 	nop	{0}
87800310:	e320f000 	nop	{0}
87800314:	e320f000 	nop	{0}
87800318:	e320f000 	nop	{0}
8780031c:	e320f000 	nop	{0}

87800320 <vector_resv>:
87800320:	eafffffe 	b	87800320 <vector_resv>
87800324:	e320f000 	nop	{0}
87800328:	e320f000 	nop	{0}
8780032c:	e320f000 	nop	{0}
87800330:	e320f000 	nop	{0}
87800334:	e320f000 	nop	{0}
87800338:	e320f000 	nop	{0}
8780033c:	e320f000 	nop	{0}

87800340 <vector_irq>:
87800340:	eafffffe 	b	87800340 <vector_irq>
87800344:	e320f000 	nop	{0}
87800348:	e320f000 	nop	{0}
8780034c:	e320f000 	nop	{0}
87800350:	e320f000 	nop	{0}
87800354:	e320f000 	nop	{0}
87800358:	e320f000 	nop	{0}
8780035c:	e320f000 	nop	{0}

87800360 <vector_fiq>:
87800360:	eafffffe 	b	87800360 <vector_fiq>
87800364:	80600000 	.word	0x80600000
87800368:	80400000 	.word	0x80400000
8780036c:	80200000 	.word	0x80200000

87800370 <rt_system_tick_init>:
87800370:	e12fff1e 	bx	lr

87800374 <rt_tick_get>:
87800374:	e59f3004 	ldr	r3, [pc, #4]	; 87800380 <rt_tick_get+0xc>
87800378:	e5930000 	ldr	r0, [r3]
8780037c:	e12fff1e 	bx	lr
87800380:	878046f8 	.word	0x878046f8

87800384 <rt_tick_set>:
87800384:	e92d4010 	push	{r4, lr}
87800388:	e1a04000 	mov	r4, r0
8780038c:	ebffff97 	bl	878001f0 <rt_hw_interrupt_disable>
87800390:	e59f3008 	ldr	r3, [pc, #8]	; 878003a0 <rt_tick_set+0x1c>
87800394:	e5834000 	str	r4, [r3]
87800398:	e8bd4010 	pop	{r4, lr}
8780039c:	eaffff96 	b	878001fc <rt_hw_interrupt_enable>
878003a0:	878046f8 	.word	0x878046f8

878003a4 <rt_tick_increase>:
878003a4:	e59f2044 	ldr	r2, [pc, #68]	; 878003f0 <rt_tick_increase+0x4c>
878003a8:	e92d4010 	push	{r4, lr}
878003ac:	e5923000 	ldr	r3, [r2]
878003b0:	e2833001 	add	r3, r3, #1
878003b4:	e5823000 	str	r3, [r2]
878003b8:	eb000b2b 	bl	8780306c <rt_thread_self>
878003bc:	e5903048 	ldr	r3, [r0, #72]	; 0x48
878003c0:	e2433001 	sub	r3, r3, #1
878003c4:	e5803048 	str	r3, [r0, #72]	; 0x48
878003c8:	e3530000 	cmp	r3, #0
878003cc:	1a000005 	bne	878003e8 <rt_tick_increase+0x44>
878003d0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
878003d4:	e5803048 	str	r3, [r0, #72]	; 0x48
878003d8:	e5d03034 	ldrb	r3, [r0, #52]	; 0x34
878003dc:	e3833008 	orr	r3, r3, #8
878003e0:	e5c03034 	strb	r3, [r0, #52]	; 0x34
878003e4:	eb000ba0 	bl	8780326c <rt_thread_yield>
878003e8:	e8bd4010 	pop	{r4, lr}
878003ec:	ea000d19 	b	87803858 <rt_timer_check>
878003f0:	878046f8 	.word	0x878046f8

878003f4 <rt_tick_from_millisecond>:
878003f4:	e92d4070 	push	{r4, r5, r6, lr}
878003f8:	e2506000 	subs	r6, r0, #0
878003fc:	ba00000d 	blt	87800438 <rt_tick_from_millisecond+0x44>
87800400:	e3a01ffa 	mov	r1, #1000	; 0x3e8
87800404:	e3a05ffa 	mov	r5, #1000	; 0x3e8
87800408:	fa000e22 	blx	87803c98 <__aeabi_idiv>
8780040c:	e0040095 	mul	r4, r5, r0
87800410:	e1a01005 	mov	r1, r5
87800414:	e1a00006 	mov	r0, r6
87800418:	fa000ec3 	blx	87803f2c <__aeabi_idivmod>
8780041c:	e0000195 	mul	r0, r5, r1
87800420:	e1a01005 	mov	r1, r5
87800424:	e2800ff9 	add	r0, r0, #996	; 0x3e4
87800428:	e2800003 	add	r0, r0, #3
8780042c:	fa000e19 	blx	87803c98 <__aeabi_idiv>
87800430:	e0800004 	add	r0, r0, r4
87800434:	e8bd8070 	pop	{r4, r5, r6, pc}
87800438:	e3e00000 	mvn	r0, #0
8780043c:	e8bd8070 	pop	{r4, r5, r6, pc}

87800440 <rt_ipc_list_resume_all>:
87800440:	e92d4070 	push	{r4, r5, r6, lr}
87800444:	e1a04000 	mov	r4, r0
87800448:	e3e05000 	mvn	r5, #0
8780044c:	e5943000 	ldr	r3, [r4]
87800450:	e1540003 	cmp	r4, r3
87800454:	0a000008 	beq	8780047c <rt_ipc_list_resume_all+0x3c>
87800458:	ebffff64 	bl	878001f0 <rt_hw_interrupt_disable>
8780045c:	e1a06000 	mov	r6, r0
87800460:	e5940000 	ldr	r0, [r4]
87800464:	e580501c 	str	r5, [r0, #28]
87800468:	e2400014 	sub	r0, r0, #20
8780046c:	eb000be1 	bl	878033f8 <rt_thread_resume>
87800470:	e1a00006 	mov	r0, r6
87800474:	ebffff60 	bl	878001fc <rt_hw_interrupt_enable>
87800478:	eafffff3 	b	8780044c <rt_ipc_list_resume_all+0xc>
8780047c:	e3a00000 	mov	r0, #0
87800480:	e8bd8070 	pop	{r4, r5, r6, pc}

87800484 <rt_ipc_list_resume.isra.0>:
87800484:	e92d4010 	push	{r4, lr}
87800488:	e2400014 	sub	r0, r0, #20
8780048c:	eb000bd9 	bl	878033f8 <rt_thread_resume>
87800490:	e3a00000 	mov	r0, #0
87800494:	e8bd8010 	pop	{r4, pc}

87800498 <rt_ipc_list_suspend>:
87800498:	e92d4070 	push	{r4, r5, r6, lr}
8780049c:	e1a06002 	mov	r6, r2
878004a0:	e1a05000 	mov	r5, r0
878004a4:	e1a00001 	mov	r0, r1
878004a8:	e1a04001 	mov	r4, r1
878004ac:	eb000b72 	bl	8780327c <rt_thread_suspend>
878004b0:	e3560000 	cmp	r6, #0
878004b4:	0a000003 	beq	878004c8 <rt_ipc_list_suspend+0x30>
878004b8:	e3560001 	cmp	r6, #1
878004bc:	1a000015 	bne	87800518 <rt_ipc_list_suspend+0x80>
878004c0:	e5953000 	ldr	r3, [r5]
878004c4:	ea00000b 	b	878004f8 <rt_ipc_list_suspend+0x60>
878004c8:	e5952004 	ldr	r2, [r5, #4]
878004cc:	e2843014 	add	r3, r4, #20
878004d0:	e5823000 	str	r3, [r2]
878004d4:	e5842018 	str	r2, [r4, #24]
878004d8:	e5853004 	str	r3, [r5, #4]
878004dc:	e5845014 	str	r5, [r4, #20]
878004e0:	ea00000c 	b	87800518 <rt_ipc_list_suspend+0x80>
878004e4:	e5d41035 	ldrb	r1, [r4, #53]	; 0x35
878004e8:	e5d32021 	ldrb	r2, [r3, #33]	; 0x21
878004ec:	e1510002 	cmp	r1, r2
878004f0:	3a000002 	bcc	87800500 <rt_ipc_list_suspend+0x68>
878004f4:	e5933000 	ldr	r3, [r3]
878004f8:	e1530005 	cmp	r3, r5
878004fc:	1afffff8 	bne	878004e4 <rt_ipc_list_suspend+0x4c>
87800500:	e5931004 	ldr	r1, [r3, #4]
87800504:	e2842014 	add	r2, r4, #20
87800508:	e5812000 	str	r2, [r1]
8780050c:	e5841018 	str	r1, [r4, #24]
87800510:	e5832004 	str	r2, [r3, #4]
87800514:	e5843014 	str	r3, [r4, #20]
87800518:	e3a00000 	mov	r0, #0
8780051c:	e8bd8070 	pop	{r4, r5, r6, pc}

87800520 <rt_sem_init>:
87800520:	e92d4070 	push	{r4, r5, r6, lr}
87800524:	e1a04000 	mov	r4, r0
87800528:	e1a06002 	mov	r6, r2
8780052c:	e1a02001 	mov	r2, r1
87800530:	e3a01002 	mov	r1, #2
87800534:	e1a05003 	mov	r5, r3
87800538:	eb000918 	bl	878029a0 <rt_object_init>
8780053c:	e1c461bc 	strh	r6, [r4, #28]
87800540:	e2842014 	add	r2, r4, #20
87800544:	e5842018 	str	r2, [r4, #24]
87800548:	e3a00000 	mov	r0, #0
8780054c:	e5842014 	str	r2, [r4, #20]
87800550:	e5c45009 	strb	r5, [r4, #9]
87800554:	e8bd8070 	pop	{r4, r5, r6, pc}

87800558 <rt_sem_detach>:
87800558:	e92d4010 	push	{r4, lr}
8780055c:	e1a04000 	mov	r4, r0
87800560:	e2800014 	add	r0, r0, #20
87800564:	ebffffb5 	bl	87800440 <rt_ipc_list_resume_all>
87800568:	e1a00004 	mov	r0, r4
8780056c:	eb000929 	bl	87802a18 <rt_object_detach>
87800570:	e3a00000 	mov	r0, #0
87800574:	e8bd8010 	pop	{r4, pc}

87800578 <rt_sem_create>:
87800578:	e92d4070 	push	{r4, r5, r6, lr}
8780057c:	e1a05001 	mov	r5, r1
87800580:	e1a01000 	mov	r1, r0
87800584:	e3a00002 	mov	r0, #2
87800588:	e1a04002 	mov	r4, r2
8780058c:	eb000930 	bl	87802a54 <rt_object_allocate>
87800590:	e3500000 	cmp	r0, #0
87800594:	12803014 	addne	r3, r0, #20
87800598:	15803018 	strne	r3, [r0, #24]
8780059c:	15803014 	strne	r3, [r0, #20]
878005a0:	11c051bc 	strhne	r5, [r0, #28]
878005a4:	15c04009 	strbne	r4, [r0, #9]
878005a8:	e8bd8070 	pop	{r4, r5, r6, pc}

878005ac <rt_sem_delete>:
878005ac:	e92d4010 	push	{r4, lr}
878005b0:	e1a04000 	mov	r4, r0
878005b4:	e2800014 	add	r0, r0, #20
878005b8:	ebffffa0 	bl	87800440 <rt_ipc_list_resume_all>
878005bc:	e1a00004 	mov	r0, r4
878005c0:	eb000940 	bl	87802ac8 <rt_object_delete>
878005c4:	e3a00000 	mov	r0, #0
878005c8:	e8bd8010 	pop	{r4, pc}

878005cc <rt_sem_take>:
878005cc:	e92d40f7 	push	{r0, r1, r2, r4, r5, r6, r7, lr}
878005d0:	e1a06000 	mov	r6, r0
878005d4:	e58d1004 	str	r1, [sp, #4]
878005d8:	ebffff04 	bl	878001f0 <rt_hw_interrupt_disable>
878005dc:	e1d641bc 	ldrh	r4, [r6, #28]
878005e0:	e3540000 	cmp	r4, #0
878005e4:	0a000004 	beq	878005fc <rt_sem_take+0x30>
878005e8:	e2444001 	sub	r4, r4, #1
878005ec:	e1c641bc 	strh	r4, [r6, #28]
878005f0:	ebffff01 	bl	878001fc <rt_hw_interrupt_enable>
878005f4:	e3a00000 	mov	r0, #0
878005f8:	ea00001c 	b	87800670 <rt_sem_take+0xa4>
878005fc:	e59d3004 	ldr	r3, [sp, #4]
87800600:	e3530000 	cmp	r3, #0
87800604:	1a000002 	bne	87800614 <rt_sem_take+0x48>
87800608:	ebfffefb 	bl	878001fc <rt_hw_interrupt_enable>
8780060c:	e3e00001 	mvn	r0, #1
87800610:	ea000016 	b	87800670 <rt_sem_take+0xa4>
87800614:	e1a07000 	mov	r7, r0
87800618:	eb000a93 	bl	8780306c <rt_thread_self>
8780061c:	e5804030 	str	r4, [r0, #48]	; 0x30
87800620:	e1a01000 	mov	r1, r0
87800624:	e5d62009 	ldrb	r2, [r6, #9]
87800628:	e1a05000 	mov	r5, r0
8780062c:	e2860014 	add	r0, r6, #20
87800630:	ebffff98 	bl	87800498 <rt_ipc_list_suspend>
87800634:	e59d3004 	ldr	r3, [sp, #4]
87800638:	e3530000 	cmp	r3, #0
8780063c:	da000007 	ble	87800660 <rt_sem_take+0x94>
87800640:	e285304c 	add	r3, r5, #76	; 0x4c
87800644:	e1a01004 	mov	r1, r4
87800648:	e28d2004 	add	r2, sp, #4
8780064c:	e1a04003 	mov	r4, r3
87800650:	e1a00003 	mov	r0, r3
87800654:	eb000c65 	bl	878037f0 <rt_timer_control>
87800658:	e1a00004 	mov	r0, r4
8780065c:	eb000c23 	bl	878036f0 <rt_timer_start>
87800660:	e1a00007 	mov	r0, r7
87800664:	ebfffee4 	bl	878001fc <rt_hw_interrupt_enable>
87800668:	eb0009ab 	bl	87802d1c <rt_schedule>
8780066c:	e5950030 	ldr	r0, [r5, #48]	; 0x30
87800670:	e28dd00c 	add	sp, sp, #12
87800674:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

87800678 <rt_sem_trytake>:
87800678:	e3a01000 	mov	r1, #0
8780067c:	eaffffd2 	b	878005cc <rt_sem_take>

87800680 <rt_sem_release>:
87800680:	e92d4070 	push	{r4, r5, r6, lr}
87800684:	e1a04000 	mov	r4, r0
87800688:	ebfffed8 	bl	878001f0 <rt_hw_interrupt_disable>
8780068c:	e1a03004 	mov	r3, r4
87800690:	e1a05000 	mov	r5, r0
87800694:	e5b30014 	ldr	r0, [r3, #20]!
87800698:	e1500003 	cmp	r0, r3
8780069c:	0a000002 	beq	878006ac <rt_sem_release+0x2c>
878006a0:	e3a04001 	mov	r4, #1
878006a4:	ebffff76 	bl	87800484 <rt_ipc_list_resume.isra.0>
878006a8:	ea000003 	b	878006bc <rt_sem_release+0x3c>
878006ac:	e1d431bc 	ldrh	r3, [r4, #28]
878006b0:	e2833001 	add	r3, r3, #1
878006b4:	e1c431bc 	strh	r3, [r4, #28]
878006b8:	e3a04000 	mov	r4, #0
878006bc:	e1a00005 	mov	r0, r5
878006c0:	ebfffecd 	bl	878001fc <rt_hw_interrupt_enable>
878006c4:	e3540001 	cmp	r4, #1
878006c8:	1a000000 	bne	878006d0 <rt_sem_release+0x50>
878006cc:	eb000992 	bl	87802d1c <rt_schedule>
878006d0:	e3a00000 	mov	r0, #0
878006d4:	e8bd8070 	pop	{r4, r5, r6, pc}

878006d8 <rt_sem_control>:
878006d8:	e3510001 	cmp	r1, #1
878006dc:	1a00000c 	bne	87800714 <rt_sem_control+0x3c>
878006e0:	e92d4070 	push	{r4, r5, r6, lr}
878006e4:	e1a05002 	mov	r5, r2
878006e8:	e1a04000 	mov	r4, r0
878006ec:	ebfffebf 	bl	878001f0 <rt_hw_interrupt_disable>
878006f0:	e1a06000 	mov	r6, r0
878006f4:	e2840014 	add	r0, r4, #20
878006f8:	ebffff50 	bl	87800440 <rt_ipc_list_resume_all>
878006fc:	e1c451bc 	strh	r5, [r4, #28]
87800700:	e1a00006 	mov	r0, r6
87800704:	ebfffebc 	bl	878001fc <rt_hw_interrupt_enable>
87800708:	eb000983 	bl	87802d1c <rt_schedule>
8780070c:	e3a00000 	mov	r0, #0
87800710:	e8bd8070 	pop	{r4, r5, r6, pc}
87800714:	e3e00000 	mvn	r0, #0
87800718:	e12fff1e 	bx	lr

8780071c <rt_mutex_init>:
8780071c:	e92d4070 	push	{r4, r5, r6, lr}
87800720:	e1a04000 	mov	r4, r0
87800724:	e1a05002 	mov	r5, r2
87800728:	e1a02001 	mov	r2, r1
8780072c:	e3a01003 	mov	r1, #3
87800730:	eb00089a 	bl	878029a0 <rt_object_init>
87800734:	e5c45009 	strb	r5, [r4, #9]
87800738:	e2843014 	add	r3, r4, #20
8780073c:	e5843018 	str	r3, [r4, #24]
87800740:	e3a00000 	mov	r0, #0
87800744:	e5843014 	str	r3, [r4, #20]
87800748:	e3a03001 	mov	r3, #1
8780074c:	e1c431bc 	strh	r3, [r4, #28]
87800750:	e3e03000 	mvn	r3, #0
87800754:	e5840020 	str	r0, [r4, #32]
87800758:	e5c4301e 	strb	r3, [r4, #30]
8780075c:	e5c4001f 	strb	r0, [r4, #31]
87800760:	e8bd8070 	pop	{r4, r5, r6, pc}

87800764 <rt_mutex_detach>:
87800764:	e92d4010 	push	{r4, lr}
87800768:	e1a04000 	mov	r4, r0
8780076c:	e2800014 	add	r0, r0, #20
87800770:	ebffff32 	bl	87800440 <rt_ipc_list_resume_all>
87800774:	e1a00004 	mov	r0, r4
87800778:	eb0008a6 	bl	87802a18 <rt_object_detach>
8780077c:	e3a00000 	mov	r0, #0
87800780:	e8bd8010 	pop	{r4, pc}

87800784 <rt_mutex_create>:
87800784:	e92d4010 	push	{r4, lr}
87800788:	e1a04001 	mov	r4, r1
8780078c:	e1a01000 	mov	r1, r0
87800790:	e3a00003 	mov	r0, #3
87800794:	eb0008ae 	bl	87802a54 <rt_object_allocate>
87800798:	e3500000 	cmp	r0, #0
8780079c:	08bd8010 	popeq	{r4, pc}
878007a0:	e5c04009 	strb	r4, [r0, #9]
878007a4:	e2803014 	add	r3, r0, #20
878007a8:	e5803018 	str	r3, [r0, #24]
878007ac:	e3e02000 	mvn	r2, #0
878007b0:	e5803014 	str	r3, [r0, #20]
878007b4:	e3a03001 	mov	r3, #1
878007b8:	e1c031bc 	strh	r3, [r0, #28]
878007bc:	e3a03000 	mov	r3, #0
878007c0:	e5803020 	str	r3, [r0, #32]
878007c4:	e5c0201e 	strb	r2, [r0, #30]
878007c8:	e5c0301f 	strb	r3, [r0, #31]
878007cc:	e8bd8010 	pop	{r4, pc}

878007d0 <rt_mutex_delete>:
878007d0:	e92d4010 	push	{r4, lr}
878007d4:	e1a04000 	mov	r4, r0
878007d8:	e2800014 	add	r0, r0, #20
878007dc:	ebffff17 	bl	87800440 <rt_ipc_list_resume_all>
878007e0:	e1a00004 	mov	r0, r4
878007e4:	eb0008b7 	bl	87802ac8 <rt_object_delete>
878007e8:	e3a00000 	mov	r0, #0
878007ec:	e8bd8010 	pop	{r4, pc}

878007f0 <rt_mutex_take>:
878007f0:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
878007f4:	e1a04000 	mov	r4, r0
878007f8:	e58d1004 	str	r1, [sp, #4]
878007fc:	eb000a1a 	bl	8780306c <rt_thread_self>
87800800:	e1a05000 	mov	r5, r0
87800804:	ebfffe79 	bl	878001f0 <rt_hw_interrupt_disable>
87800808:	e3a03000 	mov	r3, #0
8780080c:	e1a06000 	mov	r6, r0
87800810:	e5853030 	str	r3, [r5, #48]	; 0x30
87800814:	e5943020 	ldr	r3, [r4, #32]
87800818:	e1550003 	cmp	r5, r3
8780081c:	12858035 	addne	r8, r5, #53	; 0x35
87800820:	12849014 	addne	r9, r4, #20
87800824:	0a000007 	beq	87800848 <rt_mutex_take+0x58>
87800828:	e1d431bc 	ldrh	r3, [r4, #28]
8780082c:	e3530000 	cmp	r3, #0
87800830:	0a000008 	beq	87800858 <rt_mutex_take+0x68>
87800834:	e5845020 	str	r5, [r4, #32]
87800838:	e2433001 	sub	r3, r3, #1
8780083c:	e1c431bc 	strh	r3, [r4, #28]
87800840:	e5d53035 	ldrb	r3, [r5, #53]	; 0x35
87800844:	e5c4301e 	strb	r3, [r4, #30]
87800848:	e5d4301f 	ldrb	r3, [r4, #31]
8780084c:	e2833001 	add	r3, r3, #1
87800850:	e5c4301f 	strb	r3, [r4, #31]
87800854:	ea000029 	b	87800900 <rt_mutex_take+0x110>
87800858:	e59d3004 	ldr	r3, [sp, #4]
8780085c:	e3530000 	cmp	r3, #0
87800860:	1a000005 	bne	8780087c <rt_mutex_take+0x8c>
87800864:	e3e04001 	mvn	r4, #1
87800868:	e1a00006 	mov	r0, r6
8780086c:	e5854030 	str	r4, [r5, #48]	; 0x30
87800870:	ebfffe61 	bl	878001fc <rt_hw_interrupt_enable>
87800874:	e1a00004 	mov	r0, r4
87800878:	ea000023 	b	8780090c <rt_mutex_take+0x11c>
8780087c:	e5940020 	ldr	r0, [r4, #32]
87800880:	e5d52035 	ldrb	r2, [r5, #53]	; 0x35
87800884:	e5d03035 	ldrb	r3, [r0, #53]	; 0x35
87800888:	e1520003 	cmp	r2, r3
8780088c:	2a000002 	bcs	8780089c <rt_mutex_take+0xac>
87800890:	e1a02008 	mov	r2, r8
87800894:	e3a01002 	mov	r1, #2
87800898:	eb000b01 	bl	878034a4 <rt_thread_control>
8780089c:	e5d42009 	ldrb	r2, [r4, #9]
878008a0:	e1a01005 	mov	r1, r5
878008a4:	e1a00009 	mov	r0, r9
878008a8:	ebfffefa 	bl	87800498 <rt_ipc_list_suspend>
878008ac:	e59d3004 	ldr	r3, [sp, #4]
878008b0:	e3530000 	cmp	r3, #0
878008b4:	da000006 	ble	878008d4 <rt_mutex_take+0xe4>
878008b8:	e285704c 	add	r7, r5, #76	; 0x4c
878008bc:	e28d2004 	add	r2, sp, #4
878008c0:	e3a01000 	mov	r1, #0
878008c4:	e1a00007 	mov	r0, r7
878008c8:	eb000bc8 	bl	878037f0 <rt_timer_control>
878008cc:	e1a00007 	mov	r0, r7
878008d0:	eb000b86 	bl	878036f0 <rt_timer_start>
878008d4:	e1a00006 	mov	r0, r6
878008d8:	ebfffe47 	bl	878001fc <rt_hw_interrupt_enable>
878008dc:	eb00090e 	bl	87802d1c <rt_schedule>
878008e0:	e5950030 	ldr	r0, [r5, #48]	; 0x30
878008e4:	e3500000 	cmp	r0, #0
878008e8:	0a000002 	beq	878008f8 <rt_mutex_take+0x108>
878008ec:	e3700009 	cmn	r0, #9
878008f0:	0affffcc 	beq	87800828 <rt_mutex_take+0x38>
878008f4:	ea000004 	b	8780090c <rt_mutex_take+0x11c>
878008f8:	ebfffe3c 	bl	878001f0 <rt_hw_interrupt_disable>
878008fc:	e1a06000 	mov	r6, r0
87800900:	e1a00006 	mov	r0, r6
87800904:	ebfffe3c 	bl	878001fc <rt_hw_interrupt_enable>
87800908:	e3a00000 	mov	r0, #0
8780090c:	e28dd00c 	add	sp, sp, #12
87800910:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}

87800914 <rt_mutex_release>:
87800914:	e92d4070 	push	{r4, r5, r6, lr}
87800918:	e1a04000 	mov	r4, r0
8780091c:	eb0009d2 	bl	8780306c <rt_thread_self>
87800920:	e1a06000 	mov	r6, r0
87800924:	ebfffe31 	bl	878001f0 <rt_hw_interrupt_disable>
87800928:	e5943020 	ldr	r3, [r4, #32]
8780092c:	e1560003 	cmp	r6, r3
87800930:	0a000004 	beq	87800948 <rt_mutex_release+0x34>
87800934:	e3e04000 	mvn	r4, #0
87800938:	e5864030 	str	r4, [r6, #48]	; 0x30
8780093c:	ebfffe2e 	bl	878001fc <rt_hw_interrupt_enable>
87800940:	e1a00004 	mov	r0, r4
87800944:	e8bd8070 	pop	{r4, r5, r6, pc}
87800948:	e5d4301f 	ldrb	r3, [r4, #31]
8780094c:	e1a05000 	mov	r5, r0
87800950:	e2433001 	sub	r3, r3, #1
87800954:	e6ef3073 	uxtb	r3, r3
87800958:	e5c4301f 	strb	r3, [r4, #31]
8780095c:	e3530000 	cmp	r3, #0
87800960:	13a04000 	movne	r4, #0
87800964:	1a00001d 	bne	878009e0 <rt_mutex_release+0xcc>
87800968:	e5d4201e 	ldrb	r2, [r4, #30]
8780096c:	e5d63035 	ldrb	r3, [r6, #53]	; 0x35
87800970:	e1520003 	cmp	r2, r3
87800974:	0a000003 	beq	87800988 <rt_mutex_release+0x74>
87800978:	e284201e 	add	r2, r4, #30
8780097c:	e3a01002 	mov	r1, #2
87800980:	e1a00006 	mov	r0, r6
87800984:	eb000ac6 	bl	878034a4 <rt_thread_control>
87800988:	e1a03004 	mov	r3, r4
8780098c:	e5b30014 	ldr	r0, [r3, #20]!
87800990:	e1500003 	cmp	r0, r3
87800994:	0a000009 	beq	878009c0 <rt_mutex_release+0xac>
87800998:	e2403014 	sub	r3, r0, #20
8780099c:	e5843020 	str	r3, [r4, #32]
878009a0:	e5d03021 	ldrb	r3, [r0, #33]	; 0x21
878009a4:	e5c4301e 	strb	r3, [r4, #30]
878009a8:	e5d4301f 	ldrb	r3, [r4, #31]
878009ac:	e2833001 	add	r3, r3, #1
878009b0:	e5c4301f 	strb	r3, [r4, #31]
878009b4:	e3a04001 	mov	r4, #1
878009b8:	ebfffeb1 	bl	87800484 <rt_ipc_list_resume.isra.0>
878009bc:	ea000007 	b	878009e0 <rt_mutex_release+0xcc>
878009c0:	e1d431bc 	ldrh	r3, [r4, #28]
878009c4:	e3e02000 	mvn	r2, #0
878009c8:	e5c4201e 	strb	r2, [r4, #30]
878009cc:	e2833001 	add	r3, r3, #1
878009d0:	e1c431bc 	strh	r3, [r4, #28]
878009d4:	e3a03000 	mov	r3, #0
878009d8:	e5843020 	str	r3, [r4, #32]
878009dc:	e1a04003 	mov	r4, r3
878009e0:	e1a00005 	mov	r0, r5
878009e4:	ebfffe04 	bl	878001fc <rt_hw_interrupt_enable>
878009e8:	e3540001 	cmp	r4, #1
878009ec:	1a000000 	bne	878009f4 <rt_mutex_release+0xe0>
878009f0:	eb0008c9 	bl	87802d1c <rt_schedule>
878009f4:	e3a00000 	mov	r0, #0
878009f8:	e8bd8070 	pop	{r4, r5, r6, pc}

878009fc <rt_mutex_control>:
878009fc:	e3e00000 	mvn	r0, #0
87800a00:	e12fff1e 	bx	lr

87800a04 <rt_event_init>:
87800a04:	e92d4070 	push	{r4, r5, r6, lr}
87800a08:	e1a04000 	mov	r4, r0
87800a0c:	e1a05002 	mov	r5, r2
87800a10:	e1a02001 	mov	r2, r1
87800a14:	e3a01004 	mov	r1, #4
87800a18:	eb0007e0 	bl	878029a0 <rt_object_init>
87800a1c:	e5c45009 	strb	r5, [r4, #9]
87800a20:	e2843014 	add	r3, r4, #20
87800a24:	e5843018 	str	r3, [r4, #24]
87800a28:	e3a00000 	mov	r0, #0
87800a2c:	e5843014 	str	r3, [r4, #20]
87800a30:	e584001c 	str	r0, [r4, #28]
87800a34:	e8bd8070 	pop	{r4, r5, r6, pc}

87800a38 <rt_event_detach>:
87800a38:	e92d4010 	push	{r4, lr}
87800a3c:	e1a04000 	mov	r4, r0
87800a40:	e2800014 	add	r0, r0, #20
87800a44:	ebfffe7d 	bl	87800440 <rt_ipc_list_resume_all>
87800a48:	e1a00004 	mov	r0, r4
87800a4c:	eb0007f1 	bl	87802a18 <rt_object_detach>
87800a50:	e3a00000 	mov	r0, #0
87800a54:	e8bd8010 	pop	{r4, pc}

87800a58 <rt_event_create>:
87800a58:	e92d4010 	push	{r4, lr}
87800a5c:	e1a04001 	mov	r4, r1
87800a60:	e1a01000 	mov	r1, r0
87800a64:	e3a00004 	mov	r0, #4
87800a68:	eb0007f9 	bl	87802a54 <rt_object_allocate>
87800a6c:	e3500000 	cmp	r0, #0
87800a70:	12803014 	addne	r3, r0, #20
87800a74:	15803018 	strne	r3, [r0, #24]
87800a78:	15803014 	strne	r3, [r0, #20]
87800a7c:	13a03000 	movne	r3, #0
87800a80:	15c04009 	strbne	r4, [r0, #9]
87800a84:	1580301c 	strne	r3, [r0, #28]
87800a88:	e8bd8010 	pop	{r4, pc}

87800a8c <rt_event_delete>:
87800a8c:	e92d4010 	push	{r4, lr}
87800a90:	e1a04000 	mov	r4, r0
87800a94:	e2800014 	add	r0, r0, #20
87800a98:	ebfffe68 	bl	87800440 <rt_ipc_list_resume_all>
87800a9c:	e1a00004 	mov	r0, r4
87800aa0:	eb000808 	bl	87802ac8 <rt_object_delete>
87800aa4:	e3a00000 	mov	r0, #0
87800aa8:	e8bd8010 	pop	{r4, pc}

87800aac <rt_event_send>:
87800aac:	e3510000 	cmp	r1, #0
87800ab0:	0a000031 	beq	87800b7c <rt_event_send+0xd0>
87800ab4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
87800ab8:	e1a04000 	mov	r4, r0
87800abc:	e1a05001 	mov	r5, r1
87800ac0:	ebfffdca 	bl	878001f0 <rt_hw_interrupt_disable>
87800ac4:	e594101c 	ldr	r1, [r4, #28]
87800ac8:	e1a06000 	mov	r6, r0
87800acc:	e5940014 	ldr	r0, [r4, #20]
87800ad0:	e2847014 	add	r7, r4, #20
87800ad4:	e1815005 	orr	r5, r1, r5
87800ad8:	e1570000 	cmp	r7, r0
87800adc:	e584501c 	str	r5, [r4, #28]
87800ae0:	e3a05000 	mov	r5, #0
87800ae4:	0a00001e 	beq	87800b64 <rt_event_send+0xb8>
87800ae8:	e5d0202c 	ldrb	r2, [r0, #44]	; 0x2c
87800aec:	e2123001 	ands	r3, r2, #1
87800af0:	0a000005 	beq	87800b0c <rt_event_send+0x60>
87800af4:	e5903028 	ldr	r3, [r0, #40]	; 0x28
87800af8:	e594101c 	ldr	r1, [r4, #28]
87800afc:	e1d33001 	bics	r3, r3, r1
87800b00:	13e03000 	mvnne	r3, #0
87800b04:	03a03000 	moveq	r3, #0
87800b08:	ea000007 	b	87800b2c <rt_event_send+0x80>
87800b0c:	e3120002 	tst	r2, #2
87800b10:	0a000004 	beq	87800b28 <rt_event_send+0x7c>
87800b14:	e5901028 	ldr	r1, [r0, #40]	; 0x28
87800b18:	e594c01c 	ldr	ip, [r4, #28]
87800b1c:	e011100c 	ands	r1, r1, ip
87800b20:	15801028 	strne	r1, [r0, #40]	; 0x28
87800b24:	1a000000 	bne	87800b2c <rt_event_send+0x80>
87800b28:	e3e03000 	mvn	r3, #0
87800b2c:	e5908000 	ldr	r8, [r0]
87800b30:	e3530000 	cmp	r3, #0
87800b34:	1a000007 	bne	87800b58 <rt_event_send+0xac>
87800b38:	e3120004 	tst	r2, #4
87800b3c:	e2400014 	sub	r0, r0, #20
87800b40:	e3a05001 	mov	r5, #1
87800b44:	1590203c 	ldrne	r2, [r0, #60]	; 0x3c
87800b48:	1594301c 	ldrne	r3, [r4, #28]
87800b4c:	11c33002 	bicne	r3, r3, r2
87800b50:	1584301c 	strne	r3, [r4, #28]
87800b54:	eb000a27 	bl	878033f8 <rt_thread_resume>
87800b58:	e1570008 	cmp	r7, r8
87800b5c:	11a00008 	movne	r0, r8
87800b60:	1affffe0 	bne	87800ae8 <rt_event_send+0x3c>
87800b64:	e1a00006 	mov	r0, r6
87800b68:	ebfffda3 	bl	878001fc <rt_hw_interrupt_enable>
87800b6c:	e3550001 	cmp	r5, #1
87800b70:	1a000003 	bne	87800b84 <rt_event_send+0xd8>
87800b74:	eb000868 	bl	87802d1c <rt_schedule>
87800b78:	ea000001 	b	87800b84 <rt_event_send+0xd8>
87800b7c:	e3e00000 	mvn	r0, #0
87800b80:	e12fff1e 	bx	lr
87800b84:	e3a00000 	mov	r0, #0
87800b88:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

87800b8c <rt_event_recv>:
87800b8c:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
87800b90:	e3510000 	cmp	r1, #0
87800b94:	e58d3004 	str	r3, [sp, #4]
87800b98:	03e00000 	mvneq	r0, #0
87800b9c:	e59d8028 	ldr	r8, [sp, #40]	; 0x28
87800ba0:	0a000042 	beq	87800cb0 <rt_event_recv+0x124>
87800ba4:	e1a07002 	mov	r7, r2
87800ba8:	e1a06001 	mov	r6, r1
87800bac:	e1a05000 	mov	r5, r0
87800bb0:	eb00092d 	bl	8780306c <rt_thread_self>
87800bb4:	e3a03000 	mov	r3, #0
87800bb8:	e1a04000 	mov	r4, r0
87800bbc:	e5803030 	str	r3, [r0, #48]	; 0x30
87800bc0:	ebfffd8a 	bl	878001f0 <rt_hw_interrupt_disable>
87800bc4:	e3170001 	tst	r7, #1
87800bc8:	e1a09000 	mov	r9, r0
87800bcc:	0a000003 	beq	87800be0 <rt_event_recv+0x54>
87800bd0:	e595301c 	ldr	r3, [r5, #28]
87800bd4:	e1d63003 	bics	r3, r6, r3
87800bd8:	1a000005 	bne	87800bf4 <rt_event_recv+0x68>
87800bdc:	ea00002a 	b	87800c8c <rt_event_recv+0x100>
87800be0:	e3170002 	tst	r7, #2
87800be4:	0a000002 	beq	87800bf4 <rt_event_recv+0x68>
87800be8:	e595301c 	ldr	r3, [r5, #28]
87800bec:	e1160003 	tst	r6, r3
87800bf0:	1a000025 	bne	87800c8c <rt_event_recv+0x100>
87800bf4:	e59d3004 	ldr	r3, [sp, #4]
87800bf8:	e3530000 	cmp	r3, #0
87800bfc:	1a000005 	bne	87800c18 <rt_event_recv+0x8c>
87800c00:	e3e05001 	mvn	r5, #1
87800c04:	e1a00009 	mov	r0, r9
87800c08:	e5845030 	str	r5, [r4, #48]	; 0x30
87800c0c:	ebfffd7a 	bl	878001fc <rt_hw_interrupt_enable>
87800c10:	e1a00005 	mov	r0, r5
87800c14:	ea000025 	b	87800cb0 <rt_event_recv+0x124>
87800c18:	e584603c 	str	r6, [r4, #60]	; 0x3c
87800c1c:	e1a01004 	mov	r1, r4
87800c20:	e5c47040 	strb	r7, [r4, #64]	; 0x40
87800c24:	e2850014 	add	r0, r5, #20
87800c28:	e5d52009 	ldrb	r2, [r5, #9]
87800c2c:	ebfffe19 	bl	87800498 <rt_ipc_list_suspend>
87800c30:	e59d3004 	ldr	r3, [sp, #4]
87800c34:	e3530000 	cmp	r3, #0
87800c38:	da000006 	ble	87800c58 <rt_event_recv+0xcc>
87800c3c:	e284504c 	add	r5, r4, #76	; 0x4c
87800c40:	e28d2004 	add	r2, sp, #4
87800c44:	e3a01000 	mov	r1, #0
87800c48:	e1a00005 	mov	r0, r5
87800c4c:	eb000ae7 	bl	878037f0 <rt_timer_control>
87800c50:	e1a00005 	mov	r0, r5
87800c54:	eb000aa5 	bl	878036f0 <rt_timer_start>
87800c58:	e1a00009 	mov	r0, r9
87800c5c:	ebfffd66 	bl	878001fc <rt_hw_interrupt_enable>
87800c60:	eb00082d 	bl	87802d1c <rt_schedule>
87800c64:	e5940030 	ldr	r0, [r4, #48]	; 0x30
87800c68:	e3500000 	cmp	r0, #0
87800c6c:	1a00000f 	bne	87800cb0 <rt_event_recv+0x124>
87800c70:	ebfffd5e 	bl	878001f0 <rt_hw_interrupt_disable>
87800c74:	e3580000 	cmp	r8, #0
87800c78:	1594303c 	ldrne	r3, [r4, #60]	; 0x3c
87800c7c:	15883000 	strne	r3, [r8]
87800c80:	ebfffd5d 	bl	878001fc <rt_hw_interrupt_enable>
87800c84:	e5940030 	ldr	r0, [r4, #48]	; 0x30
87800c88:	ea000008 	b	87800cb0 <rt_event_recv+0x124>
87800c8c:	e3580000 	cmp	r8, #0
87800c90:	1595301c 	ldrne	r3, [r5, #28]
87800c94:	10033006 	andne	r3, r3, r6
87800c98:	15883000 	strne	r3, [r8]
87800c9c:	e3170004 	tst	r7, #4
87800ca0:	1595101c 	ldrne	r1, [r5, #28]
87800ca4:	11c16006 	bicne	r6, r1, r6
87800ca8:	1585601c 	strne	r6, [r5, #28]
87800cac:	eafffff3 	b	87800c80 <rt_event_recv+0xf4>
87800cb0:	e28dd00c 	add	sp, sp, #12
87800cb4:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}

87800cb8 <rt_event_control>:
87800cb8:	e3510001 	cmp	r1, #1
87800cbc:	1a00000c 	bne	87800cf4 <rt_event_control+0x3c>
87800cc0:	e92d4070 	push	{r4, r5, r6, lr}
87800cc4:	e1a05000 	mov	r5, r0
87800cc8:	e3a04000 	mov	r4, #0
87800ccc:	ebfffd47 	bl	878001f0 <rt_hw_interrupt_disable>
87800cd0:	e1a06000 	mov	r6, r0
87800cd4:	e2850014 	add	r0, r5, #20
87800cd8:	ebfffdd8 	bl	87800440 <rt_ipc_list_resume_all>
87800cdc:	e585401c 	str	r4, [r5, #28]
87800ce0:	e1a00006 	mov	r0, r6
87800ce4:	ebfffd44 	bl	878001fc <rt_hw_interrupt_enable>
87800ce8:	eb00080b 	bl	87802d1c <rt_schedule>
87800cec:	e1a00004 	mov	r0, r4
87800cf0:	e8bd8070 	pop	{r4, r5, r6, pc}
87800cf4:	e3e00000 	mvn	r0, #0
87800cf8:	e12fff1e 	bx	lr

87800cfc <rt_mb_init>:
87800cfc:	e92d4070 	push	{r4, r5, r6, lr}
87800d00:	e1a06002 	mov	r6, r2
87800d04:	e1a02001 	mov	r2, r1
87800d08:	e3a01005 	mov	r1, #5
87800d0c:	e1a04000 	mov	r4, r0
87800d10:	e1a05003 	mov	r5, r3
87800d14:	eb000721 	bl	878029a0 <rt_object_init>
87800d18:	e5dd3010 	ldrb	r3, [sp, #16]
87800d1c:	e3a00000 	mov	r0, #0
87800d20:	e584601c 	str	r6, [r4, #28]
87800d24:	e2842014 	add	r2, r4, #20
87800d28:	e5c43009 	strb	r3, [r4, #9]
87800d2c:	e2843028 	add	r3, r4, #40	; 0x28
87800d30:	e5842018 	str	r2, [r4, #24]
87800d34:	e5842014 	str	r2, [r4, #20]
87800d38:	e1c452b0 	strh	r5, [r4, #32]
87800d3c:	e1c402b2 	strh	r0, [r4, #34]	; 0x22
87800d40:	e1c402b4 	strh	r0, [r4, #36]	; 0x24
87800d44:	e1c402b6 	strh	r0, [r4, #38]	; 0x26
87800d48:	e584302c 	str	r3, [r4, #44]	; 0x2c
87800d4c:	e5843028 	str	r3, [r4, #40]	; 0x28
87800d50:	e8bd8070 	pop	{r4, r5, r6, pc}

87800d54 <rt_mb_detach>:
87800d54:	e92d4010 	push	{r4, lr}
87800d58:	e1a04000 	mov	r4, r0
87800d5c:	e2800014 	add	r0, r0, #20
87800d60:	ebfffdb6 	bl	87800440 <rt_ipc_list_resume_all>
87800d64:	e2840028 	add	r0, r4, #40	; 0x28
87800d68:	ebfffdb4 	bl	87800440 <rt_ipc_list_resume_all>
87800d6c:	e1a00004 	mov	r0, r4
87800d70:	eb000728 	bl	87802a18 <rt_object_detach>
87800d74:	e3a00000 	mov	r0, #0
87800d78:	e8bd8010 	pop	{r4, pc}

87800d7c <rt_mb_create>:
87800d7c:	e92d4070 	push	{r4, r5, r6, lr}
87800d80:	e1a05001 	mov	r5, r1
87800d84:	e1a01000 	mov	r1, r0
87800d88:	e3a00005 	mov	r0, #5
87800d8c:	e1a06002 	mov	r6, r2
87800d90:	eb00072f 	bl	87802a54 <rt_object_allocate>
87800d94:	e2504000 	subs	r4, r0, #0
87800d98:	0a000016 	beq	87800df8 <rt_mb_create+0x7c>
87800d9c:	e1c452b0 	strh	r5, [r4, #32]
87800da0:	e6ff0075 	uxth	r0, r5
87800da4:	e5c46009 	strb	r6, [r4, #9]
87800da8:	e2843014 	add	r3, r4, #20
87800dac:	e5843018 	str	r3, [r4, #24]
87800db0:	e5843014 	str	r3, [r4, #20]
87800db4:	e1a00100 	lsl	r0, r0, #2
87800db8:	eb0005c8 	bl	878024e0 <rt_malloc>
87800dbc:	e584001c 	str	r0, [r4, #28]
87800dc0:	e3500000 	cmp	r0, #0
87800dc4:	e1a05000 	mov	r5, r0
87800dc8:	e3a03000 	mov	r3, #0
87800dcc:	1a000003 	bne	87800de0 <rt_mb_create+0x64>
87800dd0:	e1a00004 	mov	r0, r4
87800dd4:	eb00073b 	bl	87802ac8 <rt_object_delete>
87800dd8:	e1a00005 	mov	r0, r5
87800ddc:	e8bd8070 	pop	{r4, r5, r6, pc}
87800de0:	e1c432b2 	strh	r3, [r4, #34]	; 0x22
87800de4:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
87800de8:	e1c432b6 	strh	r3, [r4, #38]	; 0x26
87800dec:	e2843028 	add	r3, r4, #40	; 0x28
87800df0:	e584302c 	str	r3, [r4, #44]	; 0x2c
87800df4:	e5843028 	str	r3, [r4, #40]	; 0x28
87800df8:	e1a00004 	mov	r0, r4
87800dfc:	e8bd8070 	pop	{r4, r5, r6, pc}

87800e00 <rt_mb_delete>:
87800e00:	e92d4010 	push	{r4, lr}
87800e04:	e1a04000 	mov	r4, r0
87800e08:	e2800014 	add	r0, r0, #20
87800e0c:	ebfffd8b 	bl	87800440 <rt_ipc_list_resume_all>
87800e10:	e2840028 	add	r0, r4, #40	; 0x28
87800e14:	ebfffd89 	bl	87800440 <rt_ipc_list_resume_all>
87800e18:	e594001c 	ldr	r0, [r4, #28]
87800e1c:	eb00061d 	bl	87802698 <rt_free>
87800e20:	e1a00004 	mov	r0, r4
87800e24:	eb000727 	bl	87802ac8 <rt_object_delete>
87800e28:	e3a00000 	mov	r0, #0
87800e2c:	e8bd8010 	pop	{r4, pc}

87800e30 <rt_mb_send_wait>:
87800e30:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
87800e34:	e1a04000 	mov	r4, r0
87800e38:	e58d2004 	str	r2, [sp, #4]
87800e3c:	e1a09001 	mov	r9, r1
87800e40:	eb000889 	bl	8780306c <rt_thread_self>
87800e44:	e1a07000 	mov	r7, r0
87800e48:	ebfffce8 	bl	878001f0 <rt_hw_interrupt_disable>
87800e4c:	e1d422b2 	ldrh	r2, [r4, #34]	; 0x22
87800e50:	e1a06000 	mov	r6, r0
87800e54:	e1d412b0 	ldrh	r1, [r4, #32]
87800e58:	e1520001 	cmp	r2, r1
87800e5c:	1a000033 	bne	87800f30 <rt_mb_send_wait+0x100>
87800e60:	e59d3004 	ldr	r3, [sp, #4]
87800e64:	e3530000 	cmp	r3, #0
87800e68:	0a00002d 	beq	87800f24 <rt_mb_send_wait+0xf4>
87800e6c:	e3a05000 	mov	r5, #0
87800e70:	e284b028 	add	fp, r4, #40	; 0x28
87800e74:	e1a0a005 	mov	sl, r5
87800e78:	e287804c 	add	r8, r7, #76	; 0x4c
87800e7c:	ea00001f 	b	87800f00 <rt_mb_send_wait+0xd0>
87800e80:	e5d42009 	ldrb	r2, [r4, #9]
87800e84:	e1a01007 	mov	r1, r7
87800e88:	e1a0000b 	mov	r0, fp
87800e8c:	ebfffd81 	bl	87800498 <rt_ipc_list_suspend>
87800e90:	e59d3004 	ldr	r3, [sp, #4]
87800e94:	e3530000 	cmp	r3, #0
87800e98:	da000007 	ble	87800ebc <rt_mb_send_wait+0x8c>
87800e9c:	ebfffd34 	bl	87800374 <rt_tick_get>
87800ea0:	e1a05000 	mov	r5, r0
87800ea4:	e28d2004 	add	r2, sp, #4
87800ea8:	e3a01000 	mov	r1, #0
87800eac:	e1a00008 	mov	r0, r8
87800eb0:	eb000a4e 	bl	878037f0 <rt_timer_control>
87800eb4:	e1a00008 	mov	r0, r8
87800eb8:	eb000a0c 	bl	878036f0 <rt_timer_start>
87800ebc:	e1a00006 	mov	r0, r6
87800ec0:	ebfffccd 	bl	878001fc <rt_hw_interrupt_enable>
87800ec4:	eb000794 	bl	87802d1c <rt_schedule>
87800ec8:	e5970030 	ldr	r0, [r7, #48]	; 0x30
87800ecc:	e3500000 	cmp	r0, #0
87800ed0:	1a00002b 	bne	87800f84 <rt_mb_send_wait+0x154>
87800ed4:	ebfffcc5 	bl	878001f0 <rt_hw_interrupt_disable>
87800ed8:	e59d3004 	ldr	r3, [sp, #4]
87800edc:	e1a06000 	mov	r6, r0
87800ee0:	e3530000 	cmp	r3, #0
87800ee4:	da000005 	ble	87800f00 <rt_mb_send_wait+0xd0>
87800ee8:	ebfffd21 	bl	87800374 <rt_tick_get>
87800eec:	e59d3004 	ldr	r3, [sp, #4]
87800ef0:	e0655000 	rsb	r5, r5, r0
87800ef4:	e0533005 	subs	r3, r3, r5
87800ef8:	43a03000 	movmi	r3, #0
87800efc:	e58d3004 	str	r3, [sp, #4]
87800f00:	e1d422b2 	ldrh	r2, [r4, #34]	; 0x22
87800f04:	e1d412b0 	ldrh	r1, [r4, #32]
87800f08:	e1520001 	cmp	r2, r1
87800f0c:	1a000007 	bne	87800f30 <rt_mb_send_wait+0x100>
87800f10:	e59d3004 	ldr	r3, [sp, #4]
87800f14:	e587a030 	str	sl, [r7, #48]	; 0x30
87800f18:	e3530000 	cmp	r3, #0
87800f1c:	1affffd7 	bne	87800e80 <rt_mb_send_wait+0x50>
87800f20:	e1a00006 	mov	r0, r6
87800f24:	ebfffcb4 	bl	878001fc <rt_hw_interrupt_enable>
87800f28:	e3e00002 	mvn	r0, #2
87800f2c:	ea000014 	b	87800f84 <rt_mb_send_wait+0x154>
87800f30:	e1d432b4 	ldrh	r3, [r4, #36]	; 0x24
87800f34:	e2822001 	add	r2, r2, #1
87800f38:	e594001c 	ldr	r0, [r4, #28]
87800f3c:	e7809103 	str	r9, [r0, r3, lsl #2]
87800f40:	e2833001 	add	r3, r3, #1
87800f44:	e1c422b2 	strh	r2, [r4, #34]	; 0x22
87800f48:	e6ff3073 	uxth	r3, r3
87800f4c:	e1530001 	cmp	r3, r1
87800f50:	23a03000 	movcs	r3, #0
87800f54:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
87800f58:	e5b40014 	ldr	r0, [r4, #20]!
87800f5c:	e1500004 	cmp	r0, r4
87800f60:	0a000004 	beq	87800f78 <rt_mb_send_wait+0x148>
87800f64:	ebfffd46 	bl	87800484 <rt_ipc_list_resume.isra.0>
87800f68:	e1a00006 	mov	r0, r6
87800f6c:	ebfffca2 	bl	878001fc <rt_hw_interrupt_enable>
87800f70:	eb000769 	bl	87802d1c <rt_schedule>
87800f74:	ea000001 	b	87800f80 <rt_mb_send_wait+0x150>
87800f78:	e1a00006 	mov	r0, r6
87800f7c:	ebfffc9e 	bl	878001fc <rt_hw_interrupt_enable>
87800f80:	e3a00000 	mov	r0, #0
87800f84:	e28dd00c 	add	sp, sp, #12
87800f88:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

87800f8c <rt_mb_send>:
87800f8c:	e3a02000 	mov	r2, #0
87800f90:	eaffffa6 	b	87800e30 <rt_mb_send_wait>

87800f94 <rt_mb_recv>:
87800f94:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
87800f98:	e1a04000 	mov	r4, r0
87800f9c:	e58d2004 	str	r2, [sp, #4]
87800fa0:	e1a09001 	mov	r9, r1
87800fa4:	eb000830 	bl	8780306c <rt_thread_self>
87800fa8:	e1a07000 	mov	r7, r0
87800fac:	ebfffc8f 	bl	878001f0 <rt_hw_interrupt_disable>
87800fb0:	e1d4b2b2 	ldrh	fp, [r4, #34]	; 0x22
87800fb4:	e1a05000 	mov	r5, r0
87800fb8:	e35b0000 	cmp	fp, #0
87800fbc:	1a000034 	bne	87801094 <rt_mb_recv+0x100>
87800fc0:	e59d3004 	ldr	r3, [sp, #4]
87800fc4:	e3530000 	cmp	r3, #0
87800fc8:	11a0600b 	movne	r6, fp
87800fcc:	1284a014 	addne	sl, r4, #20
87800fd0:	1287804c 	addne	r8, r7, #76	; 0x4c
87800fd4:	1a000022 	bne	87801064 <rt_mb_recv+0xd0>
87800fd8:	ebfffc87 	bl	878001fc <rt_hw_interrupt_enable>
87800fdc:	e3e00001 	mvn	r0, #1
87800fe0:	ea000043 	b	878010f4 <rt_mb_recv+0x160>
87800fe4:	e5d42009 	ldrb	r2, [r4, #9]
87800fe8:	e1a01007 	mov	r1, r7
87800fec:	e1a0000a 	mov	r0, sl
87800ff0:	ebfffd28 	bl	87800498 <rt_ipc_list_suspend>
87800ff4:	e59d3004 	ldr	r3, [sp, #4]
87800ff8:	e3530000 	cmp	r3, #0
87800ffc:	da000007 	ble	87801020 <rt_mb_recv+0x8c>
87801000:	ebfffcdb 	bl	87800374 <rt_tick_get>
87801004:	e1a06000 	mov	r6, r0
87801008:	e28d2004 	add	r2, sp, #4
8780100c:	e1a0100b 	mov	r1, fp
87801010:	e1a00008 	mov	r0, r8
87801014:	eb0009f5 	bl	878037f0 <rt_timer_control>
87801018:	e1a00008 	mov	r0, r8
8780101c:	eb0009b3 	bl	878036f0 <rt_timer_start>
87801020:	e1a00005 	mov	r0, r5
87801024:	ebfffc74 	bl	878001fc <rt_hw_interrupt_enable>
87801028:	eb00073b 	bl	87802d1c <rt_schedule>
8780102c:	e5970030 	ldr	r0, [r7, #48]	; 0x30
87801030:	e3500000 	cmp	r0, #0
87801034:	1a00002e 	bne	878010f4 <rt_mb_recv+0x160>
87801038:	ebfffc6c 	bl	878001f0 <rt_hw_interrupt_disable>
8780103c:	e59d3004 	ldr	r3, [sp, #4]
87801040:	e1a05000 	mov	r5, r0
87801044:	e3530000 	cmp	r3, #0
87801048:	da000005 	ble	87801064 <rt_mb_recv+0xd0>
8780104c:	ebfffcc8 	bl	87800374 <rt_tick_get>
87801050:	e59d3004 	ldr	r3, [sp, #4]
87801054:	e0666000 	rsb	r6, r6, r0
87801058:	e0533006 	subs	r3, r3, r6
8780105c:	43a03000 	movmi	r3, #0
87801060:	e58d3004 	str	r3, [sp, #4]
87801064:	e1d4b2b2 	ldrh	fp, [r4, #34]	; 0x22
87801068:	e35b0000 	cmp	fp, #0
8780106c:	1a000008 	bne	87801094 <rt_mb_recv+0x100>
87801070:	e59d3004 	ldr	r3, [sp, #4]
87801074:	e587b030 	str	fp, [r7, #48]	; 0x30
87801078:	e3530000 	cmp	r3, #0
8780107c:	1affffd8 	bne	87800fe4 <rt_mb_recv+0x50>
87801080:	e1a00005 	mov	r0, r5
87801084:	ebfffc5c 	bl	878001fc <rt_hw_interrupt_enable>
87801088:	e3e00001 	mvn	r0, #1
8780108c:	e5870030 	str	r0, [r7, #48]	; 0x30
87801090:	ea000017 	b	878010f4 <rt_mb_recv+0x160>
87801094:	e1d432b6 	ldrh	r3, [r4, #38]	; 0x26
87801098:	e24bb001 	sub	fp, fp, #1
8780109c:	e594201c 	ldr	r2, [r4, #28]
878010a0:	e7922103 	ldr	r2, [r2, r3, lsl #2]
878010a4:	e2833001 	add	r3, r3, #1
878010a8:	e6ff3073 	uxth	r3, r3
878010ac:	e5892000 	str	r2, [r9]
878010b0:	e1d422b0 	ldrh	r2, [r4, #32]
878010b4:	e1c432b6 	strh	r3, [r4, #38]	; 0x26
878010b8:	e1520003 	cmp	r2, r3
878010bc:	e1c4b2b2 	strh	fp, [r4, #34]	; 0x22
878010c0:	93a03000 	movls	r3, #0
878010c4:	91c432b6 	strhls	r3, [r4, #38]	; 0x26
878010c8:	e5b40028 	ldr	r0, [r4, #40]!	; 0x28
878010cc:	e1500004 	cmp	r0, r4
878010d0:	0a000004 	beq	878010e8 <rt_mb_recv+0x154>
878010d4:	ebfffcea 	bl	87800484 <rt_ipc_list_resume.isra.0>
878010d8:	e1a00005 	mov	r0, r5
878010dc:	ebfffc46 	bl	878001fc <rt_hw_interrupt_enable>
878010e0:	eb00070d 	bl	87802d1c <rt_schedule>
878010e4:	ea000001 	b	878010f0 <rt_mb_recv+0x15c>
878010e8:	e1a00005 	mov	r0, r5
878010ec:	ebfffc42 	bl	878001fc <rt_hw_interrupt_enable>
878010f0:	e3a00000 	mov	r0, #0
878010f4:	e28dd00c 	add	sp, sp, #12
878010f8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

878010fc <rt_mb_control>:
878010fc:	e3510001 	cmp	r1, #1
87801100:	1a000010 	bne	87801148 <rt_mb_control+0x4c>
87801104:	e92d4070 	push	{r4, r5, r6, lr}
87801108:	e1a05000 	mov	r5, r0
8780110c:	e3a04000 	mov	r4, #0
87801110:	ebfffc36 	bl	878001f0 <rt_hw_interrupt_disable>
87801114:	e1a06000 	mov	r6, r0
87801118:	e2850014 	add	r0, r5, #20
8780111c:	ebfffcc7 	bl	87800440 <rt_ipc_list_resume_all>
87801120:	e2850028 	add	r0, r5, #40	; 0x28
87801124:	ebfffcc5 	bl	87800440 <rt_ipc_list_resume_all>
87801128:	e1c542b2 	strh	r4, [r5, #34]	; 0x22
8780112c:	e1a00006 	mov	r0, r6
87801130:	e1c542b4 	strh	r4, [r5, #36]	; 0x24
87801134:	e1c542b6 	strh	r4, [r5, #38]	; 0x26
87801138:	ebfffc2f 	bl	878001fc <rt_hw_interrupt_enable>
8780113c:	eb0006f6 	bl	87802d1c <rt_schedule>
87801140:	e1a00004 	mov	r0, r4
87801144:	e8bd8070 	pop	{r4, r5, r6, pc}
87801148:	e3e00000 	mvn	r0, #0
8780114c:	e12fff1e 	bx	lr

87801150 <rt_mq_init>:
87801150:	e92d4070 	push	{r4, r5, r6, lr}
87801154:	e1a05003 	mov	r5, r3
87801158:	e1a06002 	mov	r6, r2
8780115c:	e2855003 	add	r5, r5, #3
87801160:	e3c55003 	bic	r5, r5, #3
87801164:	e1a02001 	mov	r2, r1
87801168:	e3a01006 	mov	r1, #6
8780116c:	e1a04000 	mov	r4, r0
87801170:	e6ff5075 	uxth	r5, r5
87801174:	eb000609 	bl	878029a0 <rt_object_init>
87801178:	e5dd3014 	ldrb	r3, [sp, #20]
8780117c:	e1c452b0 	strh	r5, [r4, #32]
87801180:	e2855004 	add	r5, r5, #4
87801184:	e5c43009 	strb	r3, [r4, #9]
87801188:	e2843014 	add	r3, r4, #20
8780118c:	e5843018 	str	r3, [r4, #24]
87801190:	e1a01005 	mov	r1, r5
87801194:	e5843014 	str	r3, [r4, #20]
87801198:	e584601c 	str	r6, [r4, #28]
8780119c:	e59d0010 	ldr	r0, [sp, #16]
878011a0:	fa000a1e 	blx	87803a20 <__aeabi_uidiv>
878011a4:	e1c402b2 	strh	r0, [r4, #34]	; 0x22
878011a8:	e1a02006 	mov	r2, r6
878011ac:	e6ff0070 	uxth	r0, r0
878011b0:	e3a03000 	mov	r3, #0
878011b4:	e5843028 	str	r3, [r4, #40]	; 0x28
878011b8:	e584302c 	str	r3, [r4, #44]	; 0x2c
878011bc:	e5843030 	str	r3, [r4, #48]	; 0x30
878011c0:	e1530000 	cmp	r3, r0
878011c4:	aa000005 	bge	878011e0 <rt_mq_init+0x90>
878011c8:	e5941030 	ldr	r1, [r4, #48]	; 0x30
878011cc:	e2833001 	add	r3, r3, #1
878011d0:	e5821000 	str	r1, [r2]
878011d4:	e5842030 	str	r2, [r4, #48]	; 0x30
878011d8:	e0822005 	add	r2, r2, r5
878011dc:	eafffff7 	b	878011c0 <rt_mq_init+0x70>
878011e0:	e2843034 	add	r3, r4, #52	; 0x34
878011e4:	e3a00000 	mov	r0, #0
878011e8:	e1c402b4 	strh	r0, [r4, #36]	; 0x24
878011ec:	e5843038 	str	r3, [r4, #56]	; 0x38
878011f0:	e5843034 	str	r3, [r4, #52]	; 0x34
878011f4:	e8bd8070 	pop	{r4, r5, r6, pc}

878011f8 <rt_mq_detach>:
878011f8:	e92d4010 	push	{r4, lr}
878011fc:	e1a04000 	mov	r4, r0
87801200:	e2800014 	add	r0, r0, #20
87801204:	ebfffc8d 	bl	87800440 <rt_ipc_list_resume_all>
87801208:	e2840034 	add	r0, r4, #52	; 0x34
8780120c:	ebfffc8b 	bl	87800440 <rt_ipc_list_resume_all>
87801210:	e1a00004 	mov	r0, r4
87801214:	eb0005ff 	bl	87802a18 <rt_object_detach>
87801218:	e3a00000 	mov	r0, #0
8780121c:	e8bd8010 	pop	{r4, pc}

87801220 <rt_mq_create>:
87801220:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
87801224:	e1a05001 	mov	r5, r1
87801228:	e1a01000 	mov	r1, r0
8780122c:	e3a00006 	mov	r0, #6
87801230:	e1a06002 	mov	r6, r2
87801234:	e1a07003 	mov	r7, r3
87801238:	eb000605 	bl	87802a54 <rt_object_allocate>
8780123c:	e2504000 	subs	r4, r0, #0
87801240:	0a000029 	beq	878012ec <rt_mq_create+0xcc>
87801244:	e1c462b2 	strh	r6, [r4, #34]	; 0x22
87801248:	e2850003 	add	r0, r5, #3
8780124c:	e3c00003 	bic	r0, r0, #3
87801250:	e2843014 	add	r3, r4, #20
87801254:	e5843018 	str	r3, [r4, #24]
87801258:	e6ff0070 	uxth	r0, r0
8780125c:	e1c402b0 	strh	r0, [r4, #32]
87801260:	e6ff6076 	uxth	r6, r6
87801264:	e5843014 	str	r3, [r4, #20]
87801268:	e2800004 	add	r0, r0, #4
8780126c:	e5c47009 	strb	r7, [r4, #9]
87801270:	e0000096 	mul	r0, r6, r0
87801274:	eb000499 	bl	878024e0 <rt_malloc>
87801278:	e584001c 	str	r0, [r4, #28]
8780127c:	e3500000 	cmp	r0, #0
87801280:	e1a05000 	mov	r5, r0
87801284:	e3a03000 	mov	r3, #0
87801288:	1a000003 	bne	8780129c <rt_mq_create+0x7c>
8780128c:	e1a00004 	mov	r0, r4
87801290:	eb00060c 	bl	87802ac8 <rt_object_delete>
87801294:	e1a00005 	mov	r0, r5
87801298:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
8780129c:	e1d412b2 	ldrh	r1, [r4, #34]	; 0x22
878012a0:	e5843028 	str	r3, [r4, #40]	; 0x28
878012a4:	e584302c 	str	r3, [r4, #44]	; 0x2c
878012a8:	e5843030 	str	r3, [r4, #48]	; 0x30
878012ac:	e1530001 	cmp	r3, r1
878012b0:	aa000008 	bge	878012d8 <rt_mq_create+0xb8>
878012b4:	e1d422b0 	ldrh	r2, [r4, #32]
878012b8:	e594c030 	ldr	ip, [r4, #48]	; 0x30
878012bc:	e2822004 	add	r2, r2, #4
878012c0:	e0020293 	mul	r2, r3, r2
878012c4:	e2833001 	add	r3, r3, #1
878012c8:	e0850002 	add	r0, r5, r2
878012cc:	e785c002 	str	ip, [r5, r2]
878012d0:	e5840030 	str	r0, [r4, #48]	; 0x30
878012d4:	eafffff4 	b	878012ac <rt_mq_create+0x8c>
878012d8:	e3a03000 	mov	r3, #0
878012dc:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
878012e0:	e2843034 	add	r3, r4, #52	; 0x34
878012e4:	e5843038 	str	r3, [r4, #56]	; 0x38
878012e8:	e5843034 	str	r3, [r4, #52]	; 0x34
878012ec:	e1a00004 	mov	r0, r4
878012f0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

878012f4 <rt_mq_delete>:
878012f4:	e92d4010 	push	{r4, lr}
878012f8:	e1a04000 	mov	r4, r0
878012fc:	e2800014 	add	r0, r0, #20
87801300:	ebfffc4e 	bl	87800440 <rt_ipc_list_resume_all>
87801304:	e2840034 	add	r0, r4, #52	; 0x34
87801308:	ebfffc4c 	bl	87800440 <rt_ipc_list_resume_all>
8780130c:	e594001c 	ldr	r0, [r4, #28]
87801310:	eb0004e0 	bl	87802698 <rt_free>
87801314:	e1a00004 	mov	r0, r4
87801318:	eb0005ea 	bl	87802ac8 <rt_object_delete>
8780131c:	e3a00000 	mov	r0, #0
87801320:	e8bd8010 	pop	{r4, pc}

87801324 <rt_mq_send_wait>:
87801324:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
87801328:	e58d3004 	str	r3, [sp, #4]
8780132c:	e1d032b0 	ldrh	r3, [r0, #32]
87801330:	e1530002 	cmp	r3, r2
87801334:	33e00000 	mvncc	r0, #0
87801338:	3a00005d 	bcc	878014b4 <rt_mq_send_wait+0x190>
8780133c:	e58d2000 	str	r2, [sp]
87801340:	e1a04000 	mov	r4, r0
87801344:	e1a09001 	mov	r9, r1
87801348:	eb000747 	bl	8780306c <rt_thread_self>
8780134c:	e1a08000 	mov	r8, r0
87801350:	ebfffba6 	bl	878001f0 <rt_hw_interrupt_disable>
87801354:	e59d5004 	ldr	r5, [sp, #4]
87801358:	e1a07000 	mov	r7, r0
8780135c:	e5943030 	ldr	r3, [r4, #48]	; 0x30
87801360:	e3530000 	cmp	r3, #0
87801364:	03550000 	cmpeq	r5, #0
87801368:	03a05001 	moveq	r5, #1
8780136c:	13a05000 	movne	r5, #0
87801370:	1284b034 	addne	fp, r4, #52	; 0x34
87801374:	1288a04c 	addne	sl, r8, #76	; 0x4c
87801378:	1a000020 	bne	87801400 <rt_mq_send_wait+0xdc>
8780137c:	ea000027 	b	87801420 <rt_mq_send_wait+0xfc>
87801380:	e5d42009 	ldrb	r2, [r4, #9]
87801384:	e1a01008 	mov	r1, r8
87801388:	e1a0000b 	mov	r0, fp
8780138c:	ebfffc41 	bl	87800498 <rt_ipc_list_suspend>
87801390:	e59d2004 	ldr	r2, [sp, #4]
87801394:	e3520000 	cmp	r2, #0
87801398:	da000007 	ble	878013bc <rt_mq_send_wait+0x98>
8780139c:	ebfffbf4 	bl	87800374 <rt_tick_get>
878013a0:	e1a05000 	mov	r5, r0
878013a4:	e28d2004 	add	r2, sp, #4
878013a8:	e1a01006 	mov	r1, r6
878013ac:	e1a0000a 	mov	r0, sl
878013b0:	eb00090e 	bl	878037f0 <rt_timer_control>
878013b4:	e1a0000a 	mov	r0, sl
878013b8:	eb0008cc 	bl	878036f0 <rt_timer_start>
878013bc:	e1a00007 	mov	r0, r7
878013c0:	ebfffb8d 	bl	878001fc <rt_hw_interrupt_enable>
878013c4:	eb000654 	bl	87802d1c <rt_schedule>
878013c8:	e5980030 	ldr	r0, [r8, #48]	; 0x30
878013cc:	e3500000 	cmp	r0, #0
878013d0:	1a000037 	bne	878014b4 <rt_mq_send_wait+0x190>
878013d4:	ebfffb85 	bl	878001f0 <rt_hw_interrupt_disable>
878013d8:	e59d3004 	ldr	r3, [sp, #4]
878013dc:	e1a07000 	mov	r7, r0
878013e0:	e3530000 	cmp	r3, #0
878013e4:	da000005 	ble	87801400 <rt_mq_send_wait+0xdc>
878013e8:	ebfffbe1 	bl	87800374 <rt_tick_get>
878013ec:	e59d3004 	ldr	r3, [sp, #4]
878013f0:	e0655000 	rsb	r5, r5, r0
878013f4:	e0533005 	subs	r3, r3, r5
878013f8:	43a03000 	movmi	r3, #0
878013fc:	e58d3004 	str	r3, [sp, #4]
87801400:	e5946030 	ldr	r6, [r4, #48]	; 0x30
87801404:	e3560000 	cmp	r6, #0
87801408:	1a000007 	bne	8780142c <rt_mq_send_wait+0x108>
8780140c:	e59d2004 	ldr	r2, [sp, #4]
87801410:	e5886030 	str	r6, [r8, #48]	; 0x30
87801414:	e3520000 	cmp	r2, #0
87801418:	1affffd8 	bne	87801380 <rt_mq_send_wait+0x5c>
8780141c:	e1a00007 	mov	r0, r7
87801420:	ebfffb75 	bl	878001fc <rt_hw_interrupt_enable>
87801424:	e3e00002 	mvn	r0, #2
87801428:	ea000021 	b	878014b4 <rt_mq_send_wait+0x190>
8780142c:	e5962000 	ldr	r2, [r6]
87801430:	e1a00007 	mov	r0, r7
87801434:	e5842030 	str	r2, [r4, #48]	; 0x30
87801438:	ebfffb6f 	bl	878001fc <rt_hw_interrupt_enable>
8780143c:	e1a00006 	mov	r0, r6
87801440:	e3a02000 	mov	r2, #0
87801444:	e1a01009 	mov	r1, r9
87801448:	e4802004 	str	r2, [r0], #4
8780144c:	e59d2000 	ldr	r2, [sp]
87801450:	eb0001c3 	bl	87801b64 <rt_memcpy>
87801454:	ebfffb65 	bl	878001f0 <rt_hw_interrupt_disable>
87801458:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
8780145c:	e1a05000 	mov	r5, r0
87801460:	e1d432b4 	ldrh	r3, [r4, #36]	; 0x24
87801464:	e5940014 	ldr	r0, [r4, #20]
87801468:	e3520000 	cmp	r2, #0
8780146c:	15826000 	strne	r6, [r2]
87801470:	e2833001 	add	r3, r3, #1
87801474:	e5942028 	ldr	r2, [r4, #40]	; 0x28
87801478:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
8780147c:	e2843014 	add	r3, r4, #20
87801480:	e584602c 	str	r6, [r4, #44]	; 0x2c
87801484:	e3520000 	cmp	r2, #0
87801488:	05846028 	streq	r6, [r4, #40]	; 0x28
8780148c:	e1500003 	cmp	r0, r3
87801490:	0a000004 	beq	878014a8 <rt_mq_send_wait+0x184>
87801494:	ebfffbfa 	bl	87800484 <rt_ipc_list_resume.isra.0>
87801498:	e1a00005 	mov	r0, r5
8780149c:	ebfffb56 	bl	878001fc <rt_hw_interrupt_enable>
878014a0:	eb00061d 	bl	87802d1c <rt_schedule>
878014a4:	ea000001 	b	878014b0 <rt_mq_send_wait+0x18c>
878014a8:	e1a00005 	mov	r0, r5
878014ac:	ebfffb52 	bl	878001fc <rt_hw_interrupt_enable>
878014b0:	e3a00000 	mov	r0, #0
878014b4:	e28dd00c 	add	sp, sp, #12
878014b8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

878014bc <rt_mq_send>:
878014bc:	e3a03000 	mov	r3, #0
878014c0:	eaffff97 	b	87801324 <rt_mq_send_wait>

878014c4 <rt_mq_urgent>:
878014c4:	e1d032b0 	ldrh	r3, [r0, #32]
878014c8:	e1530002 	cmp	r3, r2
878014cc:	3a00002a 	bcc	8780157c <rt_mq_urgent+0xb8>
878014d0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
878014d4:	e1a04000 	mov	r4, r0
878014d8:	e1a06002 	mov	r6, r2
878014dc:	e1a08001 	mov	r8, r1
878014e0:	ebfffb42 	bl	878001f0 <rt_hw_interrupt_disable>
878014e4:	e5945030 	ldr	r5, [r4, #48]	; 0x30
878014e8:	e3550000 	cmp	r5, #0
878014ec:	1a000002 	bne	878014fc <rt_mq_urgent+0x38>
878014f0:	ebfffb41 	bl	878001fc <rt_hw_interrupt_enable>
878014f4:	e3e00002 	mvn	r0, #2
878014f8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
878014fc:	e1a07005 	mov	r7, r5
87801500:	e4973004 	ldr	r3, [r7], #4
87801504:	e5843030 	str	r3, [r4, #48]	; 0x30
87801508:	ebfffb3b 	bl	878001fc <rt_hw_interrupt_enable>
8780150c:	e1a02006 	mov	r2, r6
87801510:	e1a01008 	mov	r1, r8
87801514:	e1a00007 	mov	r0, r7
87801518:	eb000191 	bl	87801b64 <rt_memcpy>
8780151c:	ebfffb33 	bl	878001f0 <rt_hw_interrupt_disable>
87801520:	e5943028 	ldr	r3, [r4, #40]	; 0x28
87801524:	e1a06000 	mov	r6, r0
87801528:	e5940014 	ldr	r0, [r4, #20]
8780152c:	e5853000 	str	r3, [r5]
87801530:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
87801534:	e5845028 	str	r5, [r4, #40]	; 0x28
87801538:	e3530000 	cmp	r3, #0
8780153c:	e1d432b4 	ldrh	r3, [r4, #36]	; 0x24
87801540:	0584502c 	streq	r5, [r4, #44]	; 0x2c
87801544:	e2833001 	add	r3, r3, #1
87801548:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
8780154c:	e2843014 	add	r3, r4, #20
87801550:	e1500003 	cmp	r0, r3
87801554:	0a000004 	beq	8780156c <rt_mq_urgent+0xa8>
87801558:	ebfffbc9 	bl	87800484 <rt_ipc_list_resume.isra.0>
8780155c:	e1a00006 	mov	r0, r6
87801560:	ebfffb25 	bl	878001fc <rt_hw_interrupt_enable>
87801564:	eb0005ec 	bl	87802d1c <rt_schedule>
87801568:	ea000001 	b	87801574 <rt_mq_urgent+0xb0>
8780156c:	e1a00006 	mov	r0, r6
87801570:	ebfffb21 	bl	878001fc <rt_hw_interrupt_enable>
87801574:	e3a00000 	mov	r0, #0
87801578:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
8780157c:	e3e00000 	mvn	r0, #0
87801580:	e12fff1e 	bx	lr

87801584 <rt_mq_recv>:
87801584:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
87801588:	e1a04000 	mov	r4, r0
8780158c:	e58d1000 	str	r1, [sp]
87801590:	e1a07002 	mov	r7, r2
87801594:	e58d3004 	str	r3, [sp, #4]
87801598:	eb0006b3 	bl	8780306c <rt_thread_self>
8780159c:	e1a06000 	mov	r6, r0
878015a0:	ebfffb12 	bl	878001f0 <rt_hw_interrupt_disable>
878015a4:	e1d492b4 	ldrh	r9, [r4, #36]	; 0x24
878015a8:	e1a0b000 	mov	fp, r0
878015ac:	e3590000 	cmp	r9, #0
878015b0:	1a000034 	bne	87801688 <rt_mq_recv+0x104>
878015b4:	e59d2004 	ldr	r2, [sp, #4]
878015b8:	e3520000 	cmp	r2, #0
878015bc:	11a05009 	movne	r5, r9
878015c0:	1284a014 	addne	sl, r4, #20
878015c4:	1286804c 	addne	r8, r6, #76	; 0x4c
878015c8:	1a000022 	bne	87801658 <rt_mq_recv+0xd4>
878015cc:	ebfffb0a 	bl	878001fc <rt_hw_interrupt_enable>
878015d0:	e3e00001 	mvn	r0, #1
878015d4:	ea00004d 	b	87801710 <rt_mq_recv+0x18c>
878015d8:	e5d42009 	ldrb	r2, [r4, #9]
878015dc:	e1a01006 	mov	r1, r6
878015e0:	e1a0000a 	mov	r0, sl
878015e4:	ebfffbab 	bl	87800498 <rt_ipc_list_suspend>
878015e8:	e59d2004 	ldr	r2, [sp, #4]
878015ec:	e3520000 	cmp	r2, #0
878015f0:	da000007 	ble	87801614 <rt_mq_recv+0x90>
878015f4:	ebfffb5e 	bl	87800374 <rt_tick_get>
878015f8:	e1a05000 	mov	r5, r0
878015fc:	e28d2004 	add	r2, sp, #4
87801600:	e1a01009 	mov	r1, r9
87801604:	e1a00008 	mov	r0, r8
87801608:	eb000878 	bl	878037f0 <rt_timer_control>
8780160c:	e1a00008 	mov	r0, r8
87801610:	eb000836 	bl	878036f0 <rt_timer_start>
87801614:	e1a0000b 	mov	r0, fp
87801618:	ebfffaf7 	bl	878001fc <rt_hw_interrupt_enable>
8780161c:	eb0005be 	bl	87802d1c <rt_schedule>
87801620:	e5960030 	ldr	r0, [r6, #48]	; 0x30
87801624:	e3500000 	cmp	r0, #0
87801628:	1a000038 	bne	87801710 <rt_mq_recv+0x18c>
8780162c:	ebfffaef 	bl	878001f0 <rt_hw_interrupt_disable>
87801630:	e59d3004 	ldr	r3, [sp, #4]
87801634:	e1a0b000 	mov	fp, r0
87801638:	e3530000 	cmp	r3, #0
8780163c:	da000005 	ble	87801658 <rt_mq_recv+0xd4>
87801640:	ebfffb4b 	bl	87800374 <rt_tick_get>
87801644:	e59d3004 	ldr	r3, [sp, #4]
87801648:	e0655000 	rsb	r5, r5, r0
8780164c:	e0533005 	subs	r3, r3, r5
87801650:	43a03000 	movmi	r3, #0
87801654:	e58d3004 	str	r3, [sp, #4]
87801658:	e1d492b4 	ldrh	r9, [r4, #36]	; 0x24
8780165c:	e3590000 	cmp	r9, #0
87801660:	1a000008 	bne	87801688 <rt_mq_recv+0x104>
87801664:	e59d2004 	ldr	r2, [sp, #4]
87801668:	e5869030 	str	r9, [r6, #48]	; 0x30
8780166c:	e3520000 	cmp	r2, #0
87801670:	1affffd8 	bne	878015d8 <rt_mq_recv+0x54>
87801674:	e1a0000b 	mov	r0, fp
87801678:	ebfffadf 	bl	878001fc <rt_hw_interrupt_enable>
8780167c:	e3e00001 	mvn	r0, #1
87801680:	e5860030 	str	r0, [r6, #48]	; 0x30
87801684:	ea000021 	b	87801710 <rt_mq_recv+0x18c>
87801688:	e5945028 	ldr	r5, [r4, #40]	; 0x28
8780168c:	e2493001 	sub	r3, r9, #1
87801690:	e1a0000b 	mov	r0, fp
87801694:	e5952000 	ldr	r2, [r5]
87801698:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
8780169c:	e5842028 	str	r2, [r4, #40]	; 0x28
878016a0:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
878016a4:	e1550002 	cmp	r5, r2
878016a8:	03a02000 	moveq	r2, #0
878016ac:	0584202c 	streq	r2, [r4, #44]	; 0x2c
878016b0:	ebfffad1 	bl	878001fc <rt_hw_interrupt_enable>
878016b4:	e1d422b0 	ldrh	r2, [r4, #32]
878016b8:	e2851004 	add	r1, r5, #4
878016bc:	e59d0000 	ldr	r0, [sp]
878016c0:	e1520007 	cmp	r2, r7
878016c4:	21a02007 	movcs	r2, r7
878016c8:	eb000125 	bl	87801b64 <rt_memcpy>
878016cc:	ebfffac7 	bl	878001f0 <rt_hw_interrupt_disable>
878016d0:	e5943030 	ldr	r3, [r4, #48]	; 0x30
878016d4:	e2842034 	add	r2, r4, #52	; 0x34
878016d8:	e1a06000 	mov	r6, r0
878016dc:	e5853000 	str	r3, [r5]
878016e0:	e5943034 	ldr	r3, [r4, #52]	; 0x34
878016e4:	e5845030 	str	r5, [r4, #48]	; 0x30
878016e8:	e1530002 	cmp	r3, r2
878016ec:	0a000005 	beq	87801708 <rt_mq_recv+0x184>
878016f0:	e1a00003 	mov	r0, r3
878016f4:	ebfffb62 	bl	87800484 <rt_ipc_list_resume.isra.0>
878016f8:	e1a00006 	mov	r0, r6
878016fc:	ebfffabe 	bl	878001fc <rt_hw_interrupt_enable>
87801700:	eb000585 	bl	87802d1c <rt_schedule>
87801704:	ea000000 	b	8780170c <rt_mq_recv+0x188>
87801708:	ebfffabb 	bl	878001fc <rt_hw_interrupt_enable>
8780170c:	e3a00000 	mov	r0, #0
87801710:	e28dd00c 	add	sp, sp, #12
87801714:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

87801718 <rt_mq_control>:
87801718:	e3510001 	cmp	r1, #1
8780171c:	1a00001a 	bne	8780178c <rt_mq_control+0x74>
87801720:	e92d4070 	push	{r4, r5, r6, lr}
87801724:	e1a04000 	mov	r4, r0
87801728:	ebfffab0 	bl	878001f0 <rt_hw_interrupt_disable>
8780172c:	e1a06000 	mov	r6, r0
87801730:	e2840014 	add	r0, r4, #20
87801734:	ebfffb41 	bl	87800440 <rt_ipc_list_resume_all>
87801738:	e2840034 	add	r0, r4, #52	; 0x34
8780173c:	ebfffb3f 	bl	87800440 <rt_ipc_list_resume_all>
87801740:	e3a03000 	mov	r3, #0
87801744:	e5945028 	ldr	r5, [r4, #40]	; 0x28
87801748:	e3550000 	cmp	r5, #0
8780174c:	0a000008 	beq	87801774 <rt_mq_control+0x5c>
87801750:	e5952000 	ldr	r2, [r5]
87801754:	e5842028 	str	r2, [r4, #40]	; 0x28
87801758:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
8780175c:	e1550002 	cmp	r5, r2
87801760:	e5942030 	ldr	r2, [r4, #48]	; 0x30
87801764:	0584302c 	streq	r3, [r4, #44]	; 0x2c
87801768:	e5852000 	str	r2, [r5]
8780176c:	e5845030 	str	r5, [r4, #48]	; 0x30
87801770:	eafffff3 	b	87801744 <rt_mq_control+0x2c>
87801774:	e1c452b4 	strh	r5, [r4, #36]	; 0x24
87801778:	e1a00006 	mov	r0, r6
8780177c:	ebfffa9e 	bl	878001fc <rt_hw_interrupt_enable>
87801780:	eb000565 	bl	87802d1c <rt_schedule>
87801784:	e1a00005 	mov	r0, r5
87801788:	e8bd8070 	pop	{r4, r5, r6, pc}
8780178c:	e3e00000 	mvn	r0, #0
87801790:	e12fff1e 	bx	lr

87801794 <rt_interrupt_enter>:
87801794:	e92d4010 	push	{r4, lr}
87801798:	ebfffa94 	bl	878001f0 <rt_hw_interrupt_disable>
8780179c:	e59f2014 	ldr	r2, [pc, #20]	; 878017b8 <rt_interrupt_enter+0x24>
878017a0:	e5d23000 	ldrb	r3, [r2]
878017a4:	e2833001 	add	r3, r3, #1
878017a8:	e6ef3073 	uxtb	r3, r3
878017ac:	e5c23000 	strb	r3, [r2]
878017b0:	e8bd4010 	pop	{r4, lr}
878017b4:	eafffa90 	b	878001fc <rt_hw_interrupt_enable>
878017b8:	878046fc 	.word	0x878046fc

878017bc <rt_interrupt_leave>:
878017bc:	e92d4010 	push	{r4, lr}
878017c0:	ebfffa8a 	bl	878001f0 <rt_hw_interrupt_disable>
878017c4:	e59f2014 	ldr	r2, [pc, #20]	; 878017e0 <rt_interrupt_leave+0x24>
878017c8:	e5d23000 	ldrb	r3, [r2]
878017cc:	e2433001 	sub	r3, r3, #1
878017d0:	e6ef3073 	uxtb	r3, r3
878017d4:	e5c23000 	strb	r3, [r2]
878017d8:	e8bd4010 	pop	{r4, lr}
878017dc:	eafffa86 	b	878001fc <rt_hw_interrupt_enable>
878017e0:	878046fc 	.word	0x878046fc

878017e4 <rt_interrupt_get_nest>:
878017e4:	e92d4010 	push	{r4, lr}
878017e8:	ebfffa80 	bl	878001f0 <rt_hw_interrupt_disable>
878017ec:	e59f3010 	ldr	r3, [pc, #16]	; 87801804 <rt_interrupt_get_nest+0x20>
878017f0:	e5d34000 	ldrb	r4, [r3]
878017f4:	ebfffa80 	bl	878001fc <rt_hw_interrupt_enable>
878017f8:	e6ef4074 	uxtb	r4, r4
878017fc:	e1a00004 	mov	r0, r4
87801800:	e8bd8010 	pop	{r4, pc}
87801804:	878046fc 	.word	0x878046fc

87801808 <print_number>:
87801808:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
8780180c:	e24dd01c 	sub	sp, sp, #28
87801810:	e1a07002 	mov	r7, r2
87801814:	e1a04000 	mov	r4, r0
87801818:	e59d6048 	ldr	r6, [sp, #72]	; 0x48
8780181c:	e1a09001 	mov	r9, r1
87801820:	e59f21fc 	ldr	r2, [pc, #508]	; 87801a24 <print_number+0x21c>
87801824:	e58d3004 	str	r3, [sp, #4]
87801828:	e3160040 	tst	r6, #64	; 0x40
8780182c:	e282a014 	add	sl, r2, #20
87801830:	11a0a002 	movne	sl, r2
87801834:	e3160010 	tst	r6, #16
87801838:	13c66001 	bicne	r6, r6, #1
8780183c:	e3160001 	tst	r6, #1
87801840:	13a0b030 	movne	fp, #48	; 0x30
87801844:	03a0b020 	moveq	fp, #32
87801848:	e2168002 	ands	r8, r6, #2
8780184c:	0a000009 	beq	87801878 <print_number+0x70>
87801850:	e3570000 	cmp	r7, #0
87801854:	b2677000 	rsblt	r7, r7, #0
87801858:	b3a0802d 	movlt	r8, #45	; 0x2d
8780185c:	ba00000a 	blt	8780188c <print_number+0x84>
87801860:	e3160004 	tst	r6, #4
87801864:	13a0802b 	movne	r8, #43	; 0x2b
87801868:	1a000002 	bne	87801878 <print_number+0x70>
8780186c:	e3160008 	tst	r6, #8
87801870:	13a08020 	movne	r8, #32
87801874:	03a08000 	moveq	r8, #0
87801878:	e3570000 	cmp	r7, #0
8780187c:	03a03030 	moveq	r3, #48	; 0x30
87801880:	03a05001 	moveq	r5, #1
87801884:	05cd3008 	strbeq	r3, [sp, #8]
87801888:	0a000012 	beq	878018d8 <print_number+0xd0>
8780188c:	e3a05000 	mov	r5, #0
87801890:	e1a00007 	mov	r0, r7
87801894:	e3a0100a 	mov	r1, #10
87801898:	e2855001 	add	r5, r5, #1
8780189c:	fa0008f6 	blx	87803c7c <__aeabi_uidivmod>
878018a0:	e59dc004 	ldr	ip, [sp, #4]
878018a4:	e207000f 	and	r0, r7, #15
878018a8:	e59f3178 	ldr	r3, [pc, #376]	; 87801a28 <print_number+0x220>
878018ac:	e35c000a 	cmp	ip, #10
878018b0:	e0832397 	umull	r2, r3, r7, r3
878018b4:	11a01000 	movne	r1, r0
878018b8:	01a071a3 	lsreq	r7, r3, #3
878018bc:	11a07227 	lsrne	r7, r7, #4
878018c0:	e28d3008 	add	r3, sp, #8
878018c4:	e083c005 	add	ip, r3, r5
878018c8:	e3570000 	cmp	r7, #0
878018cc:	e7da1001 	ldrb	r1, [sl, r1]
878018d0:	e54c1001 	strb	r1, [ip, #-1]
878018d4:	1affffed 	bne	87801890 <print_number+0x88>
878018d8:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
878018dc:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
878018e0:	e1550003 	cmp	r5, r3
878018e4:	a1a01005 	movge	r1, r5
878018e8:	b1a01003 	movlt	r1, r3
878018ec:	e3160011 	tst	r6, #17
878018f0:	e0610000 	rsb	r0, r1, r0
878018f4:	1a000010 	bne	8780193c <print_number+0x134>
878018f8:	e3580000 	cmp	r8, #0
878018fc:	13500000 	cmpne	r0, #0
87801900:	e1a03004 	mov	r3, r4
87801904:	c2400001 	subgt	r0, r0, #1
87801908:	e3a0c020 	mov	ip, #32
8780190c:	e0632000 	rsb	r2, r3, r0
87801910:	e0842002 	add	r2, r4, r2
87801914:	e3520000 	cmp	r2, #0
87801918:	da000003 	ble	8780192c <print_number+0x124>
8780191c:	e1530009 	cmp	r3, r9
87801920:	e2833001 	add	r3, r3, #1
87801924:	3543c001 	strbcc	ip, [r3, #-1]
87801928:	eafffff7 	b	8780190c <print_number+0x104>
8780192c:	e1c03fc0 	bic	r3, r0, r0, asr #31
87801930:	e2400001 	sub	r0, r0, #1
87801934:	e0844003 	add	r4, r4, r3
87801938:	e0630000 	rsb	r0, r3, r0
8780193c:	e3580000 	cmp	r8, #0
87801940:	0a000003 	beq	87801954 <print_number+0x14c>
87801944:	e1540009 	cmp	r4, r9
87801948:	e2400001 	sub	r0, r0, #1
8780194c:	35c48000 	strbcc	r8, [r4]
87801950:	e2844001 	add	r4, r4, #1
87801954:	e3160010 	tst	r6, #16
87801958:	01a03004 	moveq	r3, r4
8780195c:	1a00000b 	bne	87801990 <print_number+0x188>
87801960:	e0632000 	rsb	r2, r3, r0
87801964:	e0842002 	add	r2, r4, r2
87801968:	e3520000 	cmp	r2, #0
8780196c:	da000003 	ble	87801980 <print_number+0x178>
87801970:	e1530009 	cmp	r3, r9
87801974:	e2833001 	add	r3, r3, #1
87801978:	3543b001 	strbcc	fp, [r3, #-1]
8780197c:	eafffff7 	b	87801960 <print_number+0x158>
87801980:	e1c03fc0 	bic	r3, r0, r0, asr #31
87801984:	e2400001 	sub	r0, r0, #1
87801988:	e0844003 	add	r4, r4, r3
8780198c:	e0630000 	rsb	r0, r3, r0
87801990:	e1a03004 	mov	r3, r4
87801994:	e3a0c030 	mov	ip, #48	; 0x30
87801998:	e0632001 	rsb	r2, r3, r1
8780199c:	e0842002 	add	r2, r4, r2
878019a0:	e1520005 	cmp	r2, r5
878019a4:	da000003 	ble	878019b8 <print_number+0x1b0>
878019a8:	e1530009 	cmp	r3, r9
878019ac:	e2833001 	add	r3, r3, #1
878019b0:	3543c001 	strbcc	ip, [r3, #-1]
878019b4:	eafffff7 	b	87801998 <print_number+0x190>
878019b8:	e59d2044 	ldr	r2, [sp, #68]	; 0x44
878019bc:	e3520000 	cmp	r2, #0
878019c0:	13550000 	cmpne	r5, #0
878019c4:	da000007 	ble	878019e8 <print_number+0x1e0>
878019c8:	e1530009 	cmp	r3, r9
878019cc:	e2833001 	add	r3, r3, #1
878019d0:	328d2008 	addcc	r2, sp, #8
878019d4:	30822005 	addcc	r2, r2, r5
878019d8:	e2455001 	sub	r5, r5, #1
878019dc:	35522001 	ldrbcc	r2, [r2, #-1]
878019e0:	35432001 	strbcc	r2, [r3, #-1]
878019e4:	eafffff3 	b	878019b8 <print_number+0x1b0>
878019e8:	e1a02003 	mov	r2, r3
878019ec:	e3a0c020 	mov	ip, #32
878019f0:	e0621000 	rsb	r1, r2, r0
878019f4:	e0831001 	add	r1, r3, r1
878019f8:	e3510000 	cmp	r1, #0
878019fc:	da000003 	ble	87801a10 <print_number+0x208>
87801a00:	e1520009 	cmp	r2, r9
87801a04:	e2822001 	add	r2, r2, #1
87801a08:	3542c001 	strbcc	ip, [r2, #-1]
87801a0c:	eafffff7 	b	878019f0 <print_number+0x1e8>
87801a10:	e3500000 	cmp	r0, #0
87801a14:	a0830000 	addge	r0, r3, r0
87801a18:	b2830000 	addlt	r0, r3, #0
87801a1c:	e28dd01c 	add	sp, sp, #28
87801a20:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
87801a24:	878040f0 	.word	0x878040f0
87801a28:	cccccccd 	.word	0xcccccccd

87801a2c <rt_get_errno>:
87801a2c:	e92d4010 	push	{r4, lr}
87801a30:	ebffff6b 	bl	878017e4 <rt_interrupt_get_nest>
87801a34:	e3500000 	cmp	r0, #0
87801a38:	1a000002 	bne	87801a48 <rt_get_errno+0x1c>
87801a3c:	eb00058a 	bl	8780306c <rt_thread_self>
87801a40:	e3500000 	cmp	r0, #0
87801a44:	1a000002 	bne	87801a54 <rt_get_errno+0x28>
87801a48:	e59f300c 	ldr	r3, [pc, #12]	; 87801a5c <rt_get_errno+0x30>
87801a4c:	e5930000 	ldr	r0, [r3]
87801a50:	e8bd8010 	pop	{r4, pc}
87801a54:	e5900030 	ldr	r0, [r0, #48]	; 0x30
87801a58:	e8bd8010 	pop	{r4, pc}
87801a5c:	87804700 	.word	0x87804700

87801a60 <rt_set_errno>:
87801a60:	e92d4010 	push	{r4, lr}
87801a64:	e1a04000 	mov	r4, r0
87801a68:	ebffff5d 	bl	878017e4 <rt_interrupt_get_nest>
87801a6c:	e3500000 	cmp	r0, #0
87801a70:	1a000002 	bne	87801a80 <rt_set_errno+0x20>
87801a74:	eb00057c 	bl	8780306c <rt_thread_self>
87801a78:	e3500000 	cmp	r0, #0
87801a7c:	1a000002 	bne	87801a8c <rt_set_errno+0x2c>
87801a80:	e59f300c 	ldr	r3, [pc, #12]	; 87801a94 <rt_set_errno+0x34>
87801a84:	e5834000 	str	r4, [r3]
87801a88:	e8bd8010 	pop	{r4, pc}
87801a8c:	e5804030 	str	r4, [r0, #48]	; 0x30
87801a90:	e8bd8010 	pop	{r4, pc}
87801a94:	87804700 	.word	0x87804700

87801a98 <_rt_errno>:
87801a98:	e92d4010 	push	{r4, lr}
87801a9c:	ebffff50 	bl	878017e4 <rt_interrupt_get_nest>
87801aa0:	e3500000 	cmp	r0, #0
87801aa4:	0a000001 	beq	87801ab0 <_rt_errno+0x18>
87801aa8:	e59f0014 	ldr	r0, [pc, #20]	; 87801ac4 <_rt_errno+0x2c>
87801aac:	e8bd8010 	pop	{r4, pc}
87801ab0:	eb00056d 	bl	8780306c <rt_thread_self>
87801ab4:	e3500000 	cmp	r0, #0
87801ab8:	0afffffa 	beq	87801aa8 <_rt_errno+0x10>
87801abc:	e2800030 	add	r0, r0, #48	; 0x30
87801ac0:	e8bd8010 	pop	{r4, pc}
87801ac4:	87804700 	.word	0x87804700

87801ac8 <rt_memset>:
87801ac8:	e3520003 	cmp	r2, #3
87801acc:	e92d4010 	push	{r4, lr}
87801ad0:	9a00001d 	bls	87801b4c <rt_memset+0x84>
87801ad4:	e3100003 	tst	r0, #3
87801ad8:	1a00001b 	bne	87801b4c <rt_memset+0x84>
87801adc:	e6efc071 	uxtb	ip, r1
87801ae0:	e2803010 	add	r3, r0, #16
87801ae4:	e2824010 	add	r4, r2, #16
87801ae8:	e18cc40c 	orr	ip, ip, ip, lsl #8
87801aec:	e18cc80c 	orr	ip, ip, ip, lsl #16
87801af0:	e063e004 	rsb	lr, r3, r4
87801af4:	e080e00e 	add	lr, r0, lr
87801af8:	e35e000f 	cmp	lr, #15
87801afc:	9a000005 	bls	87801b18 <rt_memset+0x50>
87801b00:	e503c010 	str	ip, [r3, #-16]
87801b04:	e2833010 	add	r3, r3, #16
87801b08:	e503c01c 	str	ip, [r3, #-28]	; 0xffffffe4
87801b0c:	e503c018 	str	ip, [r3, #-24]	; 0xffffffe8
87801b10:	e503c014 	str	ip, [r3, #-20]	; 0xffffffec
87801b14:	eafffff5 	b	87801af0 <rt_memset+0x28>
87801b18:	e1a03222 	lsr	r3, r2, #4
87801b1c:	e0422203 	sub	r2, r2, r3, lsl #4
87801b20:	e0803203 	add	r3, r0, r3, lsl #4
87801b24:	e1a04003 	mov	r4, r3
87801b28:	e064e002 	rsb	lr, r4, r2
87801b2c:	e083e00e 	add	lr, r3, lr
87801b30:	e35e0003 	cmp	lr, #3
87801b34:	8484c004 	strhi	ip, [r4], #4
87801b38:	8afffffa 	bhi	87801b28 <rt_memset+0x60>
87801b3c:	e1a0c122 	lsr	ip, r2, #2
87801b40:	e042210c 	sub	r2, r2, ip, lsl #2
87801b44:	e083310c 	add	r3, r3, ip, lsl #2
87801b48:	ea000000 	b	87801b50 <rt_memset+0x88>
87801b4c:	e1a03000 	mov	r3, r0
87801b50:	e0832002 	add	r2, r3, r2
87801b54:	e1530002 	cmp	r3, r2
87801b58:	14c31001 	strbne	r1, [r3], #1
87801b5c:	1afffffc 	bne	87801b54 <rt_memset+0x8c>
87801b60:	e8bd8010 	pop	{r4, pc}

87801b64 <rt_memcpy>:
87801b64:	e352000f 	cmp	r2, #15
87801b68:	e1a03002 	mov	r3, r2
87801b6c:	e92d4010 	push	{r4, lr}
87801b70:	9a000027 	bls	87801c14 <rt_memcpy+0xb0>
87801b74:	e180c001 	orr	ip, r0, r1
87801b78:	e31c0003 	tst	ip, #3
87801b7c:	02803010 	addeq	r3, r0, #16
87801b80:	01a0c001 	moveq	ip, r1
87801b84:	02824010 	addeq	r4, r2, #16
87801b88:	1a000021 	bne	87801c14 <rt_memcpy+0xb0>
87801b8c:	e063e004 	rsb	lr, r3, r4
87801b90:	e28cc010 	add	ip, ip, #16
87801b94:	e080e00e 	add	lr, r0, lr
87801b98:	e35e000f 	cmp	lr, #15
87801b9c:	9a000009 	bls	87801bc8 <rt_memcpy+0x64>
87801ba0:	e51ce010 	ldr	lr, [ip, #-16]
87801ba4:	e2833010 	add	r3, r3, #16
87801ba8:	e503e020 	str	lr, [r3, #-32]	; 0xffffffe0
87801bac:	e51ce00c 	ldr	lr, [ip, #-12]
87801bb0:	e503e01c 	str	lr, [r3, #-28]	; 0xffffffe4
87801bb4:	e51ce008 	ldr	lr, [ip, #-8]
87801bb8:	e503e018 	str	lr, [r3, #-24]	; 0xffffffe8
87801bbc:	e51ce004 	ldr	lr, [ip, #-4]
87801bc0:	e503e014 	str	lr, [r3, #-20]	; 0xffffffec
87801bc4:	eafffff0 	b	87801b8c <rt_memcpy+0x28>
87801bc8:	e1a03222 	lsr	r3, r2, #4
87801bcc:	e1a0e203 	lsl	lr, r3, #4
87801bd0:	e080c00e 	add	ip, r0, lr
87801bd4:	e081100e 	add	r1, r1, lr
87801bd8:	e24c4004 	sub	r4, ip, #4
87801bdc:	e0422203 	sub	r2, r2, r3, lsl #4
87801be0:	e1a0e001 	mov	lr, r1
87801be4:	e06e3002 	rsb	r3, lr, r2
87801be8:	e0813003 	add	r3, r1, r3
87801bec:	e3530003 	cmp	r3, #3
87801bf0:	c49e3004 	ldrgt	r3, [lr], #4
87801bf4:	c5a43004 	strgt	r3, [r4, #4]!
87801bf8:	cafffff9 	bgt	87801be4 <rt_memcpy+0x80>
87801bfc:	e1a03122 	lsr	r3, r2, #2
87801c00:	e1a0e103 	lsl	lr, r3, #2
87801c04:	e08cc00e 	add	ip, ip, lr
87801c08:	e081100e 	add	r1, r1, lr
87801c0c:	e0423103 	sub	r3, r2, r3, lsl #2
87801c10:	ea000000 	b	87801c18 <rt_memcpy+0xb4>
87801c14:	e1a0c000 	mov	ip, r0
87801c18:	e0812003 	add	r2, r1, r3
87801c1c:	e24cc001 	sub	ip, ip, #1
87801c20:	e1510002 	cmp	r1, r2
87801c24:	14d13001 	ldrbne	r3, [r1], #1
87801c28:	15ec3001 	strbne	r3, [ip, #1]!
87801c2c:	1afffffb 	bne	87801c20 <rt_memcpy+0xbc>
87801c30:	e8bd8010 	pop	{r4, pc}

87801c34 <rt_memmove>:
87801c34:	e1500001 	cmp	r0, r1
87801c38:	e0813002 	add	r3, r1, r2
87801c3c:	8a000001 	bhi	87801c48 <rt_memmove+0x14>
87801c40:	e2402001 	sub	r2, r0, #1
87801c44:	ea000008 	b	87801c6c <rt_memmove+0x38>
87801c48:	e1500003 	cmp	r0, r3
87801c4c:	30801002 	addcc	r1, r0, r2
87801c50:	30632002 	rsbcc	r2, r3, r2
87801c54:	2afffff9 	bcs	87801c40 <rt_memmove+0xc>
87801c58:	e1730002 	cmn	r3, r2
87801c5c:	1573c001 	ldrbne	ip, [r3, #-1]!
87801c60:	1561c001 	strbne	ip, [r1, #-1]!
87801c64:	1afffffb 	bne	87801c58 <rt_memmove+0x24>
87801c68:	e12fff1e 	bx	lr
87801c6c:	e1510003 	cmp	r1, r3
87801c70:	14d1c001 	ldrbne	ip, [r1], #1
87801c74:	15e2c001 	strbne	ip, [r2, #1]!
87801c78:	1afffffb 	bne	87801c6c <rt_memmove+0x38>
87801c7c:	e12fff1e 	bx	lr

87801c80 <rt_memcmp>:
87801c80:	e0812002 	add	r2, r1, r2
87801c84:	e240c001 	sub	ip, r0, #1
87801c88:	e1510002 	cmp	r1, r2
87801c8c:	0a000005 	beq	87801ca8 <rt_memcmp+0x28>
87801c90:	e5fc3001 	ldrb	r3, [ip, #1]!
87801c94:	e5d10000 	ldrb	r0, [r1]
87801c98:	e0530000 	subs	r0, r3, r0
87801c9c:	112fff1e 	bxne	lr
87801ca0:	e2811001 	add	r1, r1, #1
87801ca4:	eafffff7 	b	87801c88 <rt_memcmp+0x8>
87801ca8:	e3a00000 	mov	r0, #0
87801cac:	e12fff1e 	bx	lr

87801cb0 <rt_strcasecmp>:
87801cb0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
87801cb4:	e4d02001 	ldrb	r2, [r0], #1
87801cb8:	e4d1c001 	ldrb	ip, [r1], #1
87801cbc:	e242e041 	sub	lr, r2, #65	; 0x41
87801cc0:	e2823020 	add	r3, r2, #32
87801cc4:	e35e0019 	cmp	lr, #25
87801cc8:	e24ce041 	sub	lr, ip, #65	; 0x41
87801ccc:	81a03002 	movhi	r3, r2
87801cd0:	e28c2020 	add	r2, ip, #32
87801cd4:	e35e0019 	cmp	lr, #25
87801cd8:	91a0c002 	movls	ip, r2
87801cdc:	e3530000 	cmp	r3, #0
87801ce0:	e06c2003 	rsb	r2, ip, r3
87801ce4:	e16f2f12 	clz	r2, r2
87801ce8:	e1a022a2 	lsr	r2, r2, #5
87801cec:	03a02000 	moveq	r2, #0
87801cf0:	e3520000 	cmp	r2, #0
87801cf4:	1affffee 	bne	87801cb4 <rt_strcasecmp+0x4>
87801cf8:	e06c0003 	rsb	r0, ip, r3
87801cfc:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

87801d00 <rt_strncpy>:
87801d00:	e3520000 	cmp	r2, #0
87801d04:	012fff1e 	bxeq	lr
87801d08:	e1a0c000 	mov	ip, r0
87801d0c:	e4d13001 	ldrb	r3, [r1], #1
87801d10:	e4cc3001 	strb	r3, [ip], #1
87801d14:	e3530000 	cmp	r3, #0
87801d18:	1a000003 	bne	87801d2c <rt_strncpy+0x2c>
87801d1c:	e2522001 	subs	r2, r2, #1
87801d20:	14cc3001 	strbne	r3, [ip], #1
87801d24:	1afffffc 	bne	87801d1c <rt_strncpy+0x1c>
87801d28:	e12fff1e 	bx	lr
87801d2c:	e2522001 	subs	r2, r2, #1
87801d30:	1afffff5 	bne	87801d0c <rt_strncpy+0xc>
87801d34:	e12fff1e 	bx	lr

87801d38 <rt_strncmp>:
87801d38:	e0812002 	add	r2, r1, r2
87801d3c:	e2403001 	sub	r3, r0, #1
87801d40:	e1510002 	cmp	r1, r2
87801d44:	0a000008 	beq	87801d6c <rt_strncmp+0x34>
87801d48:	e5f3c001 	ldrb	ip, [r3, #1]!
87801d4c:	e4d10001 	ldrb	r0, [r1], #1
87801d50:	e060000c 	rsb	r0, r0, ip
87801d54:	e6af0070 	sxtb	r0, r0
87801d58:	e3500000 	cmp	r0, #0
87801d5c:	112fff1e 	bxne	lr
87801d60:	e35c0000 	cmp	ip, #0
87801d64:	1afffff5 	bne	87801d40 <rt_strncmp+0x8>
87801d68:	e12fff1e 	bx	lr
87801d6c:	e3a00000 	mov	r0, #0
87801d70:	e12fff1e 	bx	lr

87801d74 <rt_strcmp>:
87801d74:	e2400001 	sub	r0, r0, #1
87801d78:	e5f03001 	ldrb	r3, [r0, #1]!
87801d7c:	e1a02001 	mov	r2, r1
87801d80:	e3530000 	cmp	r3, #0
87801d84:	0a000003 	beq	87801d98 <rt_strcmp+0x24>
87801d88:	e5d2c000 	ldrb	ip, [r2]
87801d8c:	e2811001 	add	r1, r1, #1
87801d90:	e15c0003 	cmp	ip, r3
87801d94:	0afffff7 	beq	87801d78 <rt_strcmp+0x4>
87801d98:	e5d20000 	ldrb	r0, [r2]
87801d9c:	e0600003 	rsb	r0, r0, r3
87801da0:	e12fff1e 	bx	lr

87801da4 <rt_strnlen>:
87801da4:	e1a03000 	mov	r3, r0
87801da8:	e5d32000 	ldrb	r2, [r3]
87801dac:	e3520000 	cmp	r2, #0
87801db0:	e0602003 	rsb	r2, r0, r3
87801db4:	0a000002 	beq	87801dc4 <rt_strnlen+0x20>
87801db8:	e1520001 	cmp	r2, r1
87801dbc:	32833001 	addcc	r3, r3, #1
87801dc0:	3afffff8 	bcc	87801da8 <rt_strnlen+0x4>
87801dc4:	e1a00002 	mov	r0, r2
87801dc8:	e12fff1e 	bx	lr

87801dcc <rt_strlen>:
87801dcc:	e1a03000 	mov	r3, r0
87801dd0:	e5d32000 	ldrb	r2, [r3]
87801dd4:	e2831001 	add	r1, r3, #1
87801dd8:	e3520000 	cmp	r2, #0
87801ddc:	11a03001 	movne	r3, r1
87801de0:	1afffffa 	bne	87801dd0 <rt_strlen+0x4>
87801de4:	e0600003 	rsb	r0, r0, r3
87801de8:	e12fff1e 	bx	lr

87801dec <rt_strstr>:
87801dec:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
87801df0:	e1a06000 	mov	r6, r0
87801df4:	e1a00001 	mov	r0, r1
87801df8:	e1a09001 	mov	r9, r1
87801dfc:	ebfffff2 	bl	87801dcc <rt_strlen>
87801e00:	e2507000 	subs	r7, r0, #0
87801e04:	e1a00006 	mov	r0, r6
87801e08:	0a000011 	beq	87801e54 <rt_strstr+0x68>
87801e0c:	ebffffee 	bl	87801dcc <rt_strlen>
87801e10:	e1a08000 	mov	r8, r0
87801e14:	e1a05000 	mov	r5, r0
87801e18:	e1550007 	cmp	r5, r7
87801e1c:	e0650008 	rsb	r0, r5, r8
87801e20:	e0864000 	add	r4, r6, r0
87801e24:	ba000008 	blt	87801e4c <rt_strstr+0x60>
87801e28:	e1a02007 	mov	r2, r7
87801e2c:	e1a01009 	mov	r1, r9
87801e30:	e1a00004 	mov	r0, r4
87801e34:	e2455001 	sub	r5, r5, #1
87801e38:	ebffff90 	bl	87801c80 <rt_memcmp>
87801e3c:	e3500000 	cmp	r0, #0
87801e40:	1afffff4 	bne	87801e18 <rt_strstr+0x2c>
87801e44:	e1a00004 	mov	r0, r4
87801e48:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
87801e4c:	e3a00000 	mov	r0, #0
87801e50:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
87801e54:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

87801e58 <rt_strdup>:
87801e58:	e92d4070 	push	{r4, r5, r6, lr}
87801e5c:	e1a06000 	mov	r6, r0
87801e60:	ebffffd9 	bl	87801dcc <rt_strlen>
87801e64:	e2804001 	add	r4, r0, #1
87801e68:	e1a00004 	mov	r0, r4
87801e6c:	eb00019b 	bl	878024e0 <rt_malloc>
87801e70:	e2505000 	subs	r5, r0, #0
87801e74:	0a000002 	beq	87801e84 <rt_strdup+0x2c>
87801e78:	e1a02004 	mov	r2, r4
87801e7c:	e1a01006 	mov	r1, r6
87801e80:	ebffff37 	bl	87801b64 <rt_memcpy>
87801e84:	e1a00005 	mov	r0, r5
87801e88:	e8bd8070 	pop	{r4, r5, r6, pc}

87801e8c <rt_show_version>:
87801e8c:	e12fff1e 	bx	lr

87801e90 <rt_vsnprintf>:
87801e90:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
87801e94:	e1a06002 	mov	r6, r2
87801e98:	e0907001 	adds	r7, r0, r1
87801e9c:	e24dd024 	sub	sp, sp, #36	; 0x24
87801ea0:	21e09000 	mvncs	r9, r0
87801ea4:	e1a08000 	mov	r8, r0
87801ea8:	e1a02003 	mov	r2, r3
87801eac:	23e07000 	mvncs	r7, #0
87801eb0:	31a09001 	movcc	r9, r1
87801eb4:	e1a04000 	mov	r4, r0
87801eb8:	e3a0a020 	mov	sl, #32
87801ebc:	e5d63000 	ldrb	r3, [r6]
87801ec0:	e3530000 	cmp	r3, #0
87801ec4:	0a0000ea 	beq	87802274 <rt_vsnprintf+0x3e4>
87801ec8:	e3530025 	cmp	r3, #37	; 0x25
87801ecc:	03a05000 	moveq	r5, #0
87801ed0:	01a03006 	moveq	r3, r6
87801ed4:	0a000005 	beq	87801ef0 <rt_vsnprintf+0x60>
87801ed8:	e1540007 	cmp	r4, r7
87801edc:	35c43000 	strbcc	r3, [r4]
87801ee0:	ea0000ba 	b	878021d0 <rt_vsnprintf+0x340>
87801ee4:	e351002b 	cmp	r1, #43	; 0x2b
87801ee8:	03855004 	orreq	r5, r5, #4
87801eec:	1a000004 	bne	87801f04 <rt_vsnprintf+0x74>
87801ef0:	e5f31001 	ldrb	r1, [r3, #1]!
87801ef4:	e351002d 	cmp	r1, #45	; 0x2d
87801ef8:	03855010 	orreq	r5, r5, #16
87801efc:	1afffff8 	bne	87801ee4 <rt_vsnprintf+0x54>
87801f00:	eafffffa 	b	87801ef0 <rt_vsnprintf+0x60>
87801f04:	e3510020 	cmp	r1, #32
87801f08:	03855008 	orreq	r5, r5, #8
87801f0c:	0afffff7 	beq	87801ef0 <rt_vsnprintf+0x60>
87801f10:	e3510023 	cmp	r1, #35	; 0x23
87801f14:	03855020 	orreq	r5, r5, #32
87801f18:	0afffff4 	beq	87801ef0 <rt_vsnprintf+0x60>
87801f1c:	e3510030 	cmp	r1, #48	; 0x30
87801f20:	03855001 	orreq	r5, r5, #1
87801f24:	0afffff1 	beq	87801ef0 <rt_vsnprintf+0x60>
87801f28:	e2410030 	sub	r0, r1, #48	; 0x30
87801f2c:	e3500009 	cmp	r0, #9
87801f30:	91a0c003 	movls	ip, r3
87801f34:	93a01000 	movls	r1, #0
87801f38:	93a0e00a 	movls	lr, #10
87801f3c:	8a000008 	bhi	87801f64 <rt_vsnprintf+0xd4>
87801f40:	e1a0300c 	mov	r3, ip
87801f44:	e28cc001 	add	ip, ip, #1
87801f48:	e5d30000 	ldrb	r0, [r3]
87801f4c:	e2406030 	sub	r6, r0, #48	; 0x30
87801f50:	e3560009 	cmp	r6, #9
87801f54:	8a00000c 	bhi	87801f8c <rt_vsnprintf+0xfc>
87801f58:	e021019e 	mla	r1, lr, r1, r0
87801f5c:	e2411030 	sub	r1, r1, #48	; 0x30
87801f60:	eafffff6 	b	87801f40 <rt_vsnprintf+0xb0>
87801f64:	e351002a 	cmp	r1, #42	; 0x2a
87801f68:	13e01000 	mvnne	r1, #0
87801f6c:	1a000006 	bne	87801f8c <rt_vsnprintf+0xfc>
87801f70:	e5921000 	ldr	r1, [r2]
87801f74:	e2820004 	add	r0, r2, #4
87801f78:	e2833001 	add	r3, r3, #1
87801f7c:	e1a02000 	mov	r2, r0
87801f80:	e3510000 	cmp	r1, #0
87801f84:	b2611000 	rsblt	r1, r1, #0
87801f88:	b3855010 	orrlt	r5, r5, #16
87801f8c:	e5d30000 	ldrb	r0, [r3]
87801f90:	e350002e 	cmp	r0, #46	; 0x2e
87801f94:	11a06003 	movne	r6, r3
87801f98:	13e03000 	mvnne	r3, #0
87801f9c:	1a000017 	bne	87802000 <rt_vsnprintf+0x170>
87801fa0:	e5d30001 	ldrb	r0, [r3, #1]
87801fa4:	e2836001 	add	r6, r3, #1
87801fa8:	e240c030 	sub	ip, r0, #48	; 0x30
87801fac:	e35c0009 	cmp	ip, #9
87801fb0:	91a00006 	movls	r0, r6
87801fb4:	93a03000 	movls	r3, #0
87801fb8:	93a0b00a 	movls	fp, #10
87801fbc:	8a000008 	bhi	87801fe4 <rt_vsnprintf+0x154>
87801fc0:	e1a06000 	mov	r6, r0
87801fc4:	e2800001 	add	r0, r0, #1
87801fc8:	e5d6c000 	ldrb	ip, [r6]
87801fcc:	e24ce030 	sub	lr, ip, #48	; 0x30
87801fd0:	e35e0009 	cmp	lr, #9
87801fd4:	8a000008 	bhi	87801ffc <rt_vsnprintf+0x16c>
87801fd8:	e023c39b 	mla	r3, fp, r3, ip
87801fdc:	e2433030 	sub	r3, r3, #48	; 0x30
87801fe0:	eafffff6 	b	87801fc0 <rt_vsnprintf+0x130>
87801fe4:	e350002a 	cmp	r0, #42	; 0x2a
87801fe8:	13a03000 	movne	r3, #0
87801fec:	1a000003 	bne	87802000 <rt_vsnprintf+0x170>
87801ff0:	e2836002 	add	r6, r3, #2
87801ff4:	e2822004 	add	r2, r2, #4
87801ff8:	e5123004 	ldr	r3, [r2, #-4]
87801ffc:	e1c33fc3 	bic	r3, r3, r3, asr #31
87802000:	e5d6c000 	ldrb	ip, [r6]
87802004:	e20c00fb 	and	r0, ip, #251	; 0xfb
87802008:	e3500068 	cmp	r0, #104	; 0x68
8780200c:	02866001 	addeq	r6, r6, #1
87802010:	13a0c000 	movne	ip, #0
87802014:	e5d60000 	ldrb	r0, [r6]
87802018:	e3500069 	cmp	r0, #105	; 0x69
8780201c:	0a000070 	beq	878021e4 <rt_vsnprintf+0x354>
87802020:	8a00000c 	bhi	87802058 <rt_vsnprintf+0x1c8>
87802024:	e3500058 	cmp	r0, #88	; 0x58
87802028:	0a00006a 	beq	878021d8 <rt_vsnprintf+0x348>
8780202c:	8a000004 	bhi	87802044 <rt_vsnprintf+0x1b4>
87802030:	e3500025 	cmp	r0, #37	; 0x25
87802034:	1a00006c 	bne	878021ec <rt_vsnprintf+0x35c>
87802038:	e1540007 	cmp	r4, r7
8780203c:	35c40000 	strbcc	r0, [r4]
87802040:	ea000062 	b	878021d0 <rt_vsnprintf+0x340>
87802044:	e3500063 	cmp	r0, #99	; 0x63
87802048:	0a000016 	beq	878020a8 <rt_vsnprintf+0x218>
8780204c:	e3500064 	cmp	r0, #100	; 0x64
87802050:	0a000063 	beq	878021e4 <rt_vsnprintf+0x354>
87802054:	ea000064 	b	878021ec <rt_vsnprintf+0x35c>
87802058:	e3500073 	cmp	r0, #115	; 0x73
8780205c:	0a000028 	beq	87802104 <rt_vsnprintf+0x274>
87802060:	8a00000b 	bhi	87802094 <rt_vsnprintf+0x204>
87802064:	e350006f 	cmp	r0, #111	; 0x6f
87802068:	0a00006e 	beq	87802228 <rt_vsnprintf+0x398>
8780206c:	e3500070 	cmp	r0, #112	; 0x70
87802070:	1a00005d 	bne	878021ec <rt_vsnprintf+0x35c>
87802074:	e3710001 	cmn	r1, #1
87802078:	e282b004 	add	fp, r2, #4
8780207c:	03855001 	orreq	r5, r5, #1
87802080:	03a01008 	moveq	r1, #8
87802084:	e88d002a 	stm	sp, {r1, r3, r5}
87802088:	e5922000 	ldr	r2, [r2]
8780208c:	e3a03010 	mov	r3, #16
87802090:	ea000070 	b	87802258 <rt_vsnprintf+0x3c8>
87802094:	e3500075 	cmp	r0, #117	; 0x75
87802098:	0a000060 	beq	87802220 <rt_vsnprintf+0x390>
8780209c:	e3500078 	cmp	r0, #120	; 0x78
878020a0:	0a00004d 	beq	878021dc <rt_vsnprintf+0x34c>
878020a4:	ea000050 	b	878021ec <rt_vsnprintf+0x35c>
878020a8:	e3150010 	tst	r5, #16
878020ac:	1a000006 	bne	878020cc <rt_vsnprintf+0x23c>
878020b0:	e2411001 	sub	r1, r1, #1
878020b4:	e3510000 	cmp	r1, #0
878020b8:	da000003 	ble	878020cc <rt_vsnprintf+0x23c>
878020bc:	e1540007 	cmp	r4, r7
878020c0:	e2844001 	add	r4, r4, #1
878020c4:	3544a001 	strbcc	sl, [r4, #-1]
878020c8:	eafffff8 	b	878020b0 <rt_vsnprintf+0x220>
878020cc:	e1540007 	cmp	r4, r7
878020d0:	e2823004 	add	r3, r2, #4
878020d4:	e2840001 	add	r0, r4, #1
878020d8:	35922000 	ldrcc	r2, [r2]
878020dc:	35c42000 	strbcc	r2, [r4]
878020e0:	e2411001 	sub	r1, r1, #1
878020e4:	e3510000 	cmp	r1, #0
878020e8:	da000003 	ble	878020fc <rt_vsnprintf+0x26c>
878020ec:	e1500007 	cmp	r0, r7
878020f0:	e2800001 	add	r0, r0, #1
878020f4:	3540a001 	strbcc	sl, [r0, #-1]
878020f8:	eafffff8 	b	878020e0 <rt_vsnprintf+0x250>
878020fc:	e1a02003 	mov	r2, r3
87802100:	ea000058 	b	87802268 <rt_vsnprintf+0x3d8>
87802104:	e58d3018 	str	r3, [sp, #24]
87802108:	e282b004 	add	fp, r2, #4
8780210c:	e5922000 	ldr	r2, [r2]
87802110:	e59f317c 	ldr	r3, [pc, #380]	; 87802294 <rt_vsnprintf+0x404>
87802114:	e58d101c 	str	r1, [sp, #28]
87802118:	e3520000 	cmp	r2, #0
8780211c:	01a02003 	moveq	r2, r3
87802120:	e58d2014 	str	r2, [sp, #20]
87802124:	e1a00002 	mov	r0, r2
87802128:	ebffff27 	bl	87801dcc <rt_strlen>
8780212c:	e59d3018 	ldr	r3, [sp, #24]
87802130:	e59d2014 	ldr	r2, [sp, #20]
87802134:	e59d101c 	ldr	r1, [sp, #28]
87802138:	e3530000 	cmp	r3, #0
8780213c:	d3a0c000 	movle	ip, #0
87802140:	c3a0c001 	movgt	ip, #1
87802144:	e1530000 	cmp	r3, r0
87802148:	a3a0c000 	movge	ip, #0
8780214c:	e35c0000 	cmp	ip, #0
87802150:	01a03000 	moveq	r3, r0
87802154:	e3150010 	tst	r5, #16
87802158:	1a000007 	bne	8780217c <rt_vsnprintf+0x2ec>
8780215c:	e2411001 	sub	r1, r1, #1
87802160:	e2810001 	add	r0, r1, #1
87802164:	e1500003 	cmp	r0, r3
87802168:	da000003 	ble	8780217c <rt_vsnprintf+0x2ec>
8780216c:	e1540007 	cmp	r4, r7
87802170:	e2844001 	add	r4, r4, #1
87802174:	3544a001 	strbcc	sl, [r4, #-1]
87802178:	eafffff7 	b	8780215c <rt_vsnprintf+0x2cc>
8780217c:	e1a00004 	mov	r0, r4
87802180:	e064c000 	rsb	ip, r4, r0
87802184:	e153000c 	cmp	r3, ip
87802188:	da000005 	ble	878021a4 <rt_vsnprintf+0x314>
8780218c:	e1500007 	cmp	r0, r7
87802190:	e2822001 	add	r2, r2, #1
87802194:	e2800001 	add	r0, r0, #1
87802198:	3552c001 	ldrbcc	ip, [r2, #-1]
8780219c:	3540c001 	strbcc	ip, [r0, #-1]
878021a0:	eafffff6 	b	87802180 <rt_vsnprintf+0x2f0>
878021a4:	e3530000 	cmp	r3, #0
878021a8:	a0844003 	addge	r4, r4, r3
878021ac:	e1a00004 	mov	r0, r4
878021b0:	e0602001 	rsb	r2, r0, r1
878021b4:	e0842002 	add	r2, r4, r2
878021b8:	e1520003 	cmp	r2, r3
878021bc:	da000028 	ble	87802264 <rt_vsnprintf+0x3d4>
878021c0:	e1500007 	cmp	r0, r7
878021c4:	e2800001 	add	r0, r0, #1
878021c8:	3540a001 	strbcc	sl, [r0, #-1]
878021cc:	eafffff7 	b	878021b0 <rt_vsnprintf+0x320>
878021d0:	e2840001 	add	r0, r4, #1
878021d4:	ea000023 	b	87802268 <rt_vsnprintf+0x3d8>
878021d8:	e3855040 	orr	r5, r5, #64	; 0x40
878021dc:	e3a00010 	mov	r0, #16
878021e0:	ea000011 	b	8780222c <rt_vsnprintf+0x39c>
878021e4:	e3855002 	orr	r5, r5, #2
878021e8:	ea00000c 	b	87802220 <rt_vsnprintf+0x390>
878021ec:	e1540007 	cmp	r4, r7
878021f0:	e2840001 	add	r0, r4, #1
878021f4:	33a03025 	movcc	r3, #37	; 0x25
878021f8:	35c43000 	strbcc	r3, [r4]
878021fc:	e5d63000 	ldrb	r3, [r6]
87802200:	e3530000 	cmp	r3, #0
87802204:	0a000003 	beq	87802218 <rt_vsnprintf+0x388>
87802208:	e1570000 	cmp	r7, r0
8780220c:	e2840002 	add	r0, r4, #2
87802210:	85c43001 	strbhi	r3, [r4, #1]
87802214:	ea000013 	b	87802268 <rt_vsnprintf+0x3d8>
87802218:	e2466001 	sub	r6, r6, #1
8780221c:	ea000011 	b	87802268 <rt_vsnprintf+0x3d8>
87802220:	e3a0000a 	mov	r0, #10
87802224:	ea000000 	b	8780222c <rt_vsnprintf+0x39c>
87802228:	e3a00008 	mov	r0, #8
8780222c:	e35c006c 	cmp	ip, #108	; 0x6c
87802230:	e282b004 	add	fp, r2, #4
87802234:	e5922000 	ldr	r2, [r2]
87802238:	0a000004 	beq	87802250 <rt_vsnprintf+0x3c0>
8780223c:	e35c0068 	cmp	ip, #104	; 0x68
87802240:	1a000002 	bne	87802250 <rt_vsnprintf+0x3c0>
87802244:	e3150002 	tst	r5, #2
87802248:	06ff2072 	uxtheq	r2, r2
8780224c:	16bf2072 	sxthne	r2, r2
87802250:	e88d002a 	stm	sp, {r1, r3, r5}
87802254:	e1a03000 	mov	r3, r0
87802258:	e1a01007 	mov	r1, r7
8780225c:	e1a00004 	mov	r0, r4
87802260:	ebfffd68 	bl	87801808 <print_number>
87802264:	e1a0200b 	mov	r2, fp
87802268:	e2866001 	add	r6, r6, #1
8780226c:	e1a04000 	mov	r4, r0
87802270:	eaffff11 	b	87801ebc <rt_vsnprintf+0x2c>
87802274:	e3590000 	cmp	r9, #0
87802278:	0a000002 	beq	87802288 <rt_vsnprintf+0x3f8>
8780227c:	e1540007 	cmp	r4, r7
87802280:	35c43000 	strbcc	r3, [r4]
87802284:	25473001 	strbcs	r3, [r7, #-1]
87802288:	e0680004 	rsb	r0, r8, r4
8780228c:	e28dd024 	add	sp, sp, #36	; 0x24
87802290:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
87802294:	87804218 	.word	0x87804218

87802298 <rt_snprintf>:
87802298:	e92d000c 	push	{r2, r3}
8780229c:	e92d4007 	push	{r0, r1, r2, lr}
878022a0:	e28d3014 	add	r3, sp, #20
878022a4:	e59d2010 	ldr	r2, [sp, #16]
878022a8:	e58d3004 	str	r3, [sp, #4]
878022ac:	ebfffef7 	bl	87801e90 <rt_vsnprintf>
878022b0:	e28dd00c 	add	sp, sp, #12
878022b4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
878022b8:	e28dd008 	add	sp, sp, #8
878022bc:	e12fff1e 	bx	lr

878022c0 <rt_vsprintf>:
878022c0:	e1a03002 	mov	r3, r2
878022c4:	e1a02001 	mov	r2, r1
878022c8:	e3e01000 	mvn	r1, #0
878022cc:	eafffeef 	b	87801e90 <rt_vsnprintf>

878022d0 <rt_sprintf>:
878022d0:	e92d000e 	push	{r1, r2, r3}
878022d4:	e92d4003 	push	{r0, r1, lr}
878022d8:	e28d2010 	add	r2, sp, #16
878022dc:	e59d100c 	ldr	r1, [sp, #12]
878022e0:	e58d2004 	str	r2, [sp, #4]
878022e4:	ebfffff5 	bl	878022c0 <rt_vsprintf>
878022e8:	e28dd008 	add	sp, sp, #8
878022ec:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
878022f0:	e28dd00c 	add	sp, sp, #12
878022f4:	e12fff1e 	bx	lr

878022f8 <rt_malloc_align>:
878022f8:	e2811003 	add	r1, r1, #3
878022fc:	e2800003 	add	r0, r0, #3
87802300:	e92d4010 	push	{r4, lr}
87802304:	e3c00003 	bic	r0, r0, #3
87802308:	e3c14003 	bic	r4, r1, #3
8780230c:	e0800004 	add	r0, r0, r4
87802310:	eb000072 	bl	878024e0 <rt_malloc>
87802314:	e3500000 	cmp	r0, #0
87802318:	08bd8010 	popeq	{r4, pc}
8780231c:	e2443001 	sub	r3, r4, #1
87802320:	e1a02000 	mov	r2, r0
87802324:	e1100003 	tst	r0, r3
87802328:	10830000 	addne	r0, r3, r0
8780232c:	12644000 	rsbne	r4, r4, #0
87802330:	00840000 	addeq	r0, r4, r0
87802334:	10000004 	andne	r0, r0, r4
87802338:	e5002004 	str	r2, [r0, #-4]
8780233c:	e8bd8010 	pop	{r4, pc}

87802340 <rt_free_align>:
87802340:	e5100004 	ldr	r0, [r0, #-4]
87802344:	ea0000d3 	b	87802698 <rt_free>

87802348 <__rt_ffs>:
87802348:	e3500000 	cmp	r0, #0
8780234c:	012fff1e 	bxeq	lr
87802350:	e59f3054 	ldr	r3, [pc, #84]	; 878023ac <__rt_ffs+0x64>
87802354:	e21020ff 	ands	r2, r0, #255	; 0xff
87802358:	0a000003 	beq	8780236c <__rt_ffs+0x24>
8780235c:	e0830002 	add	r0, r3, r2
87802360:	e5d00028 	ldrb	r0, [r0, #40]	; 0x28
87802364:	e2800001 	add	r0, r0, #1
87802368:	e12fff1e 	bx	lr
8780236c:	e3100cff 	tst	r0, #65280	; 0xff00
87802370:	0a000004 	beq	87802388 <__rt_ffs+0x40>
87802374:	e7e70450 	ubfx	r0, r0, #8, #8
87802378:	e0830000 	add	r0, r3, r0
8780237c:	e5d00028 	ldrb	r0, [r0, #40]	; 0x28
87802380:	e2800009 	add	r0, r0, #9
87802384:	e12fff1e 	bx	lr
87802388:	e31008ff 	tst	r0, #16711680	; 0xff0000
8780238c:	17e70850 	ubfxne	r0, r0, #16, #8
87802390:	10830000 	addne	r0, r3, r0
87802394:	15d00028 	ldrbne	r0, [r0, #40]	; 0x28
87802398:	12800011 	addne	r0, r0, #17
8780239c:	00830c20 	addeq	r0, r3, r0, lsr #24
878023a0:	05d00028 	ldrbeq	r0, [r0, #40]	; 0x28
878023a4:	02800019 	addeq	r0, r0, #25
878023a8:	e12fff1e 	bx	lr
878023ac:	878040f0 	.word	0x878040f0

878023b0 <plug_holes>:
878023b0:	e59f1094 	ldr	r1, [pc, #148]	; 8780244c <plug_holes+0x9c>
878023b4:	e5903004 	ldr	r3, [r0, #4]
878023b8:	e5912000 	ldr	r2, [r1]
878023bc:	e0823003 	add	r3, r2, r3
878023c0:	e1500003 	cmp	r0, r3
878023c4:	0a00000e 	beq	87802404 <plug_holes+0x54>
878023c8:	e1d3c0b2 	ldrh	ip, [r3, #2]
878023cc:	e35c0000 	cmp	ip, #0
878023d0:	1a00000b 	bne	87802404 <plug_holes+0x54>
878023d4:	e591c004 	ldr	ip, [r1, #4]
878023d8:	e153000c 	cmp	r3, ip
878023dc:	0a000008 	beq	87802404 <plug_holes+0x54>
878023e0:	e591c008 	ldr	ip, [r1, #8]
878023e4:	e153000c 	cmp	r3, ip
878023e8:	e593c004 	ldr	ip, [r3, #4]
878023ec:	05810008 	streq	r0, [r1, #8]
878023f0:	e580c004 	str	ip, [r0, #4]
878023f4:	e062c000 	rsb	ip, r2, r0
878023f8:	e5933004 	ldr	r3, [r3, #4]
878023fc:	e0823003 	add	r3, r2, r3
87802400:	e583c008 	str	ip, [r3, #8]
87802404:	e590c008 	ldr	ip, [r0, #8]
87802408:	e082300c 	add	r3, r2, ip
8780240c:	e1500003 	cmp	r0, r3
87802410:	012fff1e 	bxeq	lr
87802414:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
87802418:	e1d3e0b2 	ldrh	lr, [r3, #2]
8780241c:	e35e0000 	cmp	lr, #0
87802420:	149df004 	popne	{pc}		; (ldrne pc, [sp], #4)
87802424:	e5911008 	ldr	r1, [r1, #8]
87802428:	e1500001 	cmp	r0, r1
8780242c:	059f1018 	ldreq	r1, [pc, #24]	; 8780244c <plug_holes+0x9c>
87802430:	05813008 	streq	r3, [r1, #8]
87802434:	e5901004 	ldr	r1, [r0, #4]
87802438:	e5831004 	str	r1, [r3, #4]
8780243c:	e5903004 	ldr	r3, [r0, #4]
87802440:	e0822003 	add	r2, r2, r3
87802444:	e582c008 	str	ip, [r2, #8]
87802448:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
8780244c:	87804704 	.word	0x87804704

87802450 <rt_system_heap_init>:
87802450:	e3c11003 	bic	r1, r1, #3
87802454:	e3510018 	cmp	r1, #24
87802458:	912fff1e 	bxls	lr
8780245c:	e2800003 	add	r0, r0, #3
87802460:	e2413018 	sub	r3, r1, #24
87802464:	e3c00003 	bic	r0, r0, #3
87802468:	e1500003 	cmp	r0, r3
8780246c:	812fff1e 	bxhi	lr
87802470:	e92d4010 	push	{r4, lr}
87802474:	e0601001 	rsb	r1, r0, r1
87802478:	e59f4058 	ldr	r4, [pc, #88]	; 878024d8 <rt_system_heap_init+0x88>
8780247c:	e2413018 	sub	r3, r1, #24
87802480:	e241100c 	sub	r1, r1, #12
87802484:	e3012ea0 	movw	r2, #7840	; 0x1ea0
87802488:	e080c001 	add	ip, r0, r1
8780248c:	e584300c 	str	r3, [r4, #12]
87802490:	e3a03000 	mov	r3, #0
87802494:	e1c020b0 	strh	r2, [r0]
87802498:	e5801004 	str	r1, [r0, #4]
8780249c:	e5803008 	str	r3, [r0, #8]
878024a0:	e1c030b2 	strh	r3, [r0, #2]
878024a4:	e18020b1 	strh	r2, [r0, r1]
878024a8:	e3a02001 	mov	r2, #1
878024ac:	e5840000 	str	r0, [r4]
878024b0:	e2840010 	add	r0, r4, #16
878024b4:	e58c1004 	str	r1, [ip, #4]
878024b8:	e58c1008 	str	r1, [ip, #8]
878024bc:	e1cc20b2 	strh	r2, [ip, #2]
878024c0:	e59f1014 	ldr	r1, [pc, #20]	; 878024dc <rt_system_heap_init+0x8c>
878024c4:	e584c004 	str	ip, [r4, #4]
878024c8:	ebfff814 	bl	87800520 <rt_sem_init>
878024cc:	e5943000 	ldr	r3, [r4]
878024d0:	e5843008 	str	r3, [r4, #8]
878024d4:	e8bd8010 	pop	{r4, pc}
878024d8:	87804704 	.word	0x87804704
878024dc:	8780421f 	.word	0x8780421f

878024e0 <rt_malloc>:
878024e0:	e3500000 	cmp	r0, #0
878024e4:	012fff1e 	bxeq	lr
878024e8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
878024ec:	e2800003 	add	r0, r0, #3
878024f0:	e59f516c 	ldr	r5, [pc, #364]	; 87802664 <rt_malloc+0x184>
878024f4:	e3c06003 	bic	r6, r0, #3
878024f8:	e595300c 	ldr	r3, [r5, #12]
878024fc:	e1560003 	cmp	r6, r3
87802500:	8a000055 	bhi	8780265c <rt_malloc+0x17c>
87802504:	e356000b 	cmp	r6, #11
87802508:	e3e01000 	mvn	r1, #0
8780250c:	e2850010 	add	r0, r5, #16
87802510:	93a0600c 	movls	r6, #12
87802514:	ebfff82c 	bl	878005cc <rt_sem_take>
87802518:	e595c008 	ldr	ip, [r5, #8]
8780251c:	e5951000 	ldr	r1, [r5]
87802520:	e595000c 	ldr	r0, [r5, #12]
87802524:	e061300c 	rsb	r3, r1, ip
87802528:	e0669000 	rsb	r9, r6, r0
8780252c:	e1530009 	cmp	r3, r9
87802530:	2a000047 	bcs	87802654 <rt_malloc+0x174>
87802534:	e0814003 	add	r4, r1, r3
87802538:	e1d480b2 	ldrh	r8, [r4, #2]
8780253c:	e5947004 	ldr	r7, [r4, #4]
87802540:	e3580000 	cmp	r8, #0
87802544:	1a000040 	bne	8780264c <rt_malloc+0x16c>
87802548:	e0632007 	rsb	r2, r3, r7
8780254c:	e242e00c 	sub	lr, r2, #12
87802550:	e156000e 	cmp	r6, lr
87802554:	8a00003c 	bhi	8780264c <rt_malloc+0x16c>
87802558:	e2869018 	add	r9, r6, #24
8780255c:	e15e0009 	cmp	lr, r9
87802560:	3a000018 	bcc	878025c8 <rt_malloc+0xe8>
87802564:	e286200c 	add	r2, r6, #12
87802568:	e3019ea0 	movw	r9, #7840	; 0x1ea0
8780256c:	e0822003 	add	r2, r2, r3
87802570:	e280000c 	add	r0, r0, #12
87802574:	e081e002 	add	lr, r1, r2
87802578:	e18190b2 	strh	r9, [r1, r2]
8780257c:	e58e3008 	str	r3, [lr, #8]
87802580:	e3a03001 	mov	r3, #1
87802584:	e58e7004 	str	r7, [lr, #4]
87802588:	e1ce80b2 	strh	r8, [lr, #2]
8780258c:	e5842004 	str	r2, [r4, #4]
87802590:	e1c430b2 	strh	r3, [r4, #2]
87802594:	e59e3004 	ldr	r3, [lr, #4]
87802598:	e1530000 	cmp	r3, r0
8780259c:	e5950030 	ldr	r0, [r5, #48]	; 0x30
878025a0:	10811003 	addne	r1, r1, r3
878025a4:	e5953034 	ldr	r3, [r5, #52]	; 0x34
878025a8:	e280000c 	add	r0, r0, #12
878025ac:	e0800006 	add	r0, r0, r6
878025b0:	15812008 	strne	r2, [r1, #8]
878025b4:	e1500003 	cmp	r0, r3
878025b8:	e5850030 	str	r0, [r5, #48]	; 0x30
878025bc:	859f30a0 	ldrhi	r3, [pc, #160]	; 87802664 <rt_malloc+0x184>
878025c0:	85830034 	strhi	r0, [r3, #52]	; 0x34
878025c4:	ea000008 	b	878025ec <rt_malloc+0x10c>
878025c8:	e3a03001 	mov	r3, #1
878025cc:	e1c430b2 	strh	r3, [r4, #2]
878025d0:	e5953030 	ldr	r3, [r5, #48]	; 0x30
878025d4:	e0823003 	add	r3, r2, r3
878025d8:	e5952034 	ldr	r2, [r5, #52]	; 0x34
878025dc:	e5853030 	str	r3, [r5, #48]	; 0x30
878025e0:	e1530002 	cmp	r3, r2
878025e4:	859f2078 	ldrhi	r2, [pc, #120]	; 87802664 <rt_malloc+0x184>
878025e8:	85823034 	strhi	r3, [r2, #52]	; 0x34
878025ec:	e15c0004 	cmp	ip, r4
878025f0:	e3013ea0 	movw	r3, #7840	; 0x1ea0
878025f4:	e1c430b0 	strh	r3, [r4]
878025f8:	1a00000c 	bne	87802630 <rt_malloc+0x150>
878025fc:	e895000b 	ldm	r5, {r0, r1, r3}
87802600:	e3a02000 	mov	r2, #0
87802604:	ea000004 	b	8780261c <rt_malloc+0x13c>
87802608:	e1510003 	cmp	r1, r3
8780260c:	0a00000b 	beq	87802640 <rt_malloc+0x160>
87802610:	e5933004 	ldr	r3, [r3, #4]
87802614:	e3a02001 	mov	r2, #1
87802618:	e0803003 	add	r3, r0, r3
8780261c:	e1d3c0b2 	ldrh	ip, [r3, #2]
87802620:	e35c0000 	cmp	ip, #0
87802624:	1afffff7 	bne	87802608 <rt_malloc+0x128>
87802628:	e3520000 	cmp	r2, #0
8780262c:	15853008 	strne	r3, [r5, #8]
87802630:	e59f0030 	ldr	r0, [pc, #48]	; 87802668 <rt_malloc+0x188>
87802634:	ebfff811 	bl	87800680 <rt_sem_release>
87802638:	e284000c 	add	r0, r4, #12
8780263c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
87802640:	e3520000 	cmp	r2, #0
87802644:	15851008 	strne	r1, [r5, #8]
87802648:	eafffff8 	b	87802630 <rt_malloc+0x150>
8780264c:	e1a03007 	mov	r3, r7
87802650:	eaffffb5 	b	8780252c <rt_malloc+0x4c>
87802654:	e59f000c 	ldr	r0, [pc, #12]	; 87802668 <rt_malloc+0x188>
87802658:	ebfff808 	bl	87800680 <rt_sem_release>
8780265c:	e3a00000 	mov	r0, #0
87802660:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
87802664:	87804704 	.word	0x87804704
87802668:	87804714 	.word	0x87804714

8780266c <rt_calloc>:
8780266c:	e92d4070 	push	{r4, r5, r6, lr}
87802670:	e0040091 	mul	r4, r1, r0
87802674:	e1a00004 	mov	r0, r4
87802678:	ebffff98 	bl	878024e0 <rt_malloc>
8780267c:	e2505000 	subs	r5, r0, #0
87802680:	0a000002 	beq	87802690 <rt_calloc+0x24>
87802684:	e1a02004 	mov	r2, r4
87802688:	e3a01000 	mov	r1, #0
8780268c:	ebfffd0d 	bl	87801ac8 <rt_memset>
87802690:	e1a00005 	mov	r0, r5
87802694:	e8bd8070 	pop	{r4, r5, r6, pc}

87802698 <rt_free>:
87802698:	e3500000 	cmp	r0, #0
8780269c:	012fff1e 	bxeq	lr
878026a0:	e92d4070 	push	{r4, r5, r6, lr}
878026a4:	e59f4074 	ldr	r4, [pc, #116]	; 87802720 <rt_free+0x88>
878026a8:	e5943000 	ldr	r3, [r4]
878026ac:	e1500003 	cmp	r0, r3
878026b0:	38bd8070 	popcc	{r4, r5, r6, pc}
878026b4:	e5943004 	ldr	r3, [r4, #4]
878026b8:	e1500003 	cmp	r0, r3
878026bc:	28bd8070 	popcs	{r4, r5, r6, pc}
878026c0:	e240600c 	sub	r6, r0, #12
878026c4:	e1a05000 	mov	r5, r0
878026c8:	e3e01000 	mvn	r1, #0
878026cc:	e2840010 	add	r0, r4, #16
878026d0:	ebfff7bd 	bl	878005cc <rt_sem_take>
878026d4:	e5152008 	ldr	r2, [r5, #-8]
878026d8:	e3a03000 	mov	r3, #0
878026dc:	e14530ba 	strh	r3, [r5, #-10]
878026e0:	e3013ea0 	movw	r3, #7840	; 0x1ea0
878026e4:	e14530bc 	strh	r3, [r5, #-12]
878026e8:	e1a00006 	mov	r0, r6
878026ec:	e5943008 	ldr	r3, [r4, #8]
878026f0:	e1560003 	cmp	r6, r3
878026f4:	e5943030 	ldr	r3, [r4, #48]	; 0x30
878026f8:	35846008 	strcc	r6, [r4, #8]
878026fc:	e0622003 	rsb	r2, r2, r3
87802700:	e5943000 	ldr	r3, [r4]
87802704:	e0633006 	rsb	r3, r3, r6
87802708:	e0823003 	add	r3, r2, r3
8780270c:	e5843030 	str	r3, [r4, #48]	; 0x30
87802710:	ebffff26 	bl	878023b0 <plug_holes>
87802714:	e59f0008 	ldr	r0, [pc, #8]	; 87802724 <rt_free+0x8c>
87802718:	e8bd4070 	pop	{r4, r5, r6, lr}
8780271c:	eafff7d7 	b	87800680 <rt_sem_release>
87802720:	87804704 	.word	0x87804704
87802724:	87804714 	.word	0x87804714

87802728 <rt_realloc>:
87802728:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
8780272c:	e2811003 	add	r1, r1, #3
87802730:	e59f8144 	ldr	r8, [pc, #324]	; 8780287c <rt_realloc+0x154>
87802734:	e3c14003 	bic	r4, r1, #3
87802738:	e598300c 	ldr	r3, [r8, #12]
8780273c:	e1540003 	cmp	r4, r3
87802740:	8a000049 	bhi	8780286c <rt_realloc+0x144>
87802744:	e3540000 	cmp	r4, #0
87802748:	1a000002 	bne	87802758 <rt_realloc+0x30>
8780274c:	ebffffd1 	bl	87802698 <rt_free>
87802750:	e1a00004 	mov	r0, r4
87802754:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
87802758:	e3500000 	cmp	r0, #0
8780275c:	e1a07000 	mov	r7, r0
87802760:	1a000002 	bne	87802770 <rt_realloc+0x48>
87802764:	e1a00004 	mov	r0, r4
87802768:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
8780276c:	eaffff5b 	b	878024e0 <rt_malloc>
87802770:	e3e01000 	mvn	r1, #0
87802774:	e2880010 	add	r0, r8, #16
87802778:	e1a05008 	mov	r5, r8
8780277c:	ebfff792 	bl	878005cc <rt_sem_take>
87802780:	e5983000 	ldr	r3, [r8]
87802784:	e1570003 	cmp	r7, r3
87802788:	3a000025 	bcc	87802824 <rt_realloc+0xfc>
8780278c:	e5982004 	ldr	r2, [r8, #4]
87802790:	e1570002 	cmp	r7, r2
87802794:	2a000022 	bcs	87802824 <rt_realloc+0xfc>
87802798:	e517e008 	ldr	lr, [r7, #-8]
8780279c:	e247c00c 	sub	ip, r7, #12
878027a0:	e063c00c 	rsb	ip, r3, ip
878027a4:	e24e600c 	sub	r6, lr, #12
878027a8:	e06c6006 	rsb	r6, ip, r6
878027ac:	e1540006 	cmp	r4, r6
878027b0:	0a00001b 	beq	87802824 <rt_realloc+0xfc>
878027b4:	e2842018 	add	r2, r4, #24
878027b8:	e1560002 	cmp	r6, r2
878027bc:	9a00001c 	bls	87802834 <rt_realloc+0x10c>
878027c0:	e5982030 	ldr	r2, [r8, #48]	; 0x30
878027c4:	e084100c 	add	r1, r4, ip
878027c8:	e0842002 	add	r2, r4, r2
878027cc:	e281100c 	add	r1, r1, #12
878027d0:	e0830001 	add	r0, r3, r1
878027d4:	e0666002 	rsb	r6, r6, r2
878027d8:	e5886030 	str	r6, [r8, #48]	; 0x30
878027dc:	e3012ea0 	movw	r2, #7840	; 0x1ea0
878027e0:	e18320b1 	strh	r2, [r3, r1]
878027e4:	e3a02000 	mov	r2, #0
878027e8:	e1c020b2 	strh	r2, [r0, #2]
878027ec:	e598200c 	ldr	r2, [r8, #12]
878027f0:	e580e004 	str	lr, [r0, #4]
878027f4:	e580c008 	str	ip, [r0, #8]
878027f8:	e282200c 	add	r2, r2, #12
878027fc:	e5071008 	str	r1, [r7, #-8]
87802800:	e590c004 	ldr	ip, [r0, #4]
87802804:	e15c0002 	cmp	ip, r2
87802808:	1083300c 	addne	r3, r3, ip
8780280c:	15831008 	strne	r1, [r3, #8]
87802810:	e5983008 	ldr	r3, [r8, #8]
87802814:	e1500003 	cmp	r0, r3
87802818:	359f305c 	ldrcc	r3, [pc, #92]	; 8780287c <rt_realloc+0x154>
8780281c:	35830008 	strcc	r0, [r3, #8]
87802820:	ebfffee2 	bl	878023b0 <plug_holes>
87802824:	e59f0054 	ldr	r0, [pc, #84]	; 87802880 <rt_realloc+0x158>
87802828:	ebfff794 	bl	87800680 <rt_sem_release>
8780282c:	e1a00007 	mov	r0, r7
87802830:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
87802834:	e2880010 	add	r0, r8, #16
87802838:	ebfff790 	bl	87800680 <rt_sem_release>
8780283c:	e1a00004 	mov	r0, r4
87802840:	ebffff26 	bl	878024e0 <rt_malloc>
87802844:	e2505000 	subs	r5, r0, #0
87802848:	0a000009 	beq	87802874 <rt_realloc+0x14c>
8780284c:	e1540006 	cmp	r4, r6
87802850:	e1a01007 	mov	r1, r7
87802854:	31a02004 	movcc	r2, r4
87802858:	21a02006 	movcs	r2, r6
8780285c:	ebfffcc0 	bl	87801b64 <rt_memcpy>
87802860:	e1a00007 	mov	r0, r7
87802864:	ebffff8b 	bl	87802698 <rt_free>
87802868:	ea000001 	b	87802874 <rt_realloc+0x14c>
8780286c:	e3a00000 	mov	r0, #0
87802870:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
87802874:	e1a00005 	mov	r0, r5
87802878:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
8780287c:	87804704 	.word	0x87804704
87802880:	87804714 	.word	0x87804714

87802884 <rt_memory_info>:
87802884:	e3500000 	cmp	r0, #0
87802888:	159f3028 	ldrne	r3, [pc, #40]	; 878028b8 <rt_memory_info+0x34>
8780288c:	1593300c 	ldrne	r3, [r3, #12]
87802890:	15803000 	strne	r3, [r0]
87802894:	e3510000 	cmp	r1, #0
87802898:	159f3018 	ldrne	r3, [pc, #24]	; 878028b8 <rt_memory_info+0x34>
8780289c:	15933030 	ldrne	r3, [r3, #48]	; 0x30
878028a0:	15813000 	strne	r3, [r1]
878028a4:	e3520000 	cmp	r2, #0
878028a8:	159f3008 	ldrne	r3, [pc, #8]	; 878028b8 <rt_memory_info+0x34>
878028ac:	15933034 	ldrne	r3, [r3, #52]	; 0x34
878028b0:	15823000 	strne	r3, [r2]
878028b4:	e12fff1e 	bx	lr
878028b8:	87804704 	.word	0x87804704

878028bc <rt_system_object_init>:
878028bc:	e12fff1e 	bx	lr

878028c0 <rt_object_get_information>:
878028c0:	e59f2030 	ldr	r2, [pc, #48]	; 878028f8 <rt_object_get_information+0x38>
878028c4:	e3a03000 	mov	r3, #0
878028c8:	e7d2c203 	ldrb	ip, [r2, r3, lsl #4]
878028cc:	e1a01203 	lsl	r1, r3, #4
878028d0:	e15c0000 	cmp	ip, r0
878028d4:	1a000002 	bne	878028e4 <rt_object_get_information+0x24>
878028d8:	e59f3018 	ldr	r3, [pc, #24]	; 878028f8 <rt_object_get_information+0x38>
878028dc:	e0830001 	add	r0, r3, r1
878028e0:	e12fff1e 	bx	lr
878028e4:	e2833001 	add	r3, r3, #1
878028e8:	e3530007 	cmp	r3, #7
878028ec:	1afffff5 	bne	878028c8 <rt_object_get_information+0x8>
878028f0:	e3a00000 	mov	r0, #0
878028f4:	e12fff1e 	bx	lr
878028f8:	87804228 	.word	0x87804228

878028fc <rt_object_get_length>:
878028fc:	e92d4010 	push	{r4, lr}
87802900:	ebffffee 	bl	878028c0 <rt_object_get_information>
87802904:	e2504000 	subs	r4, r0, #0
87802908:	0a000008 	beq	87802930 <rt_object_get_length+0x34>
8780290c:	ebfff637 	bl	878001f0 <rt_hw_interrupt_disable>
87802910:	e1a03004 	mov	r3, r4
87802914:	e3a04000 	mov	r4, #0
87802918:	e5b32004 	ldr	r2, [r3, #4]!
8780291c:	e1520003 	cmp	r2, r3
87802920:	15922000 	ldrne	r2, [r2]
87802924:	12844001 	addne	r4, r4, #1
87802928:	1afffffb 	bne	8780291c <rt_object_get_length+0x20>
8780292c:	ebfff632 	bl	878001fc <rt_hw_interrupt_enable>
87802930:	e1a00004 	mov	r0, r4
87802934:	e8bd8010 	pop	{r4, pc}

87802938 <rt_object_get_pointers>:
87802938:	e3520000 	cmp	r2, #0
8780293c:	da000013 	ble	87802990 <rt_object_get_pointers+0x58>
87802940:	e92d4070 	push	{r4, r5, r6, lr}
87802944:	e1a06002 	mov	r6, r2
87802948:	e1a05001 	mov	r5, r1
8780294c:	ebffffdb 	bl	878028c0 <rt_object_get_information>
87802950:	e2504000 	subs	r4, r0, #0
87802954:	0a00000f 	beq	87802998 <rt_object_get_pointers+0x60>
87802958:	ebfff624 	bl	878001f0 <rt_hw_interrupt_disable>
8780295c:	e1a0c004 	mov	ip, r4
87802960:	e3a04000 	mov	r4, #0
87802964:	e5bc3004 	ldr	r3, [ip, #4]!
87802968:	e153000c 	cmp	r3, ip
8780296c:	0a000005 	beq	87802988 <rt_object_get_pointers+0x50>
87802970:	e243200c 	sub	r2, r3, #12
87802974:	e7852104 	str	r2, [r5, r4, lsl #2]
87802978:	e2844001 	add	r4, r4, #1
8780297c:	e1560004 	cmp	r6, r4
87802980:	15933000 	ldrne	r3, [r3]
87802984:	1afffff7 	bne	87802968 <rt_object_get_pointers+0x30>
87802988:	ebfff61b 	bl	878001fc <rt_hw_interrupt_enable>
8780298c:	ea000001 	b	87802998 <rt_object_get_pointers+0x60>
87802990:	e3a00000 	mov	r0, #0
87802994:	e12fff1e 	bx	lr
87802998:	e1a00004 	mov	r0, r4
8780299c:	e8bd8070 	pop	{r4, r5, r6, pc}

878029a0 <rt_object_init>:
878029a0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
878029a4:	e1a05000 	mov	r5, r0
878029a8:	e1a00001 	mov	r0, r1
878029ac:	e1a04001 	mov	r4, r1
878029b0:	e1a08002 	mov	r8, r2
878029b4:	ebffffc1 	bl	878028c0 <rt_object_get_information>
878029b8:	e1a07000 	mov	r7, r0
878029bc:	eb000122 	bl	87802e4c <rt_enter_critical>
878029c0:	e1a03007 	mov	r3, r7
878029c4:	e5b36004 	ldr	r6, [r3, #4]!
878029c8:	e1560003 	cmp	r6, r3
878029cc:	15966000 	ldrne	r6, [r6]
878029d0:	1afffffc 	bne	878029c8 <rt_object_init+0x28>
878029d4:	eb000125 	bl	87802e70 <rt_exit_critical>
878029d8:	e1e01c84 	mvn	r1, r4, lsl #25
878029dc:	e3a02008 	mov	r2, #8
878029e0:	e1a00005 	mov	r0, r5
878029e4:	e1e01ca1 	mvn	r1, r1, lsr #25
878029e8:	e5c51008 	strb	r1, [r5, #8]
878029ec:	e1a01008 	mov	r1, r8
878029f0:	ebfffcc2 	bl	87801d00 <rt_strncpy>
878029f4:	ebfff5fd 	bl	878001f0 <rt_hw_interrupt_disable>
878029f8:	e5972004 	ldr	r2, [r7, #4]
878029fc:	e285300c 	add	r3, r5, #12
87802a00:	e5823004 	str	r3, [r2, #4]
87802a04:	e585200c 	str	r2, [r5, #12]
87802a08:	e5873004 	str	r3, [r7, #4]
87802a0c:	e5856010 	str	r6, [r5, #16]
87802a10:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
87802a14:	eafff5f8 	b	878001fc <rt_hw_interrupt_enable>

87802a18 <rt_object_detach>:
87802a18:	e92d4010 	push	{r4, lr}
87802a1c:	e3a03000 	mov	r3, #0
87802a20:	e5c03008 	strb	r3, [r0, #8]
87802a24:	e1a04000 	mov	r4, r0
87802a28:	ebfff5f0 	bl	878001f0 <rt_hw_interrupt_disable>
87802a2c:	e5941010 	ldr	r1, [r4, #16]
87802a30:	e284300c 	add	r3, r4, #12
87802a34:	e594200c 	ldr	r2, [r4, #12]
87802a38:	e5821004 	str	r1, [r2, #4]
87802a3c:	e5941010 	ldr	r1, [r4, #16]
87802a40:	e5812000 	str	r2, [r1]
87802a44:	e5843010 	str	r3, [r4, #16]
87802a48:	e584300c 	str	r3, [r4, #12]
87802a4c:	e8bd4010 	pop	{r4, lr}
87802a50:	eafff5e9 	b	878001fc <rt_hw_interrupt_enable>

87802a54 <rt_object_allocate>:
87802a54:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
87802a58:	e1a06001 	mov	r6, r1
87802a5c:	e1a07000 	mov	r7, r0
87802a60:	ebffff96 	bl	878028c0 <rt_object_get_information>
87802a64:	e1a04000 	mov	r4, r0
87802a68:	e590000c 	ldr	r0, [r0, #12]
87802a6c:	ebfffe9b 	bl	878024e0 <rt_malloc>
87802a70:	e2505000 	subs	r5, r0, #0
87802a74:	0a000011 	beq	87802ac0 <rt_object_allocate+0x6c>
87802a78:	e594200c 	ldr	r2, [r4, #12]
87802a7c:	e3a01000 	mov	r1, #0
87802a80:	ebfffc10 	bl	87801ac8 <rt_memset>
87802a84:	e5c57008 	strb	r7, [r5, #8]
87802a88:	e3a03000 	mov	r3, #0
87802a8c:	e5c53009 	strb	r3, [r5, #9]
87802a90:	e3a02008 	mov	r2, #8
87802a94:	e1a01006 	mov	r1, r6
87802a98:	e1a00005 	mov	r0, r5
87802a9c:	ebfffc97 	bl	87801d00 <rt_strncpy>
87802aa0:	ebfff5d2 	bl	878001f0 <rt_hw_interrupt_disable>
87802aa4:	e5942004 	ldr	r2, [r4, #4]
87802aa8:	e285300c 	add	r3, r5, #12
87802aac:	e5823004 	str	r3, [r2, #4]
87802ab0:	e585200c 	str	r2, [r5, #12]
87802ab4:	e5a43004 	str	r3, [r4, #4]!
87802ab8:	e5854010 	str	r4, [r5, #16]
87802abc:	ebfff5ce 	bl	878001fc <rt_hw_interrupt_enable>
87802ac0:	e1a00005 	mov	r0, r5
87802ac4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

87802ac8 <rt_object_delete>:
87802ac8:	e92d4010 	push	{r4, lr}
87802acc:	e3a03000 	mov	r3, #0
87802ad0:	e5c03008 	strb	r3, [r0, #8]
87802ad4:	e1a04000 	mov	r4, r0
87802ad8:	ebfff5c4 	bl	878001f0 <rt_hw_interrupt_disable>
87802adc:	e5941010 	ldr	r1, [r4, #16]
87802ae0:	e284300c 	add	r3, r4, #12
87802ae4:	e594200c 	ldr	r2, [r4, #12]
87802ae8:	e5821004 	str	r1, [r2, #4]
87802aec:	e5941010 	ldr	r1, [r4, #16]
87802af0:	e5812000 	str	r2, [r1]
87802af4:	e5843010 	str	r3, [r4, #16]
87802af8:	e584300c 	str	r3, [r4, #12]
87802afc:	ebfff5be 	bl	878001fc <rt_hw_interrupt_enable>
87802b00:	e1a00004 	mov	r0, r4
87802b04:	e8bd4010 	pop	{r4, lr}
87802b08:	eafffee2 	b	87802698 <rt_free>

87802b0c <rt_object_is_systemobject>:
87802b0c:	e1d000d8 	ldrsb	r0, [r0, #8]
87802b10:	e1a00fa0 	lsr	r0, r0, #31
87802b14:	e12fff1e 	bx	lr

87802b18 <rt_object_get_type>:
87802b18:	e5d00008 	ldrb	r0, [r0, #8]
87802b1c:	e200007f 	and	r0, r0, #127	; 0x7f
87802b20:	e12fff1e 	bx	lr

87802b24 <rt_object_find>:
87802b24:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
87802b28:	e1a07000 	mov	r7, r0
87802b2c:	e1a00001 	mov	r0, r1
87802b30:	ebffff62 	bl	878028c0 <rt_object_get_information>
87802b34:	e3500000 	cmp	r0, #0
87802b38:	13570000 	cmpne	r7, #0
87802b3c:	0a000011 	beq	87802b88 <rt_object_find+0x64>
87802b40:	e1a05000 	mov	r5, r0
87802b44:	eb0000c0 	bl	87802e4c <rt_enter_critical>
87802b48:	e5b56004 	ldr	r6, [r5, #4]!
87802b4c:	e1560005 	cmp	r6, r5
87802b50:	0a00000b 	beq	87802b84 <rt_object_find+0x60>
87802b54:	e246400c 	sub	r4, r6, #12
87802b58:	e3a02008 	mov	r2, #8
87802b5c:	e1a01007 	mov	r1, r7
87802b60:	e1a00004 	mov	r0, r4
87802b64:	ebfffc73 	bl	87801d38 <rt_strncmp>
87802b68:	e3500000 	cmp	r0, #0
87802b6c:	1a000002 	bne	87802b7c <rt_object_find+0x58>
87802b70:	eb0000be 	bl	87802e70 <rt_exit_critical>
87802b74:	e1a00004 	mov	r0, r4
87802b78:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
87802b7c:	e5966000 	ldr	r6, [r6]
87802b80:	eafffff1 	b	87802b4c <rt_object_find+0x28>
87802b84:	eb0000b9 	bl	87802e70 <rt_exit_critical>
87802b88:	e3a00000 	mov	r0, #0
87802b8c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

87802b90 <rt_system_scheduler_init>:
87802b90:	e59f203c 	ldr	r2, [pc, #60]	; 87802bd4 <rt_system_scheduler_init+0x44>
87802b94:	e3a03000 	mov	r3, #0
87802b98:	e59f1038 	ldr	r1, [pc, #56]	; 87802bd8 <rt_system_scheduler_init+0x48>
87802b9c:	e1c230b0 	strh	r3, [r2]
87802ba0:	e0832001 	add	r2, r3, r1
87802ba4:	e5822004 	str	r2, [r2, #4]
87802ba8:	e7832001 	str	r2, [r3, r1]
87802bac:	e2833008 	add	r3, r3, #8
87802bb0:	e3530c01 	cmp	r3, #256	; 0x100
87802bb4:	1afffff9 	bne	87802ba0 <rt_system_scheduler_init+0x10>
87802bb8:	e59f301c 	ldr	r3, [pc, #28]	; 87802bdc <rt_system_scheduler_init+0x4c>
87802bbc:	e3a02000 	mov	r2, #0
87802bc0:	e5832000 	str	r2, [r3]
87802bc4:	e59f3014 	ldr	r3, [pc, #20]	; 87802be0 <rt_system_scheduler_init+0x50>
87802bc8:	e5833004 	str	r3, [r3, #4]
87802bcc:	e5833000 	str	r3, [r3]
87802bd0:	e12fff1e 	bx	lr
87802bd4:	8780473c 	.word	0x8780473c
87802bd8:	8780474c 	.word	0x8780474c
87802bdc:	87804854 	.word	0x87804854
87802be0:	87804858 	.word	0x87804858

87802be4 <rt_schedule_insert_thread>:
87802be4:	e92d4010 	push	{r4, lr}
87802be8:	e1a04000 	mov	r4, r0
87802bec:	ebfff57f 	bl	878001f0 <rt_hw_interrupt_disable>
87802bf0:	e59f3068 	ldr	r3, [pc, #104]	; 87802c60 <rt_schedule_insert_thread+0x7c>
87802bf4:	e5932000 	ldr	r2, [r3]
87802bf8:	e1520004 	cmp	r2, r4
87802bfc:	05d23034 	ldrbeq	r3, [r2, #52]	; 0x34
87802c00:	03c33007 	biceq	r3, r3, #7
87802c04:	03833003 	orreq	r3, r3, #3
87802c08:	05c23034 	strbeq	r3, [r2, #52]	; 0x34
87802c0c:	0a000011 	beq	87802c58 <rt_schedule_insert_thread+0x74>
87802c10:	e5d43034 	ldrb	r3, [r4, #52]	; 0x34
87802c14:	e2842014 	add	r2, r4, #20
87802c18:	e5d41035 	ldrb	r1, [r4, #53]	; 0x35
87802c1c:	e3c33007 	bic	r3, r3, #7
87802c20:	e3833001 	orr	r3, r3, #1
87802c24:	e5c43034 	strb	r3, [r4, #52]	; 0x34
87802c28:	e59f3034 	ldr	r3, [pc, #52]	; 87802c64 <rt_schedule_insert_thread+0x80>
87802c2c:	e0833181 	add	r3, r3, r1, lsl #3
87802c30:	e5931004 	ldr	r1, [r3, #4]
87802c34:	e5812000 	str	r2, [r1]
87802c38:	e5841018 	str	r1, [r4, #24]
87802c3c:	e5832004 	str	r2, [r3, #4]
87802c40:	e59f2020 	ldr	r2, [pc, #32]	; 87802c68 <rt_schedule_insert_thread+0x84>
87802c44:	e5843014 	str	r3, [r4, #20]
87802c48:	e5941038 	ldr	r1, [r4, #56]	; 0x38
87802c4c:	e5923000 	ldr	r3, [r2]
87802c50:	e1813003 	orr	r3, r1, r3
87802c54:	e5823000 	str	r3, [r2]
87802c58:	e8bd4010 	pop	{r4, lr}
87802c5c:	eafff566 	b	878001fc <rt_hw_interrupt_enable>
87802c60:	87804850 	.word	0x87804850
87802c64:	8780474c 	.word	0x8780474c
87802c68:	87804854 	.word	0x87804854

87802c6c <rt_schedule_remove_thread>:
87802c6c:	e92d4010 	push	{r4, lr}
87802c70:	e1a04000 	mov	r4, r0
87802c74:	ebfff55d 	bl	878001f0 <rt_hw_interrupt_disable>
87802c78:	e5942014 	ldr	r2, [r4, #20]
87802c7c:	e2843014 	add	r3, r4, #20
87802c80:	e5941018 	ldr	r1, [r4, #24]
87802c84:	e5821004 	str	r1, [r2, #4]
87802c88:	e5941018 	ldr	r1, [r4, #24]
87802c8c:	e5812000 	str	r2, [r1]
87802c90:	e5843014 	str	r3, [r4, #20]
87802c94:	e5d42035 	ldrb	r2, [r4, #53]	; 0x35
87802c98:	e5843018 	str	r3, [r4, #24]
87802c9c:	e59f3024 	ldr	r3, [pc, #36]	; 87802cc8 <rt_schedule_remove_thread+0x5c>
87802ca0:	e0831182 	add	r1, r3, r2, lsl #3
87802ca4:	e7933182 	ldr	r3, [r3, r2, lsl #3]
87802ca8:	e1530001 	cmp	r3, r1
87802cac:	059f2018 	ldreq	r2, [pc, #24]	; 87802ccc <rt_schedule_remove_thread+0x60>
87802cb0:	05941038 	ldreq	r1, [r4, #56]	; 0x38
87802cb4:	05923000 	ldreq	r3, [r2]
87802cb8:	e8bd4010 	pop	{r4, lr}
87802cbc:	01c33001 	biceq	r3, r3, r1
87802cc0:	05823000 	streq	r3, [r2]
87802cc4:	eafff54c 	b	878001fc <rt_hw_interrupt_enable>
87802cc8:	8780474c 	.word	0x8780474c
87802ccc:	87804854 	.word	0x87804854

87802cd0 <rt_system_scheduler_start>:
87802cd0:	e59f3038 	ldr	r3, [pc, #56]	; 87802d10 <rt_system_scheduler_start+0x40>
87802cd4:	e92d4010 	push	{r4, lr}
87802cd8:	e5930000 	ldr	r0, [r3]
87802cdc:	ebfffd99 	bl	87802348 <__rt_ffs>
87802ce0:	e59f302c 	ldr	r3, [pc, #44]	; 87802d14 <rt_system_scheduler_start+0x44>
87802ce4:	e2400001 	sub	r0, r0, #1
87802ce8:	e7934180 	ldr	r4, [r3, r0, lsl #3]
87802cec:	e59f3024 	ldr	r3, [pc, #36]	; 87802d18 <rt_system_scheduler_start+0x48>
87802cf0:	e2440014 	sub	r0, r4, #20
87802cf4:	e5830000 	str	r0, [r3]
87802cf8:	ebffffdb 	bl	87802c6c <rt_schedule_remove_thread>
87802cfc:	e3a03003 	mov	r3, #3
87802d00:	e2840008 	add	r0, r4, #8
87802d04:	e5c43020 	strb	r3, [r4, #32]
87802d08:	e8bd4010 	pop	{r4, lr}
87802d0c:	eafff53c 	b	87800204 <rt_hw_context_switch_to>
87802d10:	87804854 	.word	0x87804854
87802d14:	8780474c 	.word	0x8780474c
87802d18:	87804850 	.word	0x87804850

87802d1c <rt_schedule>:
87802d1c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
87802d20:	ebfff532 	bl	878001f0 <rt_hw_interrupt_disable>
87802d24:	e59f3108 	ldr	r3, [pc, #264]	; 87802e34 <rt_schedule+0x118>
87802d28:	e1a07000 	mov	r7, r0
87802d2c:	e1d330f0 	ldrsh	r3, [r3]
87802d30:	e3530000 	cmp	r3, #0
87802d34:	1a000020 	bne	87802dbc <rt_schedule+0xa0>
87802d38:	e59f30f8 	ldr	r3, [pc, #248]	; 87802e38 <rt_schedule+0x11c>
87802d3c:	e5930000 	ldr	r0, [r3]
87802d40:	e3500000 	cmp	r0, #0
87802d44:	0a00001c 	beq	87802dbc <rt_schedule+0xa0>
87802d48:	ebfffd7e 	bl	87802348 <__rt_ffs>
87802d4c:	e59f20e8 	ldr	r2, [pc, #232]	; 87802e3c <rt_schedule+0x120>
87802d50:	e2400001 	sub	r0, r0, #1
87802d54:	e59f30e4 	ldr	r3, [pc, #228]	; 87802e40 <rt_schedule+0x124>
87802d58:	e5924000 	ldr	r4, [r2]
87802d5c:	e1a08002 	mov	r8, r2
87802d60:	e7935180 	ldr	r5, [r3, r0, lsl #3]
87802d64:	e5d43034 	ldrb	r3, [r4, #52]	; 0x34
87802d68:	e2456014 	sub	r6, r5, #20
87802d6c:	e2031007 	and	r1, r3, #7
87802d70:	e3510003 	cmp	r1, #3
87802d74:	1a000028 	bne	87802e1c <rt_schedule+0x100>
87802d78:	e5d42035 	ldrb	r2, [r4, #53]	; 0x35
87802d7c:	e1520000 	cmp	r2, r0
87802d80:	3a000006 	bcc	87802da0 <rt_schedule+0x84>
87802d84:	1a000001 	bne	87802d90 <rt_schedule+0x74>
87802d88:	e3130008 	tst	r3, #8
87802d8c:	0a000003 	beq	87802da0 <rt_schedule+0x84>
87802d90:	e1540006 	cmp	r4, r6
87802d94:	e3c33008 	bic	r3, r3, #8
87802d98:	e5c43034 	strb	r3, [r4, #52]	; 0x34
87802d9c:	1a000009 	bne	87802dc8 <rt_schedule+0xac>
87802da0:	e1a00004 	mov	r0, r4
87802da4:	ebffffb0 	bl	87802c6c <rt_schedule_remove_thread>
87802da8:	e5982000 	ldr	r2, [r8]
87802dac:	e5d23034 	ldrb	r3, [r2, #52]	; 0x34
87802db0:	e3c33007 	bic	r3, r3, #7
87802db4:	e3833003 	orr	r3, r3, #3
87802db8:	e5c23034 	strb	r3, [r2, #52]	; 0x34
87802dbc:	e1a00007 	mov	r0, r7
87802dc0:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
87802dc4:	eafff50c 	b	878001fc <rt_hw_interrupt_enable>
87802dc8:	e59f3074 	ldr	r3, [pc, #116]	; 87802e44 <rt_schedule+0x128>
87802dcc:	e5886000 	str	r6, [r8]
87802dd0:	e5c30000 	strb	r0, [r3]
87802dd4:	e1a00004 	mov	r0, r4
87802dd8:	ebffff81 	bl	87802be4 <rt_schedule_insert_thread>
87802ddc:	e1a00006 	mov	r0, r6
87802de0:	ebffffa1 	bl	87802c6c <rt_schedule_remove_thread>
87802de4:	e5d53020 	ldrb	r3, [r5, #32]
87802de8:	e2851008 	add	r1, r5, #8
87802dec:	e284001c 	add	r0, r4, #28
87802df0:	e3c33007 	bic	r3, r3, #7
87802df4:	e3833003 	orr	r3, r3, #3
87802df8:	e5c53020 	strb	r3, [r5, #32]
87802dfc:	e59f3044 	ldr	r3, [pc, #68]	; 87802e48 <rt_schedule+0x12c>
87802e00:	e5d33000 	ldrb	r3, [r3]
87802e04:	e3530000 	cmp	r3, #0
87802e08:	1a000001 	bne	87802e14 <rt_schedule+0xf8>
87802e0c:	eb000458 	bl	87803f74 <rt_hw_context_switch>
87802e10:	eaffffe9 	b	87802dbc <rt_schedule+0xa0>
87802e14:	eb00045f 	bl	87803f98 <rt_hw_context_switch_interrupt>
87802e18:	eaffffe7 	b	87802dbc <rt_schedule+0xa0>
87802e1c:	e1540006 	cmp	r4, r6
87802e20:	0affffde 	beq	87802da0 <rt_schedule+0x84>
87802e24:	e59f3018 	ldr	r3, [pc, #24]	; 87802e44 <rt_schedule+0x128>
87802e28:	e5826000 	str	r6, [r2]
87802e2c:	e5c30000 	strb	r0, [r3]
87802e30:	eaffffe9 	b	87802ddc <rt_schedule+0xc0>
87802e34:	8780473c 	.word	0x8780473c
87802e38:	87804854 	.word	0x87804854
87802e3c:	87804850 	.word	0x87804850
87802e40:	8780474c 	.word	0x8780474c
87802e44:	8780484c 	.word	0x8780484c
87802e48:	878046fc 	.word	0x878046fc

87802e4c <rt_enter_critical>:
87802e4c:	e92d4010 	push	{r4, lr}
87802e50:	ebfff4e6 	bl	878001f0 <rt_hw_interrupt_disable>
87802e54:	e59f2010 	ldr	r2, [pc, #16]	; 87802e6c <rt_enter_critical+0x20>
87802e58:	e8bd4010 	pop	{r4, lr}
87802e5c:	e1d230b0 	ldrh	r3, [r2]
87802e60:	e2833001 	add	r3, r3, #1
87802e64:	e1c230b0 	strh	r3, [r2]
87802e68:	eafff4e3 	b	878001fc <rt_hw_interrupt_enable>
87802e6c:	8780473c 	.word	0x8780473c

87802e70 <rt_exit_critical>:
87802e70:	e92d4010 	push	{r4, lr}
87802e74:	ebfff4dd 	bl	878001f0 <rt_hw_interrupt_disable>
87802e78:	e59f2040 	ldr	r2, [pc, #64]	; 87802ec0 <rt_exit_critical+0x50>
87802e7c:	e1d230b0 	ldrh	r3, [r2]
87802e80:	e2433001 	sub	r3, r3, #1
87802e84:	e6bf3073 	sxth	r3, r3
87802e88:	e1c230b0 	strh	r3, [r2]
87802e8c:	e3530000 	cmp	r3, #0
87802e90:	ca000008 	bgt	87802eb8 <rt_exit_critical+0x48>
87802e94:	e3a03000 	mov	r3, #0
87802e98:	e1c230b0 	strh	r3, [r2]
87802e9c:	ebfff4d6 	bl	878001fc <rt_hw_interrupt_enable>
87802ea0:	e59f301c 	ldr	r3, [pc, #28]	; 87802ec4 <rt_exit_critical+0x54>
87802ea4:	e5933000 	ldr	r3, [r3]
87802ea8:	e3530000 	cmp	r3, #0
87802eac:	08bd8010 	popeq	{r4, pc}
87802eb0:	e8bd4010 	pop	{r4, lr}
87802eb4:	eaffff98 	b	87802d1c <rt_schedule>
87802eb8:	e8bd4010 	pop	{r4, lr}
87802ebc:	eafff4ce 	b	878001fc <rt_hw_interrupt_enable>
87802ec0:	8780473c 	.word	0x8780473c
87802ec4:	87804850 	.word	0x87804850

87802ec8 <rt_critical_level>:
87802ec8:	e59f3004 	ldr	r3, [pc, #4]	; 87802ed4 <rt_critical_level+0xc>
87802ecc:	e1d300b0 	ldrh	r0, [r3]
87802ed0:	e12fff1e 	bx	lr
87802ed4:	8780473c 	.word	0x8780473c

87802ed8 <rt_thread_exit>:
87802ed8:	e59f3078 	ldr	r3, [pc, #120]	; 87802f58 <rt_thread_exit+0x80>
87802edc:	e92d4070 	push	{r4, r5, r6, lr}
87802ee0:	e5934000 	ldr	r4, [r3]
87802ee4:	ebfff4c1 	bl	878001f0 <rt_hw_interrupt_disable>
87802ee8:	e1a05000 	mov	r5, r0
87802eec:	e1a00004 	mov	r0, r4
87802ef0:	ebffff5d 	bl	87802c6c <rt_schedule_remove_thread>
87802ef4:	e3a03004 	mov	r3, #4
87802ef8:	e284004c 	add	r0, r4, #76	; 0x4c
87802efc:	e5c43034 	strb	r3, [r4, #52]	; 0x34
87802f00:	eb0001cd 	bl	8780363c <rt_timer_detach>
87802f04:	e1a00004 	mov	r0, r4
87802f08:	ebfffeff 	bl	87802b0c <rt_object_is_systemobject>
87802f0c:	e3500001 	cmp	r0, #1
87802f10:	1a000005 	bne	87802f2c <rt_thread_exit+0x54>
87802f14:	e5943078 	ldr	r3, [r4, #120]	; 0x78
87802f18:	e3530000 	cmp	r3, #0
87802f1c:	1a000002 	bne	87802f2c <rt_thread_exit+0x54>
87802f20:	e1a00004 	mov	r0, r4
87802f24:	ebfffebb 	bl	87802a18 <rt_object_detach>
87802f28:	ea000006 	b	87802f48 <rt_thread_exit+0x70>
87802f2c:	e59f3028 	ldr	r3, [pc, #40]	; 87802f5c <rt_thread_exit+0x84>
87802f30:	e2842014 	add	r2, r4, #20
87802f34:	e5931000 	ldr	r1, [r3]
87802f38:	e5832000 	str	r2, [r3]
87802f3c:	e5812004 	str	r2, [r1, #4]
87802f40:	e5841014 	str	r1, [r4, #20]
87802f44:	e5843018 	str	r3, [r4, #24]
87802f48:	ebffff73 	bl	87802d1c <rt_schedule>
87802f4c:	e1a00005 	mov	r0, r5
87802f50:	e8bd4070 	pop	{r4, r5, r6, lr}
87802f54:	eafff4a8 	b	878001fc <rt_hw_interrupt_enable>
87802f58:	87804850 	.word	0x87804850
87802f5c:	87804858 	.word	0x87804858

87802f60 <rt_thread_timeout>:
87802f60:	e590c018 	ldr	ip, [r0, #24]
87802f64:	e3e02001 	mvn	r2, #1
87802f68:	e5901014 	ldr	r1, [r0, #20]
87802f6c:	e92d4010 	push	{r4, lr}
87802f70:	e5802030 	str	r2, [r0, #48]	; 0x30
87802f74:	e2802014 	add	r2, r0, #20
87802f78:	e581c004 	str	ip, [r1, #4]
87802f7c:	e590c018 	ldr	ip, [r0, #24]
87802f80:	e58c1000 	str	r1, [ip]
87802f84:	e5802018 	str	r2, [r0, #24]
87802f88:	e5802014 	str	r2, [r0, #20]
87802f8c:	ebffff14 	bl	87802be4 <rt_schedule_insert_thread>
87802f90:	e8bd4010 	pop	{r4, lr}
87802f94:	eaffff60 	b	87802d1c <rt_schedule>

87802f98 <rt_thread_init>:
87802f98:	e92d47f3 	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}
87802f9c:	e1a04000 	mov	r4, r0
87802fa0:	e59d7028 	ldr	r7, [sp, #40]	; 0x28
87802fa4:	e1a0a002 	mov	sl, r2
87802fa8:	e59d802c 	ldr	r8, [sp, #44]	; 0x2c
87802fac:	e1a02001 	mov	r2, r1
87802fb0:	e5dd5030 	ldrb	r5, [sp, #48]	; 0x30
87802fb4:	e3a01001 	mov	r1, #1
87802fb8:	e59d6034 	ldr	r6, [sp, #52]	; 0x34
87802fbc:	e1a09003 	mov	r9, r3
87802fc0:	ebfffe76 	bl	878029a0 <rt_object_init>
87802fc4:	e584a020 	str	sl, [r4, #32]
87802fc8:	e2842014 	add	r2, r4, #20
87802fcc:	e5842018 	str	r2, [r4, #24]
87802fd0:	e3a01023 	mov	r1, #35	; 0x23
87802fd4:	e5842014 	str	r2, [r4, #20]
87802fd8:	e1a00007 	mov	r0, r7
87802fdc:	e5849024 	str	r9, [r4, #36]	; 0x24
87802fe0:	e1a02008 	mov	r2, r8
87802fe4:	e5847028 	str	r7, [r4, #40]	; 0x28
87802fe8:	e584802c 	str	r8, [r4, #44]	; 0x2c
87802fec:	ebfffab5 	bl	87801ac8 <rt_memset>
87802ff0:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
87802ff4:	e5941028 	ldr	r1, [r4, #40]	; 0x28
87802ff8:	e59f3064 	ldr	r3, [pc, #100]	; 87803064 <rt_thread_init+0xcc>
87802ffc:	e2422004 	sub	r2, r2, #4
87803000:	e0812002 	add	r2, r1, r2
87803004:	e5940020 	ldr	r0, [r4, #32]
87803008:	e5941024 	ldr	r1, [r4, #36]	; 0x24
8780300c:	ebfff45e 	bl	8780018c <rt_hw_stack_init>
87803010:	e5c45036 	strb	r5, [r4, #54]	; 0x36
87803014:	e1a03004 	mov	r3, r4
87803018:	e5c45035 	strb	r5, [r4, #53]	; 0x35
8780301c:	e3a05000 	mov	r5, #0
87803020:	e584001c 	str	r0, [r4, #28]
87803024:	e1a01004 	mov	r1, r4
87803028:	e5845038 	str	r5, [r4, #56]	; 0x38
8780302c:	e284004c 	add	r0, r4, #76	; 0x4c
87803030:	e5846044 	str	r6, [r4, #68]	; 0x44
87803034:	e5846048 	str	r6, [r4, #72]	; 0x48
87803038:	e5845030 	str	r5, [r4, #48]	; 0x30
8780303c:	e5c45034 	strb	r5, [r4, #52]	; 0x34
87803040:	e5845078 	str	r5, [r4, #120]	; 0x78
87803044:	e584507c 	str	r5, [r4, #124]	; 0x7c
87803048:	e58d5004 	str	r5, [sp, #4]
8780304c:	e58d5000 	str	r5, [sp]
87803050:	e59f2010 	ldr	r2, [pc, #16]	; 87803068 <rt_thread_init+0xd0>
87803054:	eb000164 	bl	878035ec <rt_timer_init>
87803058:	e1a00005 	mov	r0, r5
8780305c:	e28dd008 	add	sp, sp, #8
87803060:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
87803064:	87802ed8 	.word	0x87802ed8
87803068:	87802f60 	.word	0x87802f60

8780306c <rt_thread_self>:
8780306c:	e59f3004 	ldr	r3, [pc, #4]	; 87803078 <rt_thread_self+0xc>
87803070:	e5930000 	ldr	r0, [r3]
87803074:	e12fff1e 	bx	lr
87803078:	87804850 	.word	0x87804850

8780307c <rt_thread_detach>:
8780307c:	e5d03034 	ldrb	r3, [r0, #52]	; 0x34
87803080:	e2033007 	and	r3, r3, #7
87803084:	e3530004 	cmp	r3, #4
87803088:	0a00001d 	beq	87803104 <rt_thread_detach+0x88>
8780308c:	e3530000 	cmp	r3, #0
87803090:	e92d4010 	push	{r4, lr}
87803094:	e1a04000 	mov	r4, r0
87803098:	0a000000 	beq	878030a0 <rt_thread_detach+0x24>
8780309c:	ebfffef2 	bl	87802c6c <rt_schedule_remove_thread>
878030a0:	e284004c 	add	r0, r4, #76	; 0x4c
878030a4:	eb000164 	bl	8780363c <rt_timer_detach>
878030a8:	e3a03004 	mov	r3, #4
878030ac:	e1a00004 	mov	r0, r4
878030b0:	e5c43034 	strb	r3, [r4, #52]	; 0x34
878030b4:	ebfffe94 	bl	87802b0c <rt_object_is_systemobject>
878030b8:	e3500001 	cmp	r0, #1
878030bc:	1a000005 	bne	878030d8 <rt_thread_detach+0x5c>
878030c0:	e5943078 	ldr	r3, [r4, #120]	; 0x78
878030c4:	e3530000 	cmp	r3, #0
878030c8:	1a000002 	bne	878030d8 <rt_thread_detach+0x5c>
878030cc:	e1a00004 	mov	r0, r4
878030d0:	ebfffe50 	bl	87802a18 <rt_object_detach>
878030d4:	ea000008 	b	878030fc <rt_thread_detach+0x80>
878030d8:	ebfff444 	bl	878001f0 <rt_hw_interrupt_disable>
878030dc:	e59f3028 	ldr	r3, [pc, #40]	; 8780310c <rt_thread_detach+0x90>
878030e0:	e2842014 	add	r2, r4, #20
878030e4:	e5931000 	ldr	r1, [r3]
878030e8:	e5832000 	str	r2, [r3]
878030ec:	e5812004 	str	r2, [r1, #4]
878030f0:	e5841014 	str	r1, [r4, #20]
878030f4:	e5843018 	str	r3, [r4, #24]
878030f8:	ebfff43f 	bl	878001fc <rt_hw_interrupt_enable>
878030fc:	e3a00000 	mov	r0, #0
87803100:	e8bd8010 	pop	{r4, pc}
87803104:	e3a00000 	mov	r0, #0
87803108:	e12fff1e 	bx	lr
8780310c:	87804858 	.word	0x87804858

87803110 <rt_thread_create>:
87803110:	e92d47f3 	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}
87803114:	e1a0a001 	mov	sl, r1
87803118:	e5dd7028 	ldrb	r7, [sp, #40]	; 0x28
8780311c:	e1a01000 	mov	r1, r0
87803120:	e59d602c 	ldr	r6, [sp, #44]	; 0x2c
87803124:	e3a00001 	mov	r0, #1
87803128:	e1a09002 	mov	r9, r2
8780312c:	e1a05003 	mov	r5, r3
87803130:	ebfffe47 	bl	87802a54 <rt_object_allocate>
87803134:	e2504000 	subs	r4, r0, #0
87803138:	0a00002b 	beq	878031ec <rt_thread_create+0xdc>
8780313c:	e1a00005 	mov	r0, r5
87803140:	ebfffce6 	bl	878024e0 <rt_malloc>
87803144:	e2508000 	subs	r8, r0, #0
87803148:	1a000003 	bne	8780315c <rt_thread_create+0x4c>
8780314c:	e1a00004 	mov	r0, r4
87803150:	ebfffe5c 	bl	87802ac8 <rt_object_delete>
87803154:	e1a00008 	mov	r0, r8
87803158:	ea000024 	b	878031f0 <rt_thread_create+0xe0>
8780315c:	e584a020 	str	sl, [r4, #32]
87803160:	e2843014 	add	r3, r4, #20
87803164:	e5843018 	str	r3, [r4, #24]
87803168:	e1a02005 	mov	r2, r5
8780316c:	e5843014 	str	r3, [r4, #20]
87803170:	e3a01023 	mov	r1, #35	; 0x23
87803174:	e5849024 	str	r9, [r4, #36]	; 0x24
87803178:	e5848028 	str	r8, [r4, #40]	; 0x28
8780317c:	e584502c 	str	r5, [r4, #44]	; 0x2c
87803180:	ebfffa50 	bl	87801ac8 <rt_memset>
87803184:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
87803188:	e5941028 	ldr	r1, [r4, #40]	; 0x28
8780318c:	e59f3064 	ldr	r3, [pc, #100]	; 878031f8 <rt_thread_create+0xe8>
87803190:	e2422004 	sub	r2, r2, #4
87803194:	e0812002 	add	r2, r1, r2
87803198:	e5940020 	ldr	r0, [r4, #32]
8780319c:	e5941024 	ldr	r1, [r4, #36]	; 0x24
878031a0:	ebfff3f9 	bl	8780018c <rt_hw_stack_init>
878031a4:	e584001c 	str	r0, [r4, #28]
878031a8:	e3a03000 	mov	r3, #0
878031ac:	e5843038 	str	r3, [r4, #56]	; 0x38
878031b0:	e1a01004 	mov	r1, r4
878031b4:	e5843030 	str	r3, [r4, #48]	; 0x30
878031b8:	e284004c 	add	r0, r4, #76	; 0x4c
878031bc:	e5c43034 	strb	r3, [r4, #52]	; 0x34
878031c0:	e5843078 	str	r3, [r4, #120]	; 0x78
878031c4:	e584307c 	str	r3, [r4, #124]	; 0x7c
878031c8:	e5c47036 	strb	r7, [r4, #54]	; 0x36
878031cc:	e5c47035 	strb	r7, [r4, #53]	; 0x35
878031d0:	e5846044 	str	r6, [r4, #68]	; 0x44
878031d4:	e5846048 	str	r6, [r4, #72]	; 0x48
878031d8:	e59f201c 	ldr	r2, [pc, #28]	; 878031fc <rt_thread_create+0xec>
878031dc:	e58d3004 	str	r3, [sp, #4]
878031e0:	e58d3000 	str	r3, [sp]
878031e4:	e1a03004 	mov	r3, r4
878031e8:	eb0000ff 	bl	878035ec <rt_timer_init>
878031ec:	e1a00004 	mov	r0, r4
878031f0:	e28dd008 	add	sp, sp, #8
878031f4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
878031f8:	87802ed8 	.word	0x87802ed8
878031fc:	87802f60 	.word	0x87802f60

87803200 <rt_thread_delete>:
87803200:	e5d03034 	ldrb	r3, [r0, #52]	; 0x34
87803204:	e2033007 	and	r3, r3, #7
87803208:	e3530004 	cmp	r3, #4
8780320c:	0a000013 	beq	87803260 <rt_thread_delete+0x60>
87803210:	e3530000 	cmp	r3, #0
87803214:	e92d4010 	push	{r4, lr}
87803218:	e1a04000 	mov	r4, r0
8780321c:	0a000000 	beq	87803224 <rt_thread_delete+0x24>
87803220:	ebfffe91 	bl	87802c6c <rt_schedule_remove_thread>
87803224:	e284004c 	add	r0, r4, #76	; 0x4c
87803228:	eb000103 	bl	8780363c <rt_timer_detach>
8780322c:	ebfff3ef 	bl	878001f0 <rt_hw_interrupt_disable>
87803230:	e3a03004 	mov	r3, #4
87803234:	e2842014 	add	r2, r4, #20
87803238:	e5c43034 	strb	r3, [r4, #52]	; 0x34
8780323c:	e59f3024 	ldr	r3, [pc, #36]	; 87803268 <rt_thread_delete+0x68>
87803240:	e5931000 	ldr	r1, [r3]
87803244:	e5832000 	str	r2, [r3]
87803248:	e5812004 	str	r2, [r1, #4]
8780324c:	e5841014 	str	r1, [r4, #20]
87803250:	e5843018 	str	r3, [r4, #24]
87803254:	ebfff3e8 	bl	878001fc <rt_hw_interrupt_enable>
87803258:	e3a00000 	mov	r0, #0
8780325c:	e8bd8010 	pop	{r4, pc}
87803260:	e3a00000 	mov	r0, #0
87803264:	e12fff1e 	bx	lr
87803268:	87804858 	.word	0x87804858

8780326c <rt_thread_yield>:
8780326c:	e92d4010 	push	{r4, lr}
87803270:	ebfffea9 	bl	87802d1c <rt_schedule>
87803274:	e3a00000 	mov	r0, #0
87803278:	e8bd8010 	pop	{r4, pc}

8780327c <rt_thread_suspend>:
8780327c:	e5d03034 	ldrb	r3, [r0, #52]	; 0x34
87803280:	e2033005 	and	r3, r3, #5
87803284:	e3530001 	cmp	r3, #1
87803288:	1a00000f 	bne	878032cc <rt_thread_suspend+0x50>
8780328c:	e92d4070 	push	{r4, r5, r6, lr}
87803290:	e1a04000 	mov	r4, r0
87803294:	ebfff3d5 	bl	878001f0 <rt_hw_interrupt_disable>
87803298:	e1a05000 	mov	r5, r0
8780329c:	e1a00004 	mov	r0, r4
878032a0:	ebfffe71 	bl	87802c6c <rt_schedule_remove_thread>
878032a4:	e5d43034 	ldrb	r3, [r4, #52]	; 0x34
878032a8:	e284004c 	add	r0, r4, #76	; 0x4c
878032ac:	e3c33007 	bic	r3, r3, #7
878032b0:	e3833002 	orr	r3, r3, #2
878032b4:	e5c43034 	strb	r3, [r4, #52]	; 0x34
878032b8:	eb00013a 	bl	878037a8 <rt_timer_stop>
878032bc:	e1a00005 	mov	r0, r5
878032c0:	ebfff3cd 	bl	878001fc <rt_hw_interrupt_enable>
878032c4:	e3a00000 	mov	r0, #0
878032c8:	e8bd8070 	pop	{r4, r5, r6, pc}
878032cc:	e3e00000 	mvn	r0, #0
878032d0:	e12fff1e 	bx	lr

878032d4 <rt_thread_sleep>:
878032d4:	e59f3060 	ldr	r3, [pc, #96]	; 8780333c <rt_thread_sleep+0x68>
878032d8:	e92d40f7 	push	{r0, r1, r2, r4, r5, r6, r7, lr}
878032dc:	e28d5008 	add	r5, sp, #8
878032e0:	e5934000 	ldr	r4, [r3]
878032e4:	e5250004 	str	r0, [r5, #-4]!
878032e8:	ebfff3c0 	bl	878001f0 <rt_hw_interrupt_disable>
878032ec:	e1a07000 	mov	r7, r0
878032f0:	e284604c 	add	r6, r4, #76	; 0x4c
878032f4:	e1a00004 	mov	r0, r4
878032f8:	ebffffdf 	bl	8780327c <rt_thread_suspend>
878032fc:	e1a02005 	mov	r2, r5
87803300:	e3a01000 	mov	r1, #0
87803304:	e1a00006 	mov	r0, r6
87803308:	eb000138 	bl	878037f0 <rt_timer_control>
8780330c:	e1a00006 	mov	r0, r6
87803310:	eb0000f6 	bl	878036f0 <rt_timer_start>
87803314:	e1a00007 	mov	r0, r7
87803318:	ebfff3b7 	bl	878001fc <rt_hw_interrupt_enable>
8780331c:	ebfffe7e 	bl	87802d1c <rt_schedule>
87803320:	e5943030 	ldr	r3, [r4, #48]	; 0x30
87803324:	e3a00000 	mov	r0, #0
87803328:	e3730002 	cmn	r3, #2
8780332c:	03a03000 	moveq	r3, #0
87803330:	05843030 	streq	r3, [r4, #48]	; 0x30
87803334:	e28dd00c 	add	sp, sp, #12
87803338:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
8780333c:	87804850 	.word	0x87804850

87803340 <rt_thread_delay>:
87803340:	eaffffe3 	b	878032d4 <rt_thread_sleep>

87803344 <rt_thread_mdelay>:
87803344:	e92d4010 	push	{r4, lr}
87803348:	ebfff429 	bl	878003f4 <rt_tick_from_millisecond>
8780334c:	e8bd4010 	pop	{r4, lr}
87803350:	eaffffdf 	b	878032d4 <rt_thread_sleep>

87803354 <rt_thread_delay_until>:
87803354:	e59f3098 	ldr	r3, [pc, #152]	; 878033f4 <rt_thread_delay_until+0xa0>
87803358:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
8780335c:	e1a05000 	mov	r5, r0
87803360:	e5936000 	ldr	r6, [r3]
87803364:	e1a04001 	mov	r4, r1
87803368:	ebfff3a0 	bl	878001f0 <rt_hw_interrupt_disable>
8780336c:	e1a07000 	mov	r7, r0
87803370:	ebfff3ff 	bl	87800374 <rt_tick_get>
87803374:	e5953000 	ldr	r3, [r5]
87803378:	e0630000 	rsb	r0, r3, r0
8780337c:	e1500004 	cmp	r0, r4
87803380:	2a000015 	bcs	878033dc <rt_thread_delay_until+0x88>
87803384:	ebfff3fa 	bl	87800374 <rt_tick_get>
87803388:	e5953000 	ldr	r3, [r5]
8780338c:	e0634004 	rsb	r4, r3, r4
87803390:	e0840000 	add	r0, r4, r0
87803394:	e286404c 	add	r4, r6, #76	; 0x4c
87803398:	e5850000 	str	r0, [r5]
8780339c:	e1a00006 	mov	r0, r6
878033a0:	ebffffb5 	bl	8780327c <rt_thread_suspend>
878033a4:	e1a02005 	mov	r2, r5
878033a8:	e3a01000 	mov	r1, #0
878033ac:	e1a00004 	mov	r0, r4
878033b0:	eb00010e 	bl	878037f0 <rt_timer_control>
878033b4:	e1a00004 	mov	r0, r4
878033b8:	eb0000cc 	bl	878036f0 <rt_timer_start>
878033bc:	e1a00007 	mov	r0, r7
878033c0:	ebfff38d 	bl	878001fc <rt_hw_interrupt_enable>
878033c4:	ebfffe54 	bl	87802d1c <rt_schedule>
878033c8:	e5963030 	ldr	r3, [r6, #48]	; 0x30
878033cc:	e3730002 	cmn	r3, #2
878033d0:	03a03000 	moveq	r3, #0
878033d4:	05863030 	streq	r3, [r6, #48]	; 0x30
878033d8:	ea000001 	b	878033e4 <rt_thread_delay_until+0x90>
878033dc:	e1a00007 	mov	r0, r7
878033e0:	ebfff385 	bl	878001fc <rt_hw_interrupt_enable>
878033e4:	ebfff3e2 	bl	87800374 <rt_tick_get>
878033e8:	e5850000 	str	r0, [r5]
878033ec:	e3a00000 	mov	r0, #0
878033f0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
878033f4:	87804850 	.word	0x87804850

878033f8 <rt_thread_resume>:
878033f8:	e5d03034 	ldrb	r3, [r0, #52]	; 0x34
878033fc:	e2033007 	and	r3, r3, #7
87803400:	e3530002 	cmp	r3, #2
87803404:	1a000013 	bne	87803458 <rt_thread_resume+0x60>
87803408:	e92d4070 	push	{r4, r5, r6, lr}
8780340c:	e1a04000 	mov	r4, r0
87803410:	ebfff376 	bl	878001f0 <rt_hw_interrupt_disable>
87803414:	e5942014 	ldr	r2, [r4, #20]
87803418:	e2843014 	add	r3, r4, #20
8780341c:	e5941018 	ldr	r1, [r4, #24]
87803420:	e1a05000 	mov	r5, r0
87803424:	e284004c 	add	r0, r4, #76	; 0x4c
87803428:	e5821004 	str	r1, [r2, #4]
8780342c:	e5941018 	ldr	r1, [r4, #24]
87803430:	e5812000 	str	r2, [r1]
87803434:	e5843018 	str	r3, [r4, #24]
87803438:	e5843014 	str	r3, [r4, #20]
8780343c:	eb0000d9 	bl	878037a8 <rt_timer_stop>
87803440:	e1a00005 	mov	r0, r5
87803444:	ebfff36c 	bl	878001fc <rt_hw_interrupt_enable>
87803448:	e1a00004 	mov	r0, r4
8780344c:	ebfffde4 	bl	87802be4 <rt_schedule_insert_thread>
87803450:	e3a00000 	mov	r0, #0
87803454:	e8bd8070 	pop	{r4, r5, r6, pc}
87803458:	e3e00000 	mvn	r0, #0
8780345c:	e12fff1e 	bx	lr

87803460 <rt_thread_startup>:
87803460:	e92d4010 	push	{r4, lr}
87803464:	e3a02001 	mov	r2, #1
87803468:	e5d01036 	ldrb	r1, [r0, #54]	; 0x36
8780346c:	e1a02112 	lsl	r2, r2, r1
87803470:	e5802038 	str	r2, [r0, #56]	; 0x38
87803474:	e3a02002 	mov	r2, #2
87803478:	e5c01035 	strb	r1, [r0, #53]	; 0x35
8780347c:	e5c02034 	strb	r2, [r0, #52]	; 0x34
87803480:	ebffffdc 	bl	878033f8 <rt_thread_resume>
87803484:	e59f3014 	ldr	r3, [pc, #20]	; 878034a0 <rt_thread_startup+0x40>
87803488:	e5933000 	ldr	r3, [r3]
8780348c:	e3530000 	cmp	r3, #0
87803490:	0a000000 	beq	87803498 <rt_thread_startup+0x38>
87803494:	ebfffe20 	bl	87802d1c <rt_schedule>
87803498:	e3a00000 	mov	r0, #0
8780349c:	e8bd8010 	pop	{r4, pc}
878034a0:	87804850 	.word	0x87804850

878034a4 <rt_thread_control>:
878034a4:	e3510001 	cmp	r1, #1
878034a8:	0a00001f 	beq	8780352c <rt_thread_control+0x88>
878034ac:	e3510002 	cmp	r1, #2
878034b0:	0a000002 	beq	878034c0 <rt_thread_control+0x1c>
878034b4:	e3510000 	cmp	r1, #0
878034b8:	1a00001c 	bne	87803530 <rt_thread_control+0x8c>
878034bc:	eaffffe7 	b	87803460 <rt_thread_startup>
878034c0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
878034c4:	e1a04000 	mov	r4, r0
878034c8:	e1a06002 	mov	r6, r2
878034cc:	ebfff347 	bl	878001f0 <rt_hw_interrupt_disable>
878034d0:	e5d45034 	ldrb	r5, [r4, #52]	; 0x34
878034d4:	e1a07000 	mov	r7, r0
878034d8:	e2055007 	and	r5, r5, #7
878034dc:	e3550001 	cmp	r5, #1
878034e0:	1a000008 	bne	87803508 <rt_thread_control+0x64>
878034e4:	e1a00004 	mov	r0, r4
878034e8:	ebfffddf 	bl	87802c6c <rt_schedule_remove_thread>
878034ec:	e5d63000 	ldrb	r3, [r6]
878034f0:	e1a00004 	mov	r0, r4
878034f4:	e1a05315 	lsl	r5, r5, r3
878034f8:	e5c43035 	strb	r3, [r4, #53]	; 0x35
878034fc:	e5845038 	str	r5, [r4, #56]	; 0x38
87803500:	ebfffdb7 	bl	87802be4 <rt_schedule_insert_thread>
87803504:	ea000004 	b	8780351c <rt_thread_control+0x78>
87803508:	e5d62000 	ldrb	r2, [r6]
8780350c:	e3a03001 	mov	r3, #1
87803510:	e1a03213 	lsl	r3, r3, r2
87803514:	e5c42035 	strb	r2, [r4, #53]	; 0x35
87803518:	e5843038 	str	r3, [r4, #56]	; 0x38
8780351c:	e1a00007 	mov	r0, r7
87803520:	ebfff335 	bl	878001fc <rt_hw_interrupt_enable>
87803524:	e3a00000 	mov	r0, #0
87803528:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
8780352c:	eaffff33 	b	87803200 <rt_thread_delete>
87803530:	e3a00000 	mov	r0, #0
87803534:	e12fff1e 	bx	lr

87803538 <rt_thread_find>:
87803538:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
8780353c:	e1a08000 	mov	r8, r0
87803540:	e59f507c 	ldr	r5, [pc, #124]	; 878035c4 <rt_thread_find+0x8c>
87803544:	e5953000 	ldr	r3, [r5]
87803548:	e3530000 	cmp	r3, #0
8780354c:	0a000000 	beq	87803554 <rt_thread_find+0x1c>
87803550:	ebfffe3d 	bl	87802e4c <rt_enter_critical>
87803554:	e3a00001 	mov	r0, #1
87803558:	ebfffcd8 	bl	878028c0 <rt_object_get_information>
8780355c:	e1a07000 	mov	r7, r0
87803560:	e5b76004 	ldr	r6, [r7, #4]!
87803564:	e1560007 	cmp	r6, r7
87803568:	0a00000d 	beq	878035a4 <rt_thread_find+0x6c>
8780356c:	e246400c 	sub	r4, r6, #12
87803570:	e3a02008 	mov	r2, #8
87803574:	e1a01008 	mov	r1, r8
87803578:	e1a00004 	mov	r0, r4
8780357c:	ebfff9ed 	bl	87801d38 <rt_strncmp>
87803580:	e3500000 	cmp	r0, #0
87803584:	1a000004 	bne	8780359c <rt_thread_find+0x64>
87803588:	e5953000 	ldr	r3, [r5]
8780358c:	e3530000 	cmp	r3, #0
87803590:	0a000009 	beq	878035bc <rt_thread_find+0x84>
87803594:	ebfffe35 	bl	87802e70 <rt_exit_critical>
87803598:	ea000007 	b	878035bc <rt_thread_find+0x84>
8780359c:	e5966000 	ldr	r6, [r6]
878035a0:	eaffffef 	b	87803564 <rt_thread_find+0x2c>
878035a4:	e5950000 	ldr	r0, [r5]
878035a8:	e3500000 	cmp	r0, #0
878035ac:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
878035b0:	ebfffe2e 	bl	87802e70 <rt_exit_critical>
878035b4:	e3a00000 	mov	r0, #0
878035b8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
878035bc:	e1a00004 	mov	r0, r4
878035c0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
878035c4:	87804850 	.word	0x87804850

878035c8 <_rt_timer_remove>:
878035c8:	e5901018 	ldr	r1, [r0, #24]
878035cc:	e2803014 	add	r3, r0, #20
878035d0:	e5902014 	ldr	r2, [r0, #20]
878035d4:	e5821004 	str	r1, [r2, #4]
878035d8:	e5901018 	ldr	r1, [r0, #24]
878035dc:	e5812000 	str	r2, [r1]
878035e0:	e5803018 	str	r3, [r0, #24]
878035e4:	e5803014 	str	r3, [r0, #20]
878035e8:	e12fff1e 	bx	lr

878035ec <rt_timer_init>:
878035ec:	e92d4070 	push	{r4, r5, r6, lr}
878035f0:	e1a04000 	mov	r4, r0
878035f4:	e1a06002 	mov	r6, r2
878035f8:	e1a02001 	mov	r2, r1
878035fc:	e3a0100a 	mov	r1, #10
87803600:	e1a05003 	mov	r5, r3
87803604:	ebfffce5 	bl	878029a0 <rt_object_init>
87803608:	e5dd2014 	ldrb	r2, [sp, #20]
8780360c:	e3a03000 	mov	r3, #0
87803610:	e5843028 	str	r3, [r4, #40]	; 0x28
87803614:	e59d3010 	ldr	r3, [sp, #16]
87803618:	e3c22001 	bic	r2, r2, #1
8780361c:	e5843024 	str	r3, [r4, #36]	; 0x24
87803620:	e2843014 	add	r3, r4, #20
87803624:	e5c42009 	strb	r2, [r4, #9]
87803628:	e584601c 	str	r6, [r4, #28]
8780362c:	e5845020 	str	r5, [r4, #32]
87803630:	e5843018 	str	r3, [r4, #24]
87803634:	e5843014 	str	r3, [r4, #20]
87803638:	e8bd8070 	pop	{r4, r5, r6, pc}

8780363c <rt_timer_detach>:
8780363c:	e92d4070 	push	{r4, r5, r6, lr}
87803640:	e1a04000 	mov	r4, r0
87803644:	ebfff2e9 	bl	878001f0 <rt_hw_interrupt_disable>
87803648:	e1a05000 	mov	r5, r0
8780364c:	e1a00004 	mov	r0, r4
87803650:	ebffffdc 	bl	878035c8 <_rt_timer_remove>
87803654:	e1a00005 	mov	r0, r5
87803658:	ebfff2e7 	bl	878001fc <rt_hw_interrupt_enable>
8780365c:	e1a00004 	mov	r0, r4
87803660:	ebfffcec 	bl	87802a18 <rt_object_detach>
87803664:	e3a00000 	mov	r0, #0
87803668:	e8bd8070 	pop	{r4, r5, r6, pc}

8780366c <rt_timer_create>:
8780366c:	e92d4070 	push	{r4, r5, r6, lr}
87803670:	e1a06001 	mov	r6, r1
87803674:	e1a01000 	mov	r1, r0
87803678:	e3a0000a 	mov	r0, #10
8780367c:	e1a05002 	mov	r5, r2
87803680:	e1a04003 	mov	r4, r3
87803684:	ebfffcf2 	bl	87802a54 <rt_object_allocate>
87803688:	e3500000 	cmp	r0, #0
8780368c:	08bd8070 	popeq	{r4, r5, r6, pc}
87803690:	e5dd1010 	ldrb	r1, [sp, #16]
87803694:	e3a03000 	mov	r3, #0
87803698:	e5803028 	str	r3, [r0, #40]	; 0x28
8780369c:	e2803014 	add	r3, r0, #20
878036a0:	e3c11001 	bic	r1, r1, #1
878036a4:	e5c01009 	strb	r1, [r0, #9]
878036a8:	e580601c 	str	r6, [r0, #28]
878036ac:	e5805020 	str	r5, [r0, #32]
878036b0:	e5804024 	str	r4, [r0, #36]	; 0x24
878036b4:	e5803018 	str	r3, [r0, #24]
878036b8:	e5803014 	str	r3, [r0, #20]
878036bc:	e8bd8070 	pop	{r4, r5, r6, pc}

878036c0 <rt_timer_delete>:
878036c0:	e92d4070 	push	{r4, r5, r6, lr}
878036c4:	e1a04000 	mov	r4, r0
878036c8:	ebfff2c8 	bl	878001f0 <rt_hw_interrupt_disable>
878036cc:	e1a05000 	mov	r5, r0
878036d0:	e1a00004 	mov	r0, r4
878036d4:	ebffffbb 	bl	878035c8 <_rt_timer_remove>
878036d8:	e1a00005 	mov	r0, r5
878036dc:	ebfff2c6 	bl	878001fc <rt_hw_interrupt_enable>
878036e0:	e1a00004 	mov	r0, r4
878036e4:	ebfffcf7 	bl	87802ac8 <rt_object_delete>
878036e8:	e3a00000 	mov	r0, #0
878036ec:	e8bd8070 	pop	{r4, r5, r6, pc}

878036f0 <rt_timer_start>:
878036f0:	e92d4070 	push	{r4, r5, r6, lr}
878036f4:	e1a04000 	mov	r4, r0
878036f8:	ebfff2bc 	bl	878001f0 <rt_hw_interrupt_disable>
878036fc:	e1a05000 	mov	r5, r0
87803700:	e1a00004 	mov	r0, r4
87803704:	ebffffaf 	bl	878035c8 <_rt_timer_remove>
87803708:	e5d43009 	ldrb	r3, [r4, #9]
8780370c:	e1a00005 	mov	r0, r5
87803710:	e3c33001 	bic	r3, r3, #1
87803714:	e5c43009 	strb	r3, [r4, #9]
87803718:	ebfff2b7 	bl	878001fc <rt_hw_interrupt_enable>
8780371c:	ebfff314 	bl	87800374 <rt_tick_get>
87803720:	e5943024 	ldr	r3, [r4, #36]	; 0x24
87803724:	e0830000 	add	r0, r3, r0
87803728:	e5840028 	str	r0, [r4, #40]	; 0x28
8780372c:	ebfff2af 	bl	878001f0 <rt_hw_interrupt_disable>
87803730:	e59f306c 	ldr	r3, [pc, #108]	; 878037a4 <rt_timer_start+0xb4>
87803734:	e5935004 	ldr	r5, [r3, #4]
87803738:	e1a0c003 	mov	ip, r3
8780373c:	e1550003 	cmp	r5, r3
87803740:	e5932000 	ldr	r2, [r3]
87803744:	0a000008 	beq	8780376c <rt_timer_start+0x7c>
87803748:	e5921014 	ldr	r1, [r2, #20]
8780374c:	e594e028 	ldr	lr, [r4, #40]	; 0x28
87803750:	e151000e 	cmp	r1, lr
87803754:	0a000002 	beq	87803764 <rt_timer_start+0x74>
87803758:	e06e1001 	rsb	r1, lr, r1
8780375c:	e371010a 	cmn	r1, #-2147483646	; 0x80000002
87803760:	9a000001 	bls	8780376c <rt_timer_start+0x7c>
87803764:	e1a03002 	mov	r3, r2
87803768:	eafffff3 	b	8780373c <rt_timer_start+0x4c>
8780376c:	e59c1008 	ldr	r1, [ip, #8]
87803770:	e2811001 	add	r1, r1, #1
87803774:	e58c1008 	str	r1, [ip, #8]
87803778:	e2841014 	add	r1, r4, #20
8780377c:	e5821004 	str	r1, [r2, #4]
87803780:	e5842014 	str	r2, [r4, #20]
87803784:	e5831000 	str	r1, [r3]
87803788:	e5843018 	str	r3, [r4, #24]
8780378c:	e5d43009 	ldrb	r3, [r4, #9]
87803790:	e3833001 	orr	r3, r3, #1
87803794:	e5c43009 	strb	r3, [r4, #9]
87803798:	ebfff297 	bl	878001fc <rt_hw_interrupt_enable>
8780379c:	e3a00000 	mov	r0, #0
878037a0:	e8bd8070 	pop	{r4, r5, r6, pc}
878037a4:	87804740 	.word	0x87804740

878037a8 <rt_timer_stop>:
878037a8:	e5d03009 	ldrb	r3, [r0, #9]
878037ac:	e3130001 	tst	r3, #1
878037b0:	0a00000c 	beq	878037e8 <rt_timer_stop+0x40>
878037b4:	e92d4070 	push	{r4, r5, r6, lr}
878037b8:	e1a04000 	mov	r4, r0
878037bc:	ebfff28b 	bl	878001f0 <rt_hw_interrupt_disable>
878037c0:	e1a05000 	mov	r5, r0
878037c4:	e1a00004 	mov	r0, r4
878037c8:	ebffff7e 	bl	878035c8 <_rt_timer_remove>
878037cc:	e1a00005 	mov	r0, r5
878037d0:	ebfff289 	bl	878001fc <rt_hw_interrupt_enable>
878037d4:	e5d43009 	ldrb	r3, [r4, #9]
878037d8:	e3a00000 	mov	r0, #0
878037dc:	e3c33001 	bic	r3, r3, #1
878037e0:	e5c43009 	strb	r3, [r4, #9]
878037e4:	e8bd8070 	pop	{r4, r5, r6, pc}
878037e8:	e3e00000 	mvn	r0, #0
878037ec:	e12fff1e 	bx	lr

878037f0 <rt_timer_control>:
878037f0:	e3510004 	cmp	r1, #4
878037f4:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
878037f8:	ea000014 	b	87803850 <rt_timer_control+0x60>
878037fc:	87803818 	.word	0x87803818
87803800:	87803810 	.word	0x87803810
87803804:	87803824 	.word	0x87803824
87803808:	87803830 	.word	0x87803830
8780380c:	87803840 	.word	0x87803840
87803810:	e5903024 	ldr	r3, [r0, #36]	; 0x24
87803814:	ea00000c 	b	8780384c <rt_timer_control+0x5c>
87803818:	e5923000 	ldr	r3, [r2]
8780381c:	e5803024 	str	r3, [r0, #36]	; 0x24
87803820:	ea00000a 	b	87803850 <rt_timer_control+0x60>
87803824:	e5d03009 	ldrb	r3, [r0, #9]
87803828:	e3c33002 	bic	r3, r3, #2
8780382c:	ea000001 	b	87803838 <rt_timer_control+0x48>
87803830:	e5d03009 	ldrb	r3, [r0, #9]
87803834:	e3833002 	orr	r3, r3, #2
87803838:	e5c03009 	strb	r3, [r0, #9]
8780383c:	ea000003 	b	87803850 <rt_timer_control+0x60>
87803840:	e5d03009 	ldrb	r3, [r0, #9]
87803844:	e2133001 	ands	r3, r3, #1
87803848:	13a03001 	movne	r3, #1
8780384c:	e5823000 	str	r3, [r2]
87803850:	e3a00000 	mov	r0, #0
87803854:	e12fff1e 	bx	lr

87803858 <rt_timer_check>:
87803858:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
8780385c:	ebfff2c4 	bl	87800374 <rt_tick_get>
87803860:	e59f5074 	ldr	r5, [pc, #116]	; 878038dc <rt_timer_check+0x84>
87803864:	e1a06000 	mov	r6, r0
87803868:	ebfff260 	bl	878001f0 <rt_hw_interrupt_disable>
8780386c:	e1a07000 	mov	r7, r0
87803870:	e5954000 	ldr	r4, [r5]
87803874:	e1540005 	cmp	r4, r5
87803878:	0a000014 	beq	878038d0 <rt_timer_check+0x78>
8780387c:	e5940014 	ldr	r0, [r4, #20]
87803880:	e2448014 	sub	r8, r4, #20
87803884:	e0600006 	rsb	r0, r0, r6
87803888:	e370010a 	cmn	r0, #-2147483646	; 0x80000002
8780388c:	8a00000f 	bhi	878038d0 <rt_timer_check+0x78>
87803890:	e1a00008 	mov	r0, r8
87803894:	ebffff4b 	bl	878035c8 <_rt_timer_remove>
87803898:	e5943008 	ldr	r3, [r4, #8]
8780389c:	e594000c 	ldr	r0, [r4, #12]
878038a0:	e12fff33 	blx	r3
878038a4:	ebfff2b2 	bl	87800374 <rt_tick_get>
878038a8:	e554300b 	ldrb	r3, [r4, #-11]
878038ac:	e1a06000 	mov	r6, r0
878038b0:	e2032003 	and	r2, r3, #3
878038b4:	e3c33001 	bic	r3, r3, #1
878038b8:	e3520003 	cmp	r2, #3
878038bc:	e544300b 	strb	r3, [r4, #-11]
878038c0:	1affffea 	bne	87803870 <rt_timer_check+0x18>
878038c4:	e1a00008 	mov	r0, r8
878038c8:	ebffff88 	bl	878036f0 <rt_timer_start>
878038cc:	eaffffe7 	b	87803870 <rt_timer_check+0x18>
878038d0:	e1a00007 	mov	r0, r7
878038d4:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
878038d8:	eafff247 	b	878001fc <rt_hw_interrupt_enable>
878038dc:	87804740 	.word	0x87804740

878038e0 <rt_timer_next_timeout_tick>:
878038e0:	e92d4010 	push	{r4, lr}
878038e4:	ebfff241 	bl	878001f0 <rt_hw_interrupt_disable>
878038e8:	e59f2018 	ldr	r2, [pc, #24]	; 87803908 <rt_timer_next_timeout_tick+0x28>
878038ec:	e5923000 	ldr	r3, [r2]
878038f0:	e1530002 	cmp	r3, r2
878038f4:	03e04000 	mvneq	r4, #0
878038f8:	15934014 	ldrne	r4, [r3, #20]
878038fc:	ebfff23e 	bl	878001fc <rt_hw_interrupt_enable>
87803900:	e1a00004 	mov	r0, r4
87803904:	e8bd8010 	pop	{r4, pc}
87803908:	87804740 	.word	0x87804740

8780390c <rt_system_timer_init>:
8780390c:	e59f3008 	ldr	r3, [pc, #8]	; 8780391c <rt_system_timer_init+0x10>
87803910:	e5833004 	str	r3, [r3, #4]
87803914:	e5833000 	str	r3, [r3]
87803918:	e12fff1e 	bx	lr
8780391c:	87804740 	.word	0x87804740

87803920 <rt_system_timer_thread_init>:
87803920:	e12fff1e 	bx	lr

87803924 <atoi>:
87803924:	e5d02000 	ldrb	r2, [r0]
87803928:	e2421009 	sub	r1, r2, #9
8780392c:	e3520020 	cmp	r2, #32
87803930:	13510004 	cmpne	r1, #4
87803934:	92800001 	addls	r0, r0, #1
87803938:	9afffff9 	bls	87803924 <atoi>
8780393c:	e352002b 	cmp	r2, #43	; 0x2b
87803940:	e1a03000 	mov	r3, r0
87803944:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
87803948:	0a000003 	beq	8780395c <atoi+0x38>
8780394c:	e352002d 	cmp	r2, #45	; 0x2d
87803950:	03e02000 	mvneq	r2, #0
87803954:	0a000001 	beq	87803960 <atoi+0x3c>
87803958:	ea000002 	b	87803968 <atoi+0x44>
8780395c:	e3a02001 	mov	r2, #1
87803960:	e2833001 	add	r3, r3, #1
87803964:	ea000000 	b	8780396c <atoi+0x48>
87803968:	e3a02001 	mov	r2, #1
8780396c:	e2433001 	sub	r3, r3, #1
87803970:	e3a00000 	mov	r0, #0
87803974:	e3a0e00a 	mov	lr, #10
87803978:	e5f31001 	ldrb	r1, [r3, #1]!
8780397c:	e241c030 	sub	ip, r1, #48	; 0x30
87803980:	e35c0009 	cmp	ip, #9
87803984:	9020109e 	mlals	r0, lr, r0, r1
87803988:	92400030 	subls	r0, r0, #48	; 0x30
8780398c:	9afffff9 	bls	87803978 <atoi+0x54>
87803990:	e3720001 	cmn	r2, #1
87803994:	02600000 	rsbeq	r0, r0, #0
87803998:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

8780399c <atol>:
8780399c:	e5d01000 	ldrb	r1, [r0]
878039a0:	e2413009 	sub	r3, r1, #9
878039a4:	e3510020 	cmp	r1, #32
878039a8:	13530004 	cmpne	r3, #4
878039ac:	93a03001 	movls	r3, #1
878039b0:	83a03000 	movhi	r3, #0
878039b4:	92800001 	addls	r0, r0, #1
878039b8:	9afffff7 	bls	8780399c <atol>
878039bc:	e351002b 	cmp	r1, #43	; 0x2b
878039c0:	e1a02000 	mov	r2, r0
878039c4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
878039c8:	0a000002 	beq	878039d8 <atol+0x3c>
878039cc:	e351002d 	cmp	r1, #45	; 0x2d
878039d0:	1a000001 	bne	878039dc <atol+0x40>
878039d4:	e3e03000 	mvn	r3, #0
878039d8:	e2822001 	add	r2, r2, #1
878039dc:	e2422001 	sub	r2, r2, #1
878039e0:	e3a00000 	mov	r0, #0
878039e4:	e3a0e00a 	mov	lr, #10
878039e8:	e5f21001 	ldrb	r1, [r2, #1]!
878039ec:	e241c030 	sub	ip, r1, #48	; 0x30
878039f0:	e35c0009 	cmp	ip, #9
878039f4:	9020109e 	mlals	r0, lr, r0, r1
878039f8:	92400030 	subls	r0, r0, #48	; 0x30
878039fc:	9afffff9 	bls	878039e8 <atol+0x4c>
87803a00:	e3530000 	cmp	r3, #0
87803a04:	12600000 	rsbne	r0, r0, #0
87803a08:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

87803a0c <malloc>:
87803a0c:	eafffab3 	b	878024e0 <rt_malloc>

87803a10 <free>:
87803a10:	eafffb20 	b	87802698 <rt_free>

87803a14 <realloc>:
87803a14:	eafffb43 	b	87802728 <rt_realloc>

87803a18 <calloc>:
87803a18:	eafffb13 	b	8780266c <rt_calloc>
87803a1c:	00000000 	andeq	r0, r0, r0

87803a20 <__aeabi_uidiv>:
87803a20:	1e4a      	subs	r2, r1, #1
87803a22:	bf08      	it	eq
87803a24:	4770      	bxeq	lr
87803a26:	f0c0 8124 	bcc.w	87803c72 <__aeabi_uidiv+0x252>
87803a2a:	4288      	cmp	r0, r1
87803a2c:	f240 8116 	bls.w	87803c5c <__aeabi_uidiv+0x23c>
87803a30:	4211      	tst	r1, r2
87803a32:	f000 8117 	beq.w	87803c64 <__aeabi_uidiv+0x244>
87803a36:	fab0 f380 	clz	r3, r0
87803a3a:	fab1 f281 	clz	r2, r1
87803a3e:	eba2 0303 	sub.w	r3, r2, r3
87803a42:	f1c3 031f 	rsb	r3, r3, #31
87803a46:	a204      	add	r2, pc, #16	; (adr r2, 87803a58 <__aeabi_uidiv+0x38>)
87803a48:	eb02 1303 	add.w	r3, r2, r3, lsl #4
87803a4c:	f04f 0200 	mov.w	r2, #0
87803a50:	469f      	mov	pc, r3
87803a52:	bf00      	nop
87803a54:	f3af 8000 	nop.w
87803a58:	ebb0 7fc1 	cmp.w	r0, r1, lsl #31
87803a5c:	bf00      	nop
87803a5e:	eb42 0202 	adc.w	r2, r2, r2
87803a62:	bf28      	it	cs
87803a64:	eba0 70c1 	subcs.w	r0, r0, r1, lsl #31
87803a68:	ebb0 7f81 	cmp.w	r0, r1, lsl #30
87803a6c:	bf00      	nop
87803a6e:	eb42 0202 	adc.w	r2, r2, r2
87803a72:	bf28      	it	cs
87803a74:	eba0 7081 	subcs.w	r0, r0, r1, lsl #30
87803a78:	ebb0 7f41 	cmp.w	r0, r1, lsl #29
87803a7c:	bf00      	nop
87803a7e:	eb42 0202 	adc.w	r2, r2, r2
87803a82:	bf28      	it	cs
87803a84:	eba0 7041 	subcs.w	r0, r0, r1, lsl #29
87803a88:	ebb0 7f01 	cmp.w	r0, r1, lsl #28
87803a8c:	bf00      	nop
87803a8e:	eb42 0202 	adc.w	r2, r2, r2
87803a92:	bf28      	it	cs
87803a94:	eba0 7001 	subcs.w	r0, r0, r1, lsl #28
87803a98:	ebb0 6fc1 	cmp.w	r0, r1, lsl #27
87803a9c:	bf00      	nop
87803a9e:	eb42 0202 	adc.w	r2, r2, r2
87803aa2:	bf28      	it	cs
87803aa4:	eba0 60c1 	subcs.w	r0, r0, r1, lsl #27
87803aa8:	ebb0 6f81 	cmp.w	r0, r1, lsl #26
87803aac:	bf00      	nop
87803aae:	eb42 0202 	adc.w	r2, r2, r2
87803ab2:	bf28      	it	cs
87803ab4:	eba0 6081 	subcs.w	r0, r0, r1, lsl #26
87803ab8:	ebb0 6f41 	cmp.w	r0, r1, lsl #25
87803abc:	bf00      	nop
87803abe:	eb42 0202 	adc.w	r2, r2, r2
87803ac2:	bf28      	it	cs
87803ac4:	eba0 6041 	subcs.w	r0, r0, r1, lsl #25
87803ac8:	ebb0 6f01 	cmp.w	r0, r1, lsl #24
87803acc:	bf00      	nop
87803ace:	eb42 0202 	adc.w	r2, r2, r2
87803ad2:	bf28      	it	cs
87803ad4:	eba0 6001 	subcs.w	r0, r0, r1, lsl #24
87803ad8:	ebb0 5fc1 	cmp.w	r0, r1, lsl #23
87803adc:	bf00      	nop
87803ade:	eb42 0202 	adc.w	r2, r2, r2
87803ae2:	bf28      	it	cs
87803ae4:	eba0 50c1 	subcs.w	r0, r0, r1, lsl #23
87803ae8:	ebb0 5f81 	cmp.w	r0, r1, lsl #22
87803aec:	bf00      	nop
87803aee:	eb42 0202 	adc.w	r2, r2, r2
87803af2:	bf28      	it	cs
87803af4:	eba0 5081 	subcs.w	r0, r0, r1, lsl #22
87803af8:	ebb0 5f41 	cmp.w	r0, r1, lsl #21
87803afc:	bf00      	nop
87803afe:	eb42 0202 	adc.w	r2, r2, r2
87803b02:	bf28      	it	cs
87803b04:	eba0 5041 	subcs.w	r0, r0, r1, lsl #21
87803b08:	ebb0 5f01 	cmp.w	r0, r1, lsl #20
87803b0c:	bf00      	nop
87803b0e:	eb42 0202 	adc.w	r2, r2, r2
87803b12:	bf28      	it	cs
87803b14:	eba0 5001 	subcs.w	r0, r0, r1, lsl #20
87803b18:	ebb0 4fc1 	cmp.w	r0, r1, lsl #19
87803b1c:	bf00      	nop
87803b1e:	eb42 0202 	adc.w	r2, r2, r2
87803b22:	bf28      	it	cs
87803b24:	eba0 40c1 	subcs.w	r0, r0, r1, lsl #19
87803b28:	ebb0 4f81 	cmp.w	r0, r1, lsl #18
87803b2c:	bf00      	nop
87803b2e:	eb42 0202 	adc.w	r2, r2, r2
87803b32:	bf28      	it	cs
87803b34:	eba0 4081 	subcs.w	r0, r0, r1, lsl #18
87803b38:	ebb0 4f41 	cmp.w	r0, r1, lsl #17
87803b3c:	bf00      	nop
87803b3e:	eb42 0202 	adc.w	r2, r2, r2
87803b42:	bf28      	it	cs
87803b44:	eba0 4041 	subcs.w	r0, r0, r1, lsl #17
87803b48:	ebb0 4f01 	cmp.w	r0, r1, lsl #16
87803b4c:	bf00      	nop
87803b4e:	eb42 0202 	adc.w	r2, r2, r2
87803b52:	bf28      	it	cs
87803b54:	eba0 4001 	subcs.w	r0, r0, r1, lsl #16
87803b58:	ebb0 3fc1 	cmp.w	r0, r1, lsl #15
87803b5c:	bf00      	nop
87803b5e:	eb42 0202 	adc.w	r2, r2, r2
87803b62:	bf28      	it	cs
87803b64:	eba0 30c1 	subcs.w	r0, r0, r1, lsl #15
87803b68:	ebb0 3f81 	cmp.w	r0, r1, lsl #14
87803b6c:	bf00      	nop
87803b6e:	eb42 0202 	adc.w	r2, r2, r2
87803b72:	bf28      	it	cs
87803b74:	eba0 3081 	subcs.w	r0, r0, r1, lsl #14
87803b78:	ebb0 3f41 	cmp.w	r0, r1, lsl #13
87803b7c:	bf00      	nop
87803b7e:	eb42 0202 	adc.w	r2, r2, r2
87803b82:	bf28      	it	cs
87803b84:	eba0 3041 	subcs.w	r0, r0, r1, lsl #13
87803b88:	ebb0 3f01 	cmp.w	r0, r1, lsl #12
87803b8c:	bf00      	nop
87803b8e:	eb42 0202 	adc.w	r2, r2, r2
87803b92:	bf28      	it	cs
87803b94:	eba0 3001 	subcs.w	r0, r0, r1, lsl #12
87803b98:	ebb0 2fc1 	cmp.w	r0, r1, lsl #11
87803b9c:	bf00      	nop
87803b9e:	eb42 0202 	adc.w	r2, r2, r2
87803ba2:	bf28      	it	cs
87803ba4:	eba0 20c1 	subcs.w	r0, r0, r1, lsl #11
87803ba8:	ebb0 2f81 	cmp.w	r0, r1, lsl #10
87803bac:	bf00      	nop
87803bae:	eb42 0202 	adc.w	r2, r2, r2
87803bb2:	bf28      	it	cs
87803bb4:	eba0 2081 	subcs.w	r0, r0, r1, lsl #10
87803bb8:	ebb0 2f41 	cmp.w	r0, r1, lsl #9
87803bbc:	bf00      	nop
87803bbe:	eb42 0202 	adc.w	r2, r2, r2
87803bc2:	bf28      	it	cs
87803bc4:	eba0 2041 	subcs.w	r0, r0, r1, lsl #9
87803bc8:	ebb0 2f01 	cmp.w	r0, r1, lsl #8
87803bcc:	bf00      	nop
87803bce:	eb42 0202 	adc.w	r2, r2, r2
87803bd2:	bf28      	it	cs
87803bd4:	eba0 2001 	subcs.w	r0, r0, r1, lsl #8
87803bd8:	ebb0 1fc1 	cmp.w	r0, r1, lsl #7
87803bdc:	bf00      	nop
87803bde:	eb42 0202 	adc.w	r2, r2, r2
87803be2:	bf28      	it	cs
87803be4:	eba0 10c1 	subcs.w	r0, r0, r1, lsl #7
87803be8:	ebb0 1f81 	cmp.w	r0, r1, lsl #6
87803bec:	bf00      	nop
87803bee:	eb42 0202 	adc.w	r2, r2, r2
87803bf2:	bf28      	it	cs
87803bf4:	eba0 1081 	subcs.w	r0, r0, r1, lsl #6
87803bf8:	ebb0 1f41 	cmp.w	r0, r1, lsl #5
87803bfc:	bf00      	nop
87803bfe:	eb42 0202 	adc.w	r2, r2, r2
87803c02:	bf28      	it	cs
87803c04:	eba0 1041 	subcs.w	r0, r0, r1, lsl #5
87803c08:	ebb0 1f01 	cmp.w	r0, r1, lsl #4
87803c0c:	bf00      	nop
87803c0e:	eb42 0202 	adc.w	r2, r2, r2
87803c12:	bf28      	it	cs
87803c14:	eba0 1001 	subcs.w	r0, r0, r1, lsl #4
87803c18:	ebb0 0fc1 	cmp.w	r0, r1, lsl #3
87803c1c:	bf00      	nop
87803c1e:	eb42 0202 	adc.w	r2, r2, r2
87803c22:	bf28      	it	cs
87803c24:	eba0 00c1 	subcs.w	r0, r0, r1, lsl #3
87803c28:	ebb0 0f81 	cmp.w	r0, r1, lsl #2
87803c2c:	bf00      	nop
87803c2e:	eb42 0202 	adc.w	r2, r2, r2
87803c32:	bf28      	it	cs
87803c34:	eba0 0081 	subcs.w	r0, r0, r1, lsl #2
87803c38:	ebb0 0f41 	cmp.w	r0, r1, lsl #1
87803c3c:	bf00      	nop
87803c3e:	eb42 0202 	adc.w	r2, r2, r2
87803c42:	bf28      	it	cs
87803c44:	eba0 0041 	subcs.w	r0, r0, r1, lsl #1
87803c48:	ebb0 0f01 	cmp.w	r0, r1
87803c4c:	bf00      	nop
87803c4e:	eb42 0202 	adc.w	r2, r2, r2
87803c52:	bf28      	it	cs
87803c54:	eba0 0001 	subcs.w	r0, r0, r1
87803c58:	4610      	mov	r0, r2
87803c5a:	4770      	bx	lr
87803c5c:	bf0c      	ite	eq
87803c5e:	2001      	moveq	r0, #1
87803c60:	2000      	movne	r0, #0
87803c62:	4770      	bx	lr
87803c64:	fab1 f281 	clz	r2, r1
87803c68:	f1c2 021f 	rsb	r2, r2, #31
87803c6c:	fa20 f002 	lsr.w	r0, r0, r2
87803c70:	4770      	bx	lr
87803c72:	b108      	cbz	r0, 87803c78 <__aeabi_uidiv+0x258>
87803c74:	f04f 30ff 	mov.w	r0, #4294967295
87803c78:	f000 b966 	b.w	87803f48 <__aeabi_idiv0>

87803c7c <__aeabi_uidivmod>:
87803c7c:	2900      	cmp	r1, #0
87803c7e:	d0f8      	beq.n	87803c72 <__aeabi_uidiv+0x252>
87803c80:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
87803c84:	f7ff fecc 	bl	87803a20 <__aeabi_uidiv>
87803c88:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
87803c8c:	fb02 f300 	mul.w	r3, r2, r0
87803c90:	eba1 0103 	sub.w	r1, r1, r3
87803c94:	4770      	bx	lr
87803c96:	bf00      	nop

87803c98 <__aeabi_idiv>:
87803c98:	2900      	cmp	r1, #0
87803c9a:	f000 813e 	beq.w	87803f1a <.divsi3_skip_div0_test+0x27c>

87803c9e <.divsi3_skip_div0_test>:
87803c9e:	ea80 0c01 	eor.w	ip, r0, r1
87803ca2:	bf48      	it	mi
87803ca4:	4249      	negmi	r1, r1
87803ca6:	1e4a      	subs	r2, r1, #1
87803ca8:	f000 811f 	beq.w	87803eea <.divsi3_skip_div0_test+0x24c>
87803cac:	0003      	movs	r3, r0
87803cae:	bf48      	it	mi
87803cb0:	4243      	negmi	r3, r0
87803cb2:	428b      	cmp	r3, r1
87803cb4:	f240 811e 	bls.w	87803ef4 <.divsi3_skip_div0_test+0x256>
87803cb8:	4211      	tst	r1, r2
87803cba:	f000 8123 	beq.w	87803f04 <.divsi3_skip_div0_test+0x266>
87803cbe:	fab3 f283 	clz	r2, r3
87803cc2:	fab1 f081 	clz	r0, r1
87803cc6:	eba0 0202 	sub.w	r2, r0, r2
87803cca:	f1c2 021f 	rsb	r2, r2, #31
87803cce:	a004      	add	r0, pc, #16	; (adr r0, 87803ce0 <.divsi3_skip_div0_test+0x42>)
87803cd0:	eb00 1202 	add.w	r2, r0, r2, lsl #4
87803cd4:	f04f 0000 	mov.w	r0, #0
87803cd8:	4697      	mov	pc, r2
87803cda:	bf00      	nop
87803cdc:	f3af 8000 	nop.w
87803ce0:	ebb3 7fc1 	cmp.w	r3, r1, lsl #31
87803ce4:	bf00      	nop
87803ce6:	eb40 0000 	adc.w	r0, r0, r0
87803cea:	bf28      	it	cs
87803cec:	eba3 73c1 	subcs.w	r3, r3, r1, lsl #31
87803cf0:	ebb3 7f81 	cmp.w	r3, r1, lsl #30
87803cf4:	bf00      	nop
87803cf6:	eb40 0000 	adc.w	r0, r0, r0
87803cfa:	bf28      	it	cs
87803cfc:	eba3 7381 	subcs.w	r3, r3, r1, lsl #30
87803d00:	ebb3 7f41 	cmp.w	r3, r1, lsl #29
87803d04:	bf00      	nop
87803d06:	eb40 0000 	adc.w	r0, r0, r0
87803d0a:	bf28      	it	cs
87803d0c:	eba3 7341 	subcs.w	r3, r3, r1, lsl #29
87803d10:	ebb3 7f01 	cmp.w	r3, r1, lsl #28
87803d14:	bf00      	nop
87803d16:	eb40 0000 	adc.w	r0, r0, r0
87803d1a:	bf28      	it	cs
87803d1c:	eba3 7301 	subcs.w	r3, r3, r1, lsl #28
87803d20:	ebb3 6fc1 	cmp.w	r3, r1, lsl #27
87803d24:	bf00      	nop
87803d26:	eb40 0000 	adc.w	r0, r0, r0
87803d2a:	bf28      	it	cs
87803d2c:	eba3 63c1 	subcs.w	r3, r3, r1, lsl #27
87803d30:	ebb3 6f81 	cmp.w	r3, r1, lsl #26
87803d34:	bf00      	nop
87803d36:	eb40 0000 	adc.w	r0, r0, r0
87803d3a:	bf28      	it	cs
87803d3c:	eba3 6381 	subcs.w	r3, r3, r1, lsl #26
87803d40:	ebb3 6f41 	cmp.w	r3, r1, lsl #25
87803d44:	bf00      	nop
87803d46:	eb40 0000 	adc.w	r0, r0, r0
87803d4a:	bf28      	it	cs
87803d4c:	eba3 6341 	subcs.w	r3, r3, r1, lsl #25
87803d50:	ebb3 6f01 	cmp.w	r3, r1, lsl #24
87803d54:	bf00      	nop
87803d56:	eb40 0000 	adc.w	r0, r0, r0
87803d5a:	bf28      	it	cs
87803d5c:	eba3 6301 	subcs.w	r3, r3, r1, lsl #24
87803d60:	ebb3 5fc1 	cmp.w	r3, r1, lsl #23
87803d64:	bf00      	nop
87803d66:	eb40 0000 	adc.w	r0, r0, r0
87803d6a:	bf28      	it	cs
87803d6c:	eba3 53c1 	subcs.w	r3, r3, r1, lsl #23
87803d70:	ebb3 5f81 	cmp.w	r3, r1, lsl #22
87803d74:	bf00      	nop
87803d76:	eb40 0000 	adc.w	r0, r0, r0
87803d7a:	bf28      	it	cs
87803d7c:	eba3 5381 	subcs.w	r3, r3, r1, lsl #22
87803d80:	ebb3 5f41 	cmp.w	r3, r1, lsl #21
87803d84:	bf00      	nop
87803d86:	eb40 0000 	adc.w	r0, r0, r0
87803d8a:	bf28      	it	cs
87803d8c:	eba3 5341 	subcs.w	r3, r3, r1, lsl #21
87803d90:	ebb3 5f01 	cmp.w	r3, r1, lsl #20
87803d94:	bf00      	nop
87803d96:	eb40 0000 	adc.w	r0, r0, r0
87803d9a:	bf28      	it	cs
87803d9c:	eba3 5301 	subcs.w	r3, r3, r1, lsl #20
87803da0:	ebb3 4fc1 	cmp.w	r3, r1, lsl #19
87803da4:	bf00      	nop
87803da6:	eb40 0000 	adc.w	r0, r0, r0
87803daa:	bf28      	it	cs
87803dac:	eba3 43c1 	subcs.w	r3, r3, r1, lsl #19
87803db0:	ebb3 4f81 	cmp.w	r3, r1, lsl #18
87803db4:	bf00      	nop
87803db6:	eb40 0000 	adc.w	r0, r0, r0
87803dba:	bf28      	it	cs
87803dbc:	eba3 4381 	subcs.w	r3, r3, r1, lsl #18
87803dc0:	ebb3 4f41 	cmp.w	r3, r1, lsl #17
87803dc4:	bf00      	nop
87803dc6:	eb40 0000 	adc.w	r0, r0, r0
87803dca:	bf28      	it	cs
87803dcc:	eba3 4341 	subcs.w	r3, r3, r1, lsl #17
87803dd0:	ebb3 4f01 	cmp.w	r3, r1, lsl #16
87803dd4:	bf00      	nop
87803dd6:	eb40 0000 	adc.w	r0, r0, r0
87803dda:	bf28      	it	cs
87803ddc:	eba3 4301 	subcs.w	r3, r3, r1, lsl #16
87803de0:	ebb3 3fc1 	cmp.w	r3, r1, lsl #15
87803de4:	bf00      	nop
87803de6:	eb40 0000 	adc.w	r0, r0, r0
87803dea:	bf28      	it	cs
87803dec:	eba3 33c1 	subcs.w	r3, r3, r1, lsl #15
87803df0:	ebb3 3f81 	cmp.w	r3, r1, lsl #14
87803df4:	bf00      	nop
87803df6:	eb40 0000 	adc.w	r0, r0, r0
87803dfa:	bf28      	it	cs
87803dfc:	eba3 3381 	subcs.w	r3, r3, r1, lsl #14
87803e00:	ebb3 3f41 	cmp.w	r3, r1, lsl #13
87803e04:	bf00      	nop
87803e06:	eb40 0000 	adc.w	r0, r0, r0
87803e0a:	bf28      	it	cs
87803e0c:	eba3 3341 	subcs.w	r3, r3, r1, lsl #13
87803e10:	ebb3 3f01 	cmp.w	r3, r1, lsl #12
87803e14:	bf00      	nop
87803e16:	eb40 0000 	adc.w	r0, r0, r0
87803e1a:	bf28      	it	cs
87803e1c:	eba3 3301 	subcs.w	r3, r3, r1, lsl #12
87803e20:	ebb3 2fc1 	cmp.w	r3, r1, lsl #11
87803e24:	bf00      	nop
87803e26:	eb40 0000 	adc.w	r0, r0, r0
87803e2a:	bf28      	it	cs
87803e2c:	eba3 23c1 	subcs.w	r3, r3, r1, lsl #11
87803e30:	ebb3 2f81 	cmp.w	r3, r1, lsl #10
87803e34:	bf00      	nop
87803e36:	eb40 0000 	adc.w	r0, r0, r0
87803e3a:	bf28      	it	cs
87803e3c:	eba3 2381 	subcs.w	r3, r3, r1, lsl #10
87803e40:	ebb3 2f41 	cmp.w	r3, r1, lsl #9
87803e44:	bf00      	nop
87803e46:	eb40 0000 	adc.w	r0, r0, r0
87803e4a:	bf28      	it	cs
87803e4c:	eba3 2341 	subcs.w	r3, r3, r1, lsl #9
87803e50:	ebb3 2f01 	cmp.w	r3, r1, lsl #8
87803e54:	bf00      	nop
87803e56:	eb40 0000 	adc.w	r0, r0, r0
87803e5a:	bf28      	it	cs
87803e5c:	eba3 2301 	subcs.w	r3, r3, r1, lsl #8
87803e60:	ebb3 1fc1 	cmp.w	r3, r1, lsl #7
87803e64:	bf00      	nop
87803e66:	eb40 0000 	adc.w	r0, r0, r0
87803e6a:	bf28      	it	cs
87803e6c:	eba3 13c1 	subcs.w	r3, r3, r1, lsl #7
87803e70:	ebb3 1f81 	cmp.w	r3, r1, lsl #6
87803e74:	bf00      	nop
87803e76:	eb40 0000 	adc.w	r0, r0, r0
87803e7a:	bf28      	it	cs
87803e7c:	eba3 1381 	subcs.w	r3, r3, r1, lsl #6
87803e80:	ebb3 1f41 	cmp.w	r3, r1, lsl #5
87803e84:	bf00      	nop
87803e86:	eb40 0000 	adc.w	r0, r0, r0
87803e8a:	bf28      	it	cs
87803e8c:	eba3 1341 	subcs.w	r3, r3, r1, lsl #5
87803e90:	ebb3 1f01 	cmp.w	r3, r1, lsl #4
87803e94:	bf00      	nop
87803e96:	eb40 0000 	adc.w	r0, r0, r0
87803e9a:	bf28      	it	cs
87803e9c:	eba3 1301 	subcs.w	r3, r3, r1, lsl #4
87803ea0:	ebb3 0fc1 	cmp.w	r3, r1, lsl #3
87803ea4:	bf00      	nop
87803ea6:	eb40 0000 	adc.w	r0, r0, r0
87803eaa:	bf28      	it	cs
87803eac:	eba3 03c1 	subcs.w	r3, r3, r1, lsl #3
87803eb0:	ebb3 0f81 	cmp.w	r3, r1, lsl #2
87803eb4:	bf00      	nop
87803eb6:	eb40 0000 	adc.w	r0, r0, r0
87803eba:	bf28      	it	cs
87803ebc:	eba3 0381 	subcs.w	r3, r3, r1, lsl #2
87803ec0:	ebb3 0f41 	cmp.w	r3, r1, lsl #1
87803ec4:	bf00      	nop
87803ec6:	eb40 0000 	adc.w	r0, r0, r0
87803eca:	bf28      	it	cs
87803ecc:	eba3 0341 	subcs.w	r3, r3, r1, lsl #1
87803ed0:	ebb3 0f01 	cmp.w	r3, r1
87803ed4:	bf00      	nop
87803ed6:	eb40 0000 	adc.w	r0, r0, r0
87803eda:	bf28      	it	cs
87803edc:	eba3 0301 	subcs.w	r3, r3, r1
87803ee0:	f1bc 0f00 	cmp.w	ip, #0
87803ee4:	bf48      	it	mi
87803ee6:	4240      	negmi	r0, r0
87803ee8:	4770      	bx	lr
87803eea:	ea9c 0f00 	teq	ip, r0
87803eee:	bf48      	it	mi
87803ef0:	4240      	negmi	r0, r0
87803ef2:	4770      	bx	lr
87803ef4:	bf38      	it	cc
87803ef6:	2000      	movcc	r0, #0
87803ef8:	bf04      	itt	eq
87803efa:	ea4f 70ec 	moveq.w	r0, ip, asr #31
87803efe:	f040 0001 	orreq.w	r0, r0, #1
87803f02:	4770      	bx	lr
87803f04:	fab1 f281 	clz	r2, r1
87803f08:	f1c2 021f 	rsb	r2, r2, #31
87803f0c:	f1bc 0f00 	cmp.w	ip, #0
87803f10:	fa23 f002 	lsr.w	r0, r3, r2
87803f14:	bf48      	it	mi
87803f16:	4240      	negmi	r0, r0
87803f18:	4770      	bx	lr
87803f1a:	2800      	cmp	r0, #0
87803f1c:	bfc8      	it	gt
87803f1e:	f06f 4000 	mvngt.w	r0, #2147483648	; 0x80000000
87803f22:	bfb8      	it	lt
87803f24:	f04f 4000 	movlt.w	r0, #2147483648	; 0x80000000
87803f28:	f000 b80e 	b.w	87803f48 <__aeabi_idiv0>

87803f2c <__aeabi_idivmod>:
87803f2c:	2900      	cmp	r1, #0
87803f2e:	d0f4      	beq.n	87803f1a <.divsi3_skip_div0_test+0x27c>
87803f30:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
87803f34:	f7ff feb3 	bl	87803c9e <.divsi3_skip_div0_test>
87803f38:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
87803f3c:	fb02 f300 	mul.w	r3, r2, r0
87803f40:	eba1 0103 	sub.w	r1, r1, r3
87803f44:	4770      	bx	lr
87803f46:	bf00      	nop

87803f48 <__aeabi_idiv0>:
87803f48:	4770      	bx	lr
87803f4a:	bf00      	nop

87803f4c <main>:
87803f4c:	e92d4010 	push	{r4, lr}
87803f50:	ebfff055 	bl	878000ac <clk_enable>
87803f54:	ebfff05f 	bl	878000d8 <led_init>
87803f58:	ebfff070 	bl	87800120 <led_off>
87803f5c:	e3a00f7d 	mov	r0, #500	; 0x1f4
87803f60:	ebfff07d 	bl	8780015c <delay>
87803f64:	ebfff067 	bl	87800108 <led_on>
87803f68:	e3a00f7d 	mov	r0, #500	; 0x1f4
87803f6c:	ebfff07a 	bl	8780015c <delay>
87803f70:	eafffff8 	b	87803f58 <main+0xc>

87803f74 <rt_hw_context_switch>:
87803f74:	e92d4000 	stmfd	sp!, {lr}
87803f78:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
87803f7c:	e10f4000 	mrs	r4, CPSR
87803f80:	e31e0001 	tst	lr, #1
87803f84:	13844020 	orrne	r4, r4, #32
87803f88:	e92d0010 	stmfd	sp!, {r4}
87803f8c:	e580d000 	str	sp, [r0]
87803f90:	e591d000 	ldr	sp, [r1]
87803f94:	ea00000a 	b	87803fc4 <rt_hw_context_switch_exit>

87803f98 <rt_hw_context_switch_interrupt>:
87803f98:	e59f2030 	ldr	r2, [pc, #48]	; 87803fd0 <rt_hw_context_switch_exit+0xc>
87803f9c:	e5923000 	ldr	r3, [r2]
87803fa0:	e3530001 	cmp	r3, #1
87803fa4:	0a000003 	beq	87803fb8 <_reswitch>
87803fa8:	e59fc024 	ldr	ip, [pc, #36]	; 87803fd4 <rt_hw_context_switch_exit+0x10>
87803fac:	e3a03001 	mov	r3, #1
87803fb0:	e58c0000 	str	r0, [ip]
87803fb4:	e5823000 	str	r3, [r2]

87803fb8 <_reswitch>:
87803fb8:	e59f2018 	ldr	r2, [pc, #24]	; 87803fd8 <rt_hw_context_switch_exit+0x14>
87803fbc:	e5821000 	str	r1, [r2]
87803fc0:	e12fff1e 	bx	lr

87803fc4 <rt_hw_context_switch_exit>:
87803fc4:	e8bd0002 	ldmfd	sp!, {r1}
87803fc8:	e16ff001 	msr	SPSR_fsxc, r1
87803fcc:	e8fddfff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}^
87803fd0:	878046ec 	.word	0x878046ec
87803fd4:	878046f4 	.word	0x878046f4
87803fd8:	878046f0 	.word	0x878046f0

87803fdc <register_fini>:
87803fdc:	f240 0300 	movw	r3, #0
87803fe0:	f2c0 0300 	movt	r3, #0
87803fe4:	b12b      	cbz	r3, 87803ff2 <register_fini+0x16>
87803fe6:	f244 0001 	movw	r0, #16385	; 0x4001
87803fea:	f2c8 7080 	movt	r0, #34688	; 0x8780
87803fee:	f000 b801 	b.w	87803ff4 <atexit>
87803ff2:	4770      	bx	lr

87803ff4 <atexit>:
87803ff4:	2300      	movs	r3, #0
87803ff6:	4601      	mov	r1, r0
87803ff8:	461a      	mov	r2, r3
87803ffa:	4618      	mov	r0, r3
87803ffc:	f000 b81a 	b.w	87804034 <__register_exitproc>

87804000 <__libc_fini_array>:
87804000:	b538      	push	{r3, r4, r5, lr}
87804002:	f244 64cc 	movw	r4, #18124	; 0x46cc
87804006:	f244 65c8 	movw	r5, #18120	; 0x46c8
8780400a:	f2c8 7480 	movt	r4, #34688	; 0x8780
8780400e:	f2c8 7580 	movt	r5, #34688	; 0x8780
87804012:	1b64      	subs	r4, r4, r5
87804014:	10a4      	asrs	r4, r4, #2
87804016:	bf18      	it	ne
87804018:	eb05 0584 	addne.w	r5, r5, r4, lsl #2
8780401c:	d005      	beq.n	8780402a <__libc_fini_array+0x2a>
8780401e:	3c01      	subs	r4, #1
87804020:	f855 3d04 	ldr.w	r3, [r5, #-4]!
87804024:	4798      	blx	r3
87804026:	2c00      	cmp	r4, #0
87804028:	d1f9      	bne.n	8780401e <__libc_fini_array+0x1e>
8780402a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
8780402e:	f000 b857 	b.w	878040e0 <_fini>
87804032:	bf00      	nop

87804034 <__register_exitproc>:
87804034:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
87804038:	f244 2424 	movw	r4, #16932	; 0x4224
8780403c:	f2c8 7480 	movt	r4, #34688	; 0x8780
87804040:	4606      	mov	r6, r0
87804042:	6825      	ldr	r5, [r4, #0]
87804044:	460f      	mov	r7, r1
87804046:	4690      	mov	r8, r2
87804048:	4699      	mov	r9, r3
8780404a:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
8780404e:	2c00      	cmp	r4, #0
87804050:	d03d      	beq.n	878040ce <__register_exitproc+0x9a>
87804052:	6860      	ldr	r0, [r4, #4]
87804054:	281f      	cmp	r0, #31
87804056:	bfd8      	it	le
87804058:	f100 0e01 	addle.w	lr, r0, #1
8780405c:	dd18      	ble.n	87804090 <__register_exitproc+0x5c>
8780405e:	f643 230c 	movw	r3, #14860	; 0x3a0c
87804062:	f2c8 7380 	movt	r3, #34688	; 0x8780
87804066:	b3bb      	cbz	r3, 878040d8 <__register_exitproc+0xa4>
87804068:	f44f 70c8 	mov.w	r0, #400	; 0x190
8780406c:	f7ff ecce 	blx	87803a0c <malloc>
87804070:	4604      	mov	r4, r0
87804072:	b388      	cbz	r0, 878040d8 <__register_exitproc+0xa4>
87804074:	f8d5 2148 	ldr.w	r2, [r5, #328]	; 0x148
87804078:	2100      	movs	r1, #0
8780407a:	f04f 0e01 	mov.w	lr, #1
8780407e:	6041      	str	r1, [r0, #4]
87804080:	4608      	mov	r0, r1
87804082:	6022      	str	r2, [r4, #0]
87804084:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
87804088:	f8c4 1188 	str.w	r1, [r4, #392]	; 0x188
8780408c:	f8c4 118c 	str.w	r1, [r4, #396]	; 0x18c
87804090:	b1ae      	cbz	r6, 878040be <__register_exitproc+0x8a>
87804092:	eb04 0580 	add.w	r5, r4, r0, lsl #2
87804096:	2201      	movs	r2, #1
87804098:	2e02      	cmp	r6, #2
8780409a:	f8c5 8088 	str.w	r8, [r5, #136]	; 0x88
8780409e:	fa02 f200 	lsl.w	r2, r2, r0
878040a2:	f8d4 3188 	ldr.w	r3, [r4, #392]	; 0x188
878040a6:	ea43 0302 	orr.w	r3, r3, r2
878040aa:	f8c4 3188 	str.w	r3, [r4, #392]	; 0x188
878040ae:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
878040b2:	bf02      	ittt	eq
878040b4:	f8d4 318c 	ldreq.w	r3, [r4, #396]	; 0x18c
878040b8:	431a      	orreq	r2, r3
878040ba:	f8c4 218c 	streq.w	r2, [r4, #396]	; 0x18c
878040be:	1c83      	adds	r3, r0, #2
878040c0:	f8c4 e004 	str.w	lr, [r4, #4]
878040c4:	2000      	movs	r0, #0
878040c6:	f844 7023 	str.w	r7, [r4, r3, lsl #2]
878040ca:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
878040ce:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
878040d2:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
878040d6:	e7bc      	b.n	87804052 <__register_exitproc+0x1e>
878040d8:	f04f 30ff 	mov.w	r0, #4294967295
878040dc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

878040e0 <_fini>:
878040e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
878040e2:	bf00      	nop
878040e4:	bcf8      	pop	{r3, r4, r5, r6, r7}
878040e6:	bc08      	pop	{r3}
878040e8:	469e      	mov	lr, r3
878040ea:	4770      	bx	lr

Disassembly of section .init:

878040ec <_init>:
878040ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
878040ee:	bf00      	nop
