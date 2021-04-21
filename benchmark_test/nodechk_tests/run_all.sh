#!/bin/bash
hspice -hdlpath ../../code/ -i case1.sp -o case1
hspice -hdlpath ../../code/ -i case2.sp -o case2
hspice -hdlpath ../../code/ -i case3.sp -o case3
hspice -hdlpath ../../code/ -i case4.sp -o case4
hspice -hdlpath ../../code/ -i case5.sp -o case5
hspice -hdlpath ../../code/ -i case6.sp -o case6
hspice -hdlpath ../../code/ -i case7.sp -o case7
hspice -hdlpath ../../code/ -i case8.sp -o case8
hspice -hdlpath ../../code/ -i case9.sp -o case9
hspice -hdlpath ../../code/ -i case10.sp -o case10
hspice -hdlpath ../../code/ -i case11.sp -o case11
hspice -hdlpath ../../code/ -i case12.sp -o case12
hspice -hdlpath ../../code/ -i case13.sp -o case13
hspice -hdlpath ../../code/ -i case14.sp -o case14
hspice -hdlpath ../../code/ -i case15.sp -o case15
hspice -hdlpath ../../code/ -i case16.sp -o case16
rm -f *.ac* *.ic* *.pa* *.st* *.val *.sw* *.tr* *.sc* *.mt* *.ma* sxcmd.log acsymm.sp acsymm.lis *.out *.ms* *.valog
rm -rf *.pvadir *.ahdlSimDB
