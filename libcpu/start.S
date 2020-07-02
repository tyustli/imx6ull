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

    cpsie i             /* 打开全局中断  */

    b main              /* 跳转到main函数  */

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
    b       .

    .align  5
vector_fiq:
    b       .
