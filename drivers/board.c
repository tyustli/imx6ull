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

static void systick_irqhandler(void)
{
    rt_tick_increase();
    SystemClearSystickFlag();
}

void rt_hw_board_init(void)
{
    /* init irq table */
    SystemInitIrqTable();

    /* init systick for system tick */
    SystemSetupSystick(RT_TICK_PER_SECOND, systick_irqhandler, 30);

    /* Heap initialization */
#if defined(RT_USING_HEAP)
    rt_system_heap_init((void *)HEAP_BEGIN, (void *)HEAP_END);
#endif

    /* init uart */
#if defined(BSP_USING_UART)
    rt_hw_uart_init();
#endif

    /* set console device */
#ifdef RT_USING_CONSOLE
    rt_console_set_device(RT_CONSOLE_DEVICE_NAME);
#endif

}
