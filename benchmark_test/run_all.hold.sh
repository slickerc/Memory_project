#!/bin/bash

./run_parse.py --sp write0_hold.sp --out_dir csv.hold.out
./run_parse.py --sp write1_hold.sp --out_dir csv.hold.out
#hspice -hdlpath ../code/ -i test1.sp -o test1

