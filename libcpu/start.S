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
    ldr pc, _vector_reset
    ldr pc, _vector_undef
    ldr pc, _vector_swi
    ldr pc, _vector_pabt
    ldr pc, _vector_dabt
    ldr pc, _vector_resv
    ldr pc, _vector_irq
    ldr pc, _vector_fiq

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
    /* 进入SVC模式 */
    mrs r0, cpsr
    bic r0, r0, #Mode_SYS    /* 将r0寄存器中的低5位清零，也就是cpsr的M0~M4  */
    orr r0, r0, #Mode_SVC    /* r0或上0x13,表示使用SVC模式                  */
    msr cpsr, r0             /* 将r0 的数据写入到cpsr_c中                   */

    ldr sp,=0X80200000  /* 设置栈指针            */
    b main              /* 跳转到main函数        */

    /* 中断 */
    .align  5
vector_fiq:
    b       .

    .align  5
vector_irq:
    b       .

    .align 5
vector_swi:
    b       .

    .align  5
vector_undef:
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
