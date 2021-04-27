#!/bin/bash

./run_parse.py --sp write0.sp
./run_parse.py --sp write1.sp
./run_parse.py --sp write0_read.sp
./run_parse.py --sp write1_read.sp
./run_parse.py --sp write0_hold.sp
./run_parse.py --sp write1_hold.sp
#hspice -hdlpath ../code/ -i test1.sp -o test1

