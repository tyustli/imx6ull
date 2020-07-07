/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2020-07-02     tyustli   first version
 */

#include <rthw.h>
#include <rtthread.h>
#include "board.h"

#if defined(BSP_USING_UART)
#include "drv_uart.h"
#endif

static void epit1_irqhandler(void)
{
    static unsigned char state = 0;

    state = !state;
    if (EPIT1->SR & (1 << 0)) /* 判断比较事件发生 */
    {
        rt_tick_increase();
    }

    EPIT1->SR |= 1 << 0; /* 清除中断标志位 */
}

static void epit1_init(unsigned int frac, unsigned int value)
{
    if (frac > 0XFFF)
        frac = 0XFFF;

    EPIT1->CR = 0; /* 先清零CR寄存器 */

    /*
     * CR寄存器:
     * bit25:24 01 时钟源选择Peripheral clock=66MHz
     * bit15:4  frac 分频值
     * bit3:	1  当计数器到0的话从LR重新加载数值
     * bit2:	1  比较中断使能
     * bit1:    1  初始计数值来源于LR寄存器值
     * bit0:    0  先关闭EPIT1
     */
    EPIT1->CR = (1 << 24 | frac << 4 | 1 << 3 | 1 << 2 | 1 << 1);

    EPIT1->LR = value; /* 倒计数值 */
    EPIT1->CMPR = 0;   /* 比较寄存器，当计数器值和此寄存器值相等的话就会产生中断 */

    /* 使能GIC中对应的中断 */
    GIC_EnableIRQ(EPIT1_IRQn);

    /* 注册中断服务函数 */
    SystemInstallIrqHandler(EPIT1_IRQn, (system_irq_handler_t)epit1_irqhandler, NULL);

    EPIT1->CR |= 1 << 0; /* 使能EPIT1 */
}

void rt_hw_board_init(void)
{
    SystemInitIrqTable();
    epit1_init(0, 66000000 / RT_TICK_PER_SECOND);

    /* Heap initialization */
#if defined(RT_USING_HEAP)
    rt_system_heap_init((void *)HEAP_BEGIN, (void *)HEAP_END);
#endif

#if defined(BSP_USING_UART)
    rt_hw_uart_init();
#endif
}
