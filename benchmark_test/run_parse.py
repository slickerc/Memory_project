#!/usr/bin/python3

import os
import argparse
import subprocess
import sys
import re

def build_argparser():
	parser = argparse.ArgumentParser(description='Run hspice and parse output .lis file')
	parser.add_argument("--sp", help="Input .sp file to run hspice with.")
	parser.add_argument("--out_dir", help="Output Dir to dump CSV files")
	return parser

argparser = build_argparser()
args = argparser.parse_args()

if not args.sp.endswith("sp"):
	sys.exit("(E) - Not a valid input file.")	
else:
	out = args.sp.split(".sp")[0]
	lis = out+".lis"

cmd = "rm -rf *pa0 *ic0 *tr0 *st0 *valog *pvadir *lis *csv"
return_val = subprocess.call(cmd, shell=True)
cmd = "hspice -hdlpath ../code/ -i "+args.sp+" -o "+out
return_val = subprocess.call(cmd, shell=True)
return_val = subprocess.call(cmd, shell=True)


if not os.path.isdir(args.out_dir):
	os.mkdir(args.out_dir)

lis_file = open(lis, "r")
start = 0
skip = 0
y_title = ""
for line in lis_file:
	if "time" in line:
		if line.rstrip().split()[0] == "time":
			out_csv = open(out+".csv", "w")
			skip = 2
			start = 1
	elif skip > 0:
		skip = skip - 1 
		continue
	elif start == 1:
		if line.startswith("y") or line.rstrip() == "":
			start=0
			out_csv.close()
		else:
			tokens = line.rstrip().split()
			if tokens[0][0].isdigit():
				if "+" in tokens[1] or tokens[1].endswith("-"):
					temp = re.split("[^0-9\.]+$", tokens[1])
					x_val = tokens[0]
					y_val = temp[0]
				else:
					x_val = tokens[0]
					y_val = tokens[1]
				out_csv.write("{}, {}\n".format(x_val, y_val))
lis_file.close()


cmd = "cp "+out+".csv "+args.out_dir
return_val = subprocess.call(cmd, shell=True)
cmd = "rm -rf *pa0 *ic0 *tr0 *st0 *valog *pvadir *lis *csv"
return_val = subprocess.call(cmd, shell=True)

