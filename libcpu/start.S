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
    cpsid i                                 /* 关闭全局中断 */

    /* 关闭I,DCache和MMU 
    * 采取读-改-写的方式。
    */
    mrc     p15, 0, r0, c1, c0, 0     /* 读取CP15的C1寄存器到R0中                                */
    bic     r0,  r0, #(0x1 << 12)     /* 清除C1寄存器的bit12位(I位)，关闭I Cache                 */
    bic     r0,  r0, #(0x1 <<  2)     /* 清除C1寄存器的bit2(C位)，关闭D Cache                    */
    bic     r0,  r0, #0x2             /* 清除C1寄存器的bit1(A位)，关闭对齐                       */
    bic     r0,  r0, #(0x1 << 11)     /* 清除C1寄存器的bit11(Z位)，关闭分支预测                  */
    bic     r0,  r0, #0x1             /* 清除C1寄存器的bit0(M位)，关闭MMU                       */
    mcr     p15, 0, r0, c1, c0, 0     /* 将r0寄存器中的值写入到CP15的C1寄存器中                  */

    /* 设置各个模式下的栈指针，
    * 注意：IMX6UL的堆栈是向下增长的！
    * 堆栈指针地址一定要是4字节地址对齐的！！！
    * DDR范围:0X80000000~0X9FFFFFFF
    */
    /* 进入IRQ模式 */
    mrs r0, cpsr
    bic r0, r0, #0x1f   /* 将r0寄存器中的低5位清零，也就是cpsr的M0~M4          */
    orr r0, r0, #0x12   /* r0或上0x13,表示使用IRQ模式                         */
    msr cpsr, r0        /* 将r0 的数据写入到cpsr_c中                          */
    ldr sp, =0x80600000 /* 设置IRQ模式下的栈首地址为0X80600000,大小为2MB       */

    /* 进入SYS模式 */
    mrs r0, cpsr
    bic r0, r0, #0x1f   /* 将r0寄存器中的低5位清零，也就是cpsr的M0~M4        */
    orr r0, r0, #0x1f   /* r0或上0x13,表示使用SYS模式                       */
    msr cpsr, r0        /* 将r0 的数据写入到cpsr_c中                        */
    ldr sp, =0x80400000 /* 设置SYS模式下的栈首地址为0X80400000,大小为2MB     */

    /* 进入SVC模式 */
    mrs r0, cpsr
    bic r0, r0, #0x1f   /* 将r0寄存器中的低5位清零，也就是cpsr的M0~M4    */
    orr r0, r0, #0x13   /* r0或上0x13,表示使用SVC模式                   */
    msr cpsr, r0        /* 将r0 的数据写入到cpsr_c中                    */
    ldr sp, =0X80200000 /* 设置SVC模式下的栈首地址为0X80200000,大小为2MB */

    /* clear bss */
    mov     r0, #0
    ldr     r1, =__bss_start
    ldr     r2, =__bss_end

bss_clear_loop:
    cmp     r1, r2
    strlo   r0, [r1], #4
    blo     bss_clear_loop

    ldr     r0,=SystemInit
    blx     r0

    cpsie i             /* 打开全局中断  */

    /* start RT-Thread Kernel */
    ldr     pc, _rtthread_startup
_rtthread_startup:
    .word  entry

    /* 中断 */
    .align  5
vector_undef:
    b       .

    .align 5
vector_swi:
    b       .

    .align  5
vector_pabt:
    b       .

    .align  5
vector_dabt:
    b       .

    .align  5
vector_resv:
    b       .


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
#ifdef RT_USING_SMP
    clrex

    stmfd   sp!, {r0, r1}
    cps     #Mode_SVC
    mov     r0, sp          /* svc_sp */
    mov     r1, lr          /* svc_lr */

    cps     #Mode_IRQ
    sub     lr, #4
    stmfd   r0!, {r1, lr}       /* svc_lr, svc_pc */
    stmfd   r0!, {r2 - r12}
    ldmfd   sp!, {r1, r2}     /* original r0, r1 */
    stmfd   r0!, {r1 - r2}
    mrs     r1,  spsr         /* original mode */
    stmfd   r0!, {r1}

#ifdef RT_USING_LWP
    stmfd   r0, {r13, r14}^ /* usr_sp, usr_lr */
    sub   r0, #8
#endif
#ifdef RT_USING_FPU
    /* fpu context */
    vmrs r6, fpexc
    tst  r6, #(1<<30)
    beq 1f
    vstmdb r0!, {d0-d15}
    vstmdb r0!, {d16-d31}
    vmrs r5, fpscr
    stmfd r0!, {r5}
1:
    stmfd r0!, {r6}
#endif

    /* now irq stack is clean */
    /* r0 is task svc_sp */
    /* backup r0 -> r8 */
    mov r8, r0

    bl      rt_interrupt_enter
    bl      rt_hw_trap_irq
    bl      rt_interrupt_leave

    cps     #Mode_SVC
    mov     sp, r8
    mov     r0, r8
    bl      rt_scheduler_do_irq_switch

    b       rt_hw_context_switch_exit

#else
    stmfd   sp!, {r0-r12,lr}

    bl      rt_interrupt_enter
    bl      rt_hw_trap_irq
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

#ifdef RT_USING_LWP
    stmfd sp, {r13, r14}^  @push usr_sp, usr_lr
    sub sp, #8
#endif
#ifdef RT_USING_FPU
    /* fpu context */
    vmrs r6, fpexc
    tst  r6, #(1<<30)
    beq 1f
    vstmdb sp!, {d0-d15}
    vstmdb sp!, {d16-d31}
    vmrs r5, fpscr
    stmfd sp!, {r5}
1:
    stmfd sp!, {r6}
#endif

    ldr     r4,  =rt_interrupt_from_thread
    ldr     r5,  [r4]
    str     sp,  [r5]       @ store sp in preempted tasks's TCB

    ldr     r6,  =rt_interrupt_to_thread
    ldr     r6,  [r6]
    ldr     sp,  [r6]       @ get new task's stack pointer

#ifdef RT_USING_FPU
/* fpu context */
    ldmfd sp!, {r6}
    vmsr fpexc, r6
    tst  r6, #(1<<30)
    beq 1f
    ldmfd sp!, {r5}
    vmsr fpscr, r5
    vldmia sp!, {d16-d31}
    vldmia sp!, {d0-d15}
1:
#endif

#ifdef RT_USING_LWP
    ldmfd sp, {r13, r14}^  @pop usr_sp, usr_lr
    add sp, #8
#endif

    ldmfd   sp!, {r4}       @ pop new task's cpsr to spsr
    msr     spsr_cxsf, r4

    ldmfd   sp!, {r0-r12,lr,pc}^ @ pop new task's r0-r12,lr & pc, copy spsr to cpsr

#endif

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
vector_fiq:
    stmfd   sp!,{r0-r7,lr}
    bl      rt_hw_trap_fiq
    ldmfd   sp!,{r0-r7,lr}
    subs    pc, lr, #4