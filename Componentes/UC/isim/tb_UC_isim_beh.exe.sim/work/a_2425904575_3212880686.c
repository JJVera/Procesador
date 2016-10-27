/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Arquitectura/Componentes/UC/UC.vhd";



static void work_a_2425904575_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4544);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB5:
LAB4:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 4621);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(48, ng0);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 4546);
    t8 = xsi_mem_cmp(t5, t6, 6U);
    if (t8 == 1)
        goto LAB8;

LAB17:    t9 = (t0 + 4552);
    t11 = xsi_mem_cmp(t9, t6, 6U);
    if (t11 == 1)
        goto LAB9;

LAB18:    t12 = (t0 + 4558);
    t14 = xsi_mem_cmp(t12, t6, 6U);
    if (t14 == 1)
        goto LAB10;

LAB19:    t15 = (t0 + 4564);
    t17 = xsi_mem_cmp(t15, t6, 6U);
    if (t17 == 1)
        goto LAB11;

LAB20:    t18 = (t0 + 4570);
    t20 = xsi_mem_cmp(t18, t6, 6U);
    if (t20 == 1)
        goto LAB12;

LAB21:    t21 = (t0 + 4576);
    t23 = xsi_mem_cmp(t21, t6, 6U);
    if (t23 == 1)
        goto LAB13;

LAB22:    t24 = (t0 + 4582);
    t26 = xsi_mem_cmp(t24, t6, 6U);
    if (t26 == 1)
        goto LAB14;

LAB23:    t27 = (t0 + 4588);
    t29 = xsi_mem_cmp(t27, t6, 6U);
    if (t29 == 1)
        goto LAB15;

LAB24:
LAB16:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 4618);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);

LAB7:    goto LAB2;

LAB6:;
LAB8:    xsi_set_current_line(49, ng0);
    t30 = (t0 + 4594);
    t32 = (t0 + 2912);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t30, 3U);
    xsi_driver_first_trans_fast_port(t32);
    goto LAB7;

LAB9:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 4597);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB7;

LAB10:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 4600);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB7;

LAB11:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 4603);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB7;

LAB12:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 4606);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB7;

LAB13:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 4609);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB7;

LAB14:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4612);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB7;

LAB15:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 4615);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB7;

LAB25:;
}


extern void work_a_2425904575_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2425904575_3212880686_p_0};
	xsi_register_didat("work_a_2425904575_3212880686", "isim/tb_UC_isim_beh.exe.sim/work/a_2425904575_3212880686.didat");
	xsi_register_executes(pe);
}
