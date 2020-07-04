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
    .word  main

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

    .align  5
vector_irq:
    push {lr}                   /* 保存lr地址 */
    push {r0-r3, r12}           /* 保存r0-r3，r12寄存器 */

    mrs r0, spsr                /* 读取spsr寄存器 */
    push {r0}                   /* 保存spsr寄存器 */

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
    ldr r2, =SystemIrqHandler  /* 加载C语言中断处理函数到r2寄存器中*/
    blx r2                      /* 运行C语言中断处理函数，带有一个参数，保存在R0寄存器中 */

    pop {lr}                    /* 执行完C语言中断服务函数，lr出栈 */
    cps #0x12                   /* 进入IRQ模式 */
    pop {r0, r1}
    str r0, [r1, #0X10]         /* 中断执行完成，写EOIR */

    pop {r0}
    msr spsr_cxsf, r0          /* 恢复spsr */

    pop {r0-r3, r12}           /* r0-r3,r12出栈 */
    pop {lr}                   /* lr出栈 */
    subs pc, lr, #4            /* 将lr-4赋给pc */

    .align  5
vector_fiq:
    b       .
