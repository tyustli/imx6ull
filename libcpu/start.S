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

    /* setup stack */
    bl      stack_setup

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
    push {lr}                   /* 保存lr地址 */
    push {r0-r3, r12}           /* 保存r0-r3，r12寄存器 */

    mrs r0, spsr                 /* 读取spsr寄存器 */
    push {r0}                    /* 保存spsr寄存器 */

    mrc p15, 4, r1, c15, c0, 0 /* 从CP15的C0寄存器内的值到R1寄存器中
                                * 参考文档ARM Cortex-A(armV7)编程手册V4.0.pdf P49
                                * Cortex-A7 Technical ReferenceManua.pdf P68 P138
                                */
    add r1, r1, #0X2000         /* GIC基地址加0X2000，也就是GIC的CPU接口端基地址 */
    ldr r0, [r1, #0XC]          /* GIC的CPU接口端基地址加0X0C就是GICC_IAR寄存器，
                                * GICC_IAR寄存器保存这当前发生中断的中断号，我们要根据
                                * 这个中断号来绝对调用哪个中断服务函数
                                */
    push {r0, r1}               /* 保存r0,r1 */

    cps #0x13                   /* 进入SVC模式，允许其他中断再次进去 */

    push {lr}                   /* 保存SVC模式的lr寄存器 */
    ldr r2, =rt_hw_trap_irq     /* 加载C语言中断处理函数到r2寄存器中*/
    blx r2                      /* 运行C语言中断处理函数，带有一个参数，保存在R0寄存器中 */

    pop {lr}                    /* 执行完C语言中断服务函数，lr出栈 */
    cps #0x12                   /* 进入IRQ模式 */
    pop {r0, r1}
    str r0, [r1, #0X10]         /* 中断执行完成，写EOIR */

    pop {r0}
    msr spsr_cxsf, r0           /* 恢复spsr */

    pop {r0-r3, r12}            /* r0-r3,r12出栈 */
    pop {lr}                    /* lr出栈 */

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

#ifdef RT_USING_SMP
.global set_secondary_cpu_boot_address
set_secondary_cpu_boot_address:
    ldr r0, =secondary_cpu_start

    mvn r1, #0 //0xffffffff
    ldr r2, =0x10000034
    str r1, [r2]
    str r0, [r2, #-4]
    mov pc, lr

.global secondary_cpu_start
secondary_cpu_start:

#ifdef RT_USING_FPU
    mov r4, #0xfffffff
    mcr p15, 0, r4, c1, c0, 2
#endif

    mrc p15, 0, r1, c1, c0, 1
    mov r0, #(1<<6)
    orr r1, r0
    mcr p15, 0, r1, c1, c0, 1 //enable smp

    mrc p15, 0, r0, c1, c0, 0
    bic r0, #(1<<13)
    mcr p15, 0, r0, c1, c0, 0

#ifdef RT_USING_FPU
    cps #Mode_UND
    ldr sp, =und_stack_2_limit
#endif

    cps #Mode_IRQ
    ldr sp, =irq_stack_2_limit

    cps #Mode_FIQ
    ldr sp, =irq_stack_2_limit

    cps #Mode_SVC
    ldr sp, =svc_stack_2_limit

    /* initialize the mmu table and enable mmu */
    bl rt_hw_mmu_init

    b secondary_cpu_c_start
#endif

.bss
.align 2   //align to  2~2=4
svc_stack_2:
    .space (1 << 10)
svc_stack_2_limit:

irq_stack_2:
    .space (1 << 10)
irq_stack_2_limit:

#ifdef RT_USING_FPU
und_stack_2:
    .space (1 << 10)
und_stack_2_limit:
#endif
