.section .vectors
.code 32

.global system_vectors
system_vectors:
    ldr pc, _vector_reset

_vector_reset:
    .word reset

.section .text
.global reset
reset:
    /* 进入SVC模式 */
    mrs r0, cpsr
    bic r0, r0, #0x1f   /* 将r0寄存器中的低5位清零，也就是cpsr的M0~M4  */
    orr r0, r0, #0x13   /* r0或上0x13,表示使用SVC模式                  */
    msr cpsr, r0        /* 将r0 的数据写入到cpsr_c中                   */

    ldr sp,=0X80200000  /* 设置栈指针            */
    b main              /* 跳转到main函数        */

