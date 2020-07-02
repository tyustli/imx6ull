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
/* Those varibles will be accessed in ISR, so we need to share them. */
rt_uint32_t rt_interrupt_from_thread = 0;
rt_uint32_t rt_interrupt_to_thread = 0;
rt_uint32_t rt_thread_switch_interrupt_flag = 0;
