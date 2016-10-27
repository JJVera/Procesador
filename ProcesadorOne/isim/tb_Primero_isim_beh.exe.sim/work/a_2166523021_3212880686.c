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
static const char *ng0 = "C:/Users/utp.CRIE/Desktop/Arquitectura/Componentes/RegisterFile/RegisterFile.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_2166523021_3212880686_p_0(char *t0)
{
    char t75[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t20;
    char *t22;
    char *t24;
    char *t26;
    char *t28;
    char *t30;
    char *t32;
    char *t34;
    char *t36;
    char *t38;
    char *t40;
    char *t42;
    char *t44;
    char *t46;
    char *t48;
    char *t50;
    char *t52;
    char *t54;
    char *t56;
    char *t58;
    char *t60;
    char *t62;
    char *t64;
    char *t66;
    char *t68;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    int t76;
    unsigned int t77;
    int t78;
    int t79;
    unsigned int t80;
    unsigned int t81;

LAB0:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6488U);
    t5 = (t0 + 8688);
    t7 = (t75 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 4;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t76 = (4 - 0);
    t77 = (t76 * 1);
    t77 = (t77 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t77;
    t3 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t2, t1, t5, t75);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 6456U);
    t76 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t78 = (t76 - 31);
    t77 = (t78 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t76);
    t80 = (32U * t77);
    t81 = (0 + t80);
    t6 = (t2 + t81);
    t7 = (t0 + 3776);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t1 = (t0 + 6472U);
    t76 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t78 = (t76 - 31);
    t77 = (t78 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t76);
    t80 = (32U * t77);
    t81 = (0 + t80);
    t6 = (t2 + t81);
    t7 = (t0 + 3840);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);

LAB3:    t1 = (t0 + 3632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(64, ng0);
    t1 = xsi_get_transient_memory(1024U);
    memset(t1, 0, 1024U);
    t5 = t1;
    t6 = (t0 + 7664);
    memcpy(t5, t6, 32U);
    t5 = (t5 + 32U);
    t8 = (t0 + 7696);
    memcpy(t5, t8, 32U);
    t5 = (t5 + 32U);
    t10 = (t0 + 7728);
    memcpy(t5, t10, 32U);
    t5 = (t5 + 32U);
    t12 = (t0 + 7760);
    memcpy(t5, t12, 32U);
    t5 = (t5 + 32U);
    t14 = (t0 + 7792);
    memcpy(t5, t14, 32U);
    t5 = (t5 + 32U);
    t16 = (t0 + 7824);
    memcpy(t5, t16, 32U);
    t5 = (t5 + 32U);
    t18 = (t0 + 7856);
    memcpy(t5, t18, 32U);
    t5 = (t5 + 32U);
    t20 = (t0 + 7888);
    memcpy(t5, t20, 32U);
    t5 = (t5 + 32U);
    t22 = (t0 + 7920);
    memcpy(t5, t22, 32U);
    t5 = (t5 + 32U);
    t24 = (t0 + 7952);
    memcpy(t5, t24, 32U);
    t5 = (t5 + 32U);
    t26 = (t0 + 7984);
    memcpy(t5, t26, 32U);
    t5 = (t5 + 32U);
    t28 = (t0 + 8016);
    memcpy(t5, t28, 32U);
    t5 = (t5 + 32U);
    t30 = (t0 + 8048);
    memcpy(t5, t30, 32U);
    t5 = (t5 + 32U);
    t32 = (t0 + 8080);
    memcpy(t5, t32, 32U);
    t5 = (t5 + 32U);
    t34 = (t0 + 8112);
    memcpy(t5, t34, 32U);
    t5 = (t5 + 32U);
    t36 = (t0 + 8144);
    memcpy(t5, t36, 32U);
    t5 = (t5 + 32U);
    t38 = (t0 + 8176);
    memcpy(t5, t38, 32U);
    t5 = (t5 + 32U);
    t40 = (t0 + 8208);
    memcpy(t5, t40, 32U);
    t5 = (t5 + 32U);
    t42 = (t0 + 8240);
    memcpy(t5, t42, 32U);
    t5 = (t5 + 32U);
    t44 = (t0 + 8272);
    memcpy(t5, t44, 32U);
    t5 = (t5 + 32U);
    t46 = (t0 + 8304);
    memcpy(t5, t46, 32U);
    t5 = (t5 + 32U);
    t48 = (t0 + 8336);
    memcpy(t5, t48, 32U);
    t5 = (t5 + 32U);
    t50 = (t0 + 8368);
    memcpy(t5, t50, 32U);
    t5 = (t5 + 32U);
    t52 = (t0 + 8400);
    memcpy(t5, t52, 32U);
    t5 = (t5 + 32U);
    t54 = (t0 + 8432);
    memcpy(t5, t54, 32U);
    t5 = (t5 + 32U);
    t56 = (t0 + 8464);
    memcpy(t5, t56, 32U);
    t5 = (t5 + 32U);
    t58 = (t0 + 8496);
    memcpy(t5, t58, 32U);
    t5 = (t5 + 32U);
    t60 = (t0 + 8528);
    memcpy(t5, t60, 32U);
    t5 = (t5 + 32U);
    t62 = (t0 + 8560);
    memcpy(t5, t62, 32U);
    t5 = (t5 + 32U);
    t64 = (t0 + 8592);
    memcpy(t5, t64, 32U);
    t5 = (t5 + 32U);
    t66 = (t0 + 8624);
    memcpy(t5, t66, 32U);
    t5 = (t5 + 32U);
    t68 = (t0 + 8656);
    memcpy(t5, t68, 32U);
    t70 = (t0 + 3712);
    t71 = (t70 + 56U);
    t72 = *((char **)t71);
    t73 = (t72 + 56U);
    t74 = *((char **)t73);
    memcpy(t74, t1, 1024U);
    xsi_driver_first_trans_fast(t70);
    xsi_set_current_line(74, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 3776);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(75, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 3840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(78, ng0);
    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t8 = (t0 + 1512U);
    t10 = *((char **)t8);
    t8 = (t0 + 6488U);
    t78 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t10, t8);
    t79 = (t78 - 31);
    t77 = (t79 * -1);
    t80 = (32U * t77);
    t81 = (0U + t80);
    t11 = (t0 + 3712);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 32U);
    xsi_driver_first_trans_delta(t11, t81, 32U, 0LL);
    goto LAB6;

}


extern void work_a_2166523021_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2166523021_3212880686_p_0};
	xsi_register_didat("work_a_2166523021_3212880686", "isim/tb_Primero_isim_beh.exe.sim/work/a_2166523021_3212880686.didat");
	xsi_register_executes(pe);
}
