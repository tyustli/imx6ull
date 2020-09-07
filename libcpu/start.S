/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2020-07-02     tyustli   first version
 */

.equ Mode_USR,        0x10
.equ Mode_FIQ,        0x11
.equ Mode_IRQ,        0x12
.equ Mode_SVC,        0x13
.equ Mode_ABT,        0x17
.equ Mode_UND,        0x1B
.equ Mode_SYS,        0x1F

.equ I_Bit,           0x80            @ when I bit is set, IRQ is disabled
.equ F_Bit,           0x40            @ when F bit is set, FIQ is disabled

#ifdef RT_USING_FPU
.equ UND_Stack_Size,     0x00000400
#else
.equ UND_Stack_Size,     0x00000000
#endif
.equ SVC_Stack_Size,     0x00000400
.equ ABT_Stack_Size,     0x00000000
.equ RT_FIQ_STACK_PGSZ,  0x00000000
.equ RT_IRQ_STACK_PGSZ,  0x00000800
.equ USR_Stack_Size,     0x00000400

#define ISR_Stack_Size  (UND_Stack_Size + SVC_Stack_Size + ABT_Stack_Size + \
                 RT_FIQ_STACK_PGSZ + RT_IRQ_STACK_PGSZ)

.section .data.share.isr
/* stack */
.globl stack_start
.globl stack_top

.align 3
stack_start:
.rept ISR_Stack_Size
.byte 0
.endr
stack_top:

 /*
 * 中断向量表
 */
.section .vectors
.code 32

.global system_vectors
system_vectors:
    ldr pc, _vector_reset    /* 复位中断 */
    ldr pc, _vector_undef    /* 未定义中断 */
    ldr pc, _vector_swi      /* SVC 中断 */
    ldr pc, _vector_pabt     /* 预取终止中断 */
    ldr pc, _vector_dabt     /* 数据终止中断 */
    ldr pc, _vector_resv     /* 未使用中断 */
    ldr pc, _vector_irq      /* IRQ 中断 */
    ldr pc, _vector_fiq      /* FIQ (快速中断) */

_vector_reset:
    .word reset
_vector_undef:
    .word vector_undef
_vector_swi:
    .word vector_swi
_vector_pabt:
    .word vector_pabt
_vector_dabt:
    .word vector_dabt
_vector_resv:
    .word vector_resv
_vector_irq:
    .word vector_irq
_vector_fiq:
    .word vector_fiq

.balignl    16,0xdeadbeef

/*
 * 启动代码
 */
    .section .text
    .global reset
reset:
    cpsid   i               /* Mask interrupts */

    /* Reset SCTlr Settings */
    mrc     p15, 0, r0, c1, c0, 0     /* Read CP15 System Control register                  */
    bic     r0,  r0, #(0x1 << 12)     /* Clear I bit 12 to disable I Cache                  */
    bic     r0,  r0, #(0x1 <<  2)     /* Clear C bit  2 to disable D Cache                  */
    bic     r0,  r0, #0x2             /* Clear A bit  1 to disable strict alignment         */
    bic     r0,  r0, #(0x1 << 11)     /* Clear Z bit 11 to disable branch prediction        */
    bic     r0,  r0, #0x1             /* Clear M bit  0 to disable MMU                      */
    mcr     p15, 0, r0, c1, c0, 0     /* Write value back to CP15 System Control register   */

    /* setup stack */
    bl      stack_setup

#ifndef __NO_SYSTEM_INIT
    ldr     r0,=SystemInit
    blx     r0
#endif
    cpsie   i                    /* Unmask interrupts             */

    /* clear bss */
    mov     r0, #0
    ldr     r1, =__bss_start
    ldr     r2, =__bss_end

bss_clear_loop:
    cmp     r1, r2
    strlo   r0, [r1], #4
    blo     bss_clear_loop

    /* start RT-Thread Kernel */
    b entry

stack_setup:
    ldr     r0, =stack_top

    @  Set the startup stack for svc
    mov     sp, r0

    @  Enter Undefined Instruction Mode and set its Stack Pointer
    msr     cpsr_c, #Mode_UND|I_Bit|F_Bit
    mov     sp, r0
    sub     r0, r0, #UND_Stack_Size

    @  Enter Abort Mode and set its Stack Pointer
    msr     cpsr_c, #Mode_ABT|I_Bit|F_Bit
    mov     sp, r0
    sub     r0, r0, #ABT_Stack_Size

    @  Enter FIQ Mode and set its Stack Pointer
    msr     cpsr_c, #Mode_FIQ|I_Bit|F_Bit
    mov     sp, r0
    sub     r0, r0, #RT_FIQ_STACK_PGSZ

    @  Enter IRQ Mode and set its Stack Pointer
    msr     cpsr_c, #Mode_IRQ|I_Bit|F_Bit
    mov     sp, r0
    sub     r0, r0, #RT_IRQ_STACK_PGSZ

    /* come back to SVC mode */
    msr     cpsr_c, #Mode_SVC|I_Bit|F_Bit
    bx      lr

/* exception handlers: undef, swi, padt, dabt, resv, irq, fiq          */
.section .text.isr, "ax"
    .align  5
.globl vector_fiq
vector_fiq:
    stmfd   sp!,{r0-r7,lr}
    bl      rt_hw_trap_fiq
    ldmfd   sp!,{r0-r7,lr}
    subs    pc, lr, #4

