#!/bin/bash

#./run_parse.py --sp write0_read.sp --out_dir csv.read.out
#./run_parse.py --sp write1_read.sp --out_dir csv.read.out
#./run_parse.py --sp write0_read.4ms.sp --out_dir csv.read.out
#./run_parse.py --sp write1_read.4ms.sp --out_dir csv.read.out
#./run_parse.py --sp write0_read.2ms.sp --out_dir csv.read.out
#./run_parse.py --sp write1_read.2ms.sp --out_dir csv.read.out
./run_parse.py --sp write0_read.1ms.sp --out_dir csv.read.out
./run_parse.py --sp write1_read.1ms.sp --out_dir csv.read.out
./run_parse.py --sp write0_read.500us.sp --out_dir csv.read.out
./run_parse.py --sp write1_read.500us.sp --out_dir csv.read.out
#hspice -hdlpath ../code/ -i test1.sp -o test1

