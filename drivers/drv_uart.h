/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2020-07-02     tyustli   first version
 */

#ifndef __DRV_UART_H__
#define __DRV_UART_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <rtthread.h>
#include <rtdevice.h>
#include <rthw.h>
#include "board.h"

int rt_hw_uart_init(void);

#ifdef __cplusplus
}
#endif

#endif  /* __DRV_UART_H__ */

/*************************** end of file *******************************/
