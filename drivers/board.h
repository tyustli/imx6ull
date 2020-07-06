/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2020-07-02     tyustli   first version
 */

#ifndef _BOARD_H_
#define _BOARD_H_
#include "fsl_common.h"
#include "fsl_iomuxc.h"
#include "MCIMX6Y2.h"

extern unsigned char __bss_end;
#define HEAP_BEGIN    (void*)&__bss_end
#define HEAP_END      (void*)( 0x80000000 + 256 * 1024 * 1024)

void rt_hw_board_init(void);

#endif
