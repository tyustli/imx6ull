/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2020-07-02     tyustli   first version
 */

#ifndef __DRV_UART_H
#define __DRV_UART_H

#ifdef __cplusplus
extern "C" {
#endif

#include "board.h"
#include "fsl_uart.h"

int rt_hw_uart_init(void);

#ifdef __cplusplus
}
#endif

#endif  /* __DRV_UART_H */

/*************************** end of file *******************************/
