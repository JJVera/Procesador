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
static const char *ng0 = "D:/Arquitectura/Componentes/RegisterFileMod/RegisterFile.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_2166523021_3212880686_p_0(char *t0)
{
    char t91[16];
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
    char *t72;
    char *t74;
    char *t76;
    char *t78;
    char *t80;
    char *t82;
    char *t84;
    char *t86;
    char *t87;
    char *t88;
    char *t89;
    char *t90;
    int t92;
    unsigned int t93;
    int t94;
    int t95;
    unsigned int t96;
    unsigned int t97;

LAB0:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6268U);
    t5 = (t0 + 8983);
    t7 = (t91 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 4;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t92 = (4 - 0);
    t93 = (t92 * 1);
    t93 = (t93 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t93;
    t3 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t2, t1, t5, t91);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 6236U);
    t92 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t94 = (t92 - 39);
    t93 = (t94 * -1);
    xsi_vhdl_check_range_of_index(39, 0, -1, t92);
    t96 = (32U * t93);
    t97 = (0 + t96);
    t6 = (t2 + t97);
    t7 = (t0 + 3776);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 6252U);
    t92 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t94 = (t92 - 39);
    t93 = (t94 * -1);
    xsi_vhdl_check_range_of_index(39, 0, -1, t92);
    t96 = (32U * t93);
    t97 = (0 + t96);
    t6 = (t2 + t97);
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
LAB2:    xsi_set_current_line(66, ng0);
    t1 = xsi_get_transient_memory(1280U);
    memset(t1, 0, 1280U);
    t5 = t1;
    t6 = (t0 + 7703);
    memcpy(t5, t6, 32U);
    t5 = (t5 + 32U);
    t8 = (t0 + 7735);
    memcpy(t5, t8, 32U);
    t5 = (t5 + 32U);
    t10 = (t0 + 7767);
    memcpy(t5, t10, 32U);
    t5 = (t5 + 32U);
    t12 = (t0 + 7799);
    memcpy(t5, t12, 32U);
    t5 = (t5 + 32U);
    t14 = (t0 + 7831);
    memcpy(t5, t14, 32U);
    t5 = (t5 + 32U);
    t16 = (t0 + 7863);
    memcpy(t5, t16, 32U);
    t5 = (t5 + 32U);
    t18 = (t0 + 7895);
    memcpy(t5, t18, 32U);
    t5 = (t5 + 32U);
    t20 = (t0 + 7927);
    memcpy(t5, t20, 32U);
    t5 = (t5 + 32U);
    t22 = (t0 + 7959);
    memcpy(t5, t22, 32U);
    t5 = (t5 + 32U);
    t24 = (t0 + 7991);
    memcpy(t5, t24, 32U);
    t5 = (t5 + 32U);
    t26 = (t0 + 8023);
    memcpy(t5, t26, 32U);
    t5 = (t5 + 32U);
    t28 = (t0 + 8055);
    memcpy(t5, t28, 32U);
    t5 = (t5 + 32U);
    t30 = (t0 + 8087);
    memcpy(t5, t30, 32U);
    t5 = (t5 + 32U);
    t32 = (t0 + 8119);
    memcpy(t5, t32, 32U);
    t5 = (t5 + 32U);
    t34 = (t0 + 8151);
    memcpy(t5, t34, 32U);
    t5 = (t5 + 32U);
    t36 = (t0 + 8183);
    memcpy(t5, t36, 32U);
    t5 = (t5 + 32U);
    t38 = (t0 + 8215);
    memcpy(t5, t38, 32U);
    t5 = (t5 + 32U);
    t40 = (t0 + 8247);
    memcpy(t5, t40, 32U);
    t5 = (t5 + 32U);
    t42 = (t0 + 8279);
    memcpy(t5, t42, 32U);
    t5 = (t5 + 32U);
    t44 = (t0 + 8311);
    memcpy(t5, t44, 32U);
    t5 = (t5 + 32U);
    t46 = (t0 + 8343);
    memcpy(t5, t46, 32U);
    t5 = (t5 + 32U);
    t48 = (t0 + 8375);
    memcpy(t5, t48, 32U);
    t5 = (t5 + 32U);
    t50 = (t0 + 8407);
    memcpy(t5, t50, 32U);
    t5 = (t5 + 32U);
    t52 = (t0 + 8439);
    memcpy(t5, t52, 32U);
    t5 = (t5 + 32U);
    t54 = (t0 + 8471);
    memcpy(t5, t54, 32U);
    t5 = (t5 + 32U);
    t56 = (t0 + 8503);
    memcpy(t5, t56, 32U);
    t5 = (t5 + 32U);
    t58 = (t0 + 8535);
    memcpy(t5, t58, 32U);
    t5 = (t5 + 32U);
    t60 = (t0 + 8567);
    memcpy(t5, t60, 32U);
    t5 = (t5 + 32U);
    t62 = (t0 + 8599);
    memcpy(t5, t62, 32U);
    t5 = (t5 + 32U);
    t64 = (t0 + 8631);
    memcpy(t5, t64, 32U);
    t5 = (t5 + 32U);
    t66 = (t0 + 8663);
    memcpy(t5, t66, 32U);
    t5 = (t5 + 32U);
    t68 = (t0 + 8695);
    memcpy(t5, t68, 32U);
    t5 = (t5 + 32U);
    t70 = (t0 + 8727);
    memcpy(t5, t70, 32U);
    t5 = (t5 + 32U);
    t72 = (t0 + 8759);
    memcpy(t5, t72, 32U);
    t5 = (t5 + 32U);
    t74 = (t0 + 8791);
    memcpy(t5, t74, 32U);
    t5 = (t5 + 32U);
    t76 = (t0 + 8823);
    memcpy(t5, t76, 32U);
    t5 = (t5 + 32U);
    t78 = (t0 + 8855);
    memcpy(t5, t78, 32U);
    t5 = (t5 + 32U);
    t80 = (t0 + 8887);
    memcpy(t5, t80, 32U);
    t5 = (t5 + 32U);
    t82 = (t0 + 8919);
    memcpy(t5, t82, 32U);
    t5 = (t5 + 32U);
    t84 = (t0 + 8951);
    memcpy(t5, t84, 32U);
    t86 = (t0 + 3712);
    t87 = (t86 + 56U);
    t88 = *((char **)t87);
    t89 = (t88 + 56U);
    t90 = *((char **)t89);
    memcpy(t90, t1, 1280U);
    xsi_driver_first_trans_fast(t86);
    xsi_set_current_line(78, ng0);
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
    xsi_set_current_line(79, ng0);
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

LAB5:    xsi_set_current_line(82, ng0);
    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t8 = (t0 + 1352U);
    t10 = *((char **)t8);
    t8 = (t0 + 6268U);
    t94 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t10, t8);
    t95 = (t94 - 39);
    t93 = (t95 * -1);
    t96 = (32U * t93);
    t97 = (0U + t96);
    t11 = (t0 + 3712);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 32U);
    xsi_driver_first_trans_delta(t11, t97, 32U, 0LL);
    goto LAB6;

}


extern void work_a_2166523021_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2166523021_3212880686_p_0};
	xsi_register_didat("work_a_2166523021_3212880686", "isim/tb_RegisterFile_isim_beh.exe.sim/work/a_2166523021_3212880686.didat");
	xsi_register_executes(pe);
}