.globl      rt_interrupt_enter
.globl      rt_interrupt_leave
.globl      rt_thread_switch_interrupt_flag
.globl      rt_interrupt_from_thread
.globl      rt_interrupt_to_thread

.globl      rt_current_thread
.globl      vmm_thread
.globl      vmm_virq_check

    .align  5
.globl vector_irq
vector_irq:
    stmfd   sp!, {r0-r12,lr}

    bl      rt_interrupt_enter

    push    {lr}                         /* Save return address+4                                */
    push    {r0-r3, r12}                 /* Push caller save registers                           */

    mrs     r0, spsr                     /* Save SPRS to allow interrupt reentry                 */
    push    {r0}

    mrc     P15, 4, r1, C15, C0, 0       /* Get GIC base address                                 */
    add     r1, r1, #0x2000              /* r1: GICC base address                                */
    ldr     r0, [r1, #0xC]               /* r0: IAR                                              */

    push    {r0, r1}

    cps     #0x13                        /* Change to Supervisor mode to allow interrupt reentry */

    push    {lr}                         /* Save Supervisor lr                                   */
    ldr     r2, =rt_hw_trap_irq
    blx     r2                           /* Call SystemIrqHandler with param GCC                 */
    pop     {lr}

    cps     #0x12                        /* Back to IRQ mode                                     */

    pop     {r0, r1}

    str     r0, [r1, #0x10]              /* Now IRQ handler finished: write to EOIR              */

    pop     {r0}
    msr     spsr_cxsf, r0

    pop     {r0-r3, r12}
    pop     {lr}

    bl      rt_interrupt_leave

    @ if rt_thread_switch_interrupt_flag set, jump to
    @ rt_hw_context_switch_interrupt_do and don't return
    ldr     r0, =rt_thread_switch_interrupt_flag
    ldr     r1, [r0]
    cmp     r1, #1
    beq     rt_hw_context_switch_interrupt_do

    ldmfd   sp!, {r0-r12,lr}
    subs    pc,  lr, #4

rt_hw_context_switch_interrupt_do:
    mov     r1,  #0         @ clear flag
    str     r1,  [r0]

    mov     r1, sp          @ r1 point to {r0-r3} in stack
    add     sp, sp, #4*4
    ldmfd   sp!, {r4-r12,lr}@ reload saved registers
    mrs     r0,  spsr       @ get cpsr of interrupt thread
    sub     r2,  lr, #4     @ save old task's pc to r2

    @ Switch to SVC mode with no interrupt. If the usr mode guest is
    @ interrupted, this will just switch to the stack of kernel space.
    @ save the registers in kernel space won't trigger data abort.
    msr     cpsr_c, #I_Bit|F_Bit|Mode_SVC

    stmfd   sp!, {r2}       @ push old task's pc
    stmfd   sp!, {r4-r12,lr}@ push old task's lr,r12-r4
    ldmfd   r1,  {r1-r4}    @ restore r0-r3 of the interrupt thread
    stmfd   sp!, {r1-r4}    @ push old task's r0-r3
    stmfd   sp!, {r0}       @ push old task's cpsr

    ldr     r4,  =rt_interrupt_from_thread
    ldr     r5,  [r4]
    str     sp,  [r5]       @ store sp in preempted tasks's TCB

    ldr     r6,  =rt_interrupt_to_thread
    ldr     r6,  [r6]
    ldr     sp,  [r6]       @ get new task's stack pointer

    ldmfd   sp!, {r4}       @ pop new task's cpsr to spsr
    msr     spsr_cxsf, r4

    ldmfd   sp!, {r0-r12,lr,pc}^ @ pop new task's r0-r12,lr & pc, copy spsr to cpsr

.macro push_svc_reg
    sub     sp, sp, #17 * 4         @/* Sizeof(struct rt_hw_exp_stack)  */
    stmia   sp, {r0 - r12}          @/* Calling r0-r12                  */
    mov     r0, sp
    mrs     r6, spsr                @/* Save CPSR                       */
    str     lr, [r0, #15*4]         @/* Push PC                         */
    str     r6, [r0, #16*4]         @/* Push CPSR                       */
    cps     #Mode_SVC
    str     sp, [r0, #13*4]         @/* Save calling SP                 */
    str     lr, [r0, #14*4]         @/* Save calling PC                 */
.endm

    .align  5
.weak vector_swi
vector_swi:
    push_svc_reg
    bl      rt_hw_trap_swi
    b       .

    .align  5
    .globl  vector_undef
vector_undef:
    push_svc_reg
    cps #Mode_UND
    bl      rt_hw_trap_undef
#ifdef RT_USING_FPU
    ldr     lr, [sp, #15*4]
    ldmia   sp, {r0 - r12}
    add     sp, sp, #17 * 4
    movs    pc, lr
#endif
    b       .

    .align  5
    .globl  vector_pabt
vector_pabt:
    push_svc_reg
    bl      rt_hw_trap_pabt
    b       .

    .align  5
    .globl  vector_dabt
vector_dabt:
    push_svc_reg
    bl      rt_hw_trap_dabt
    b       .

    .align  5
    .globl  vector_resv
vector_resv:
    push_svc_reg
    bl      rt_hw_trap_resv
    b       .

.bss
.align 2   //align to  2~2=4
svc_stack_2:
    .space (1 << 10)
svc_stack_2_limit:

irq_stack_2:
    .space (1 << 10)
irq_stack_2_limit:

