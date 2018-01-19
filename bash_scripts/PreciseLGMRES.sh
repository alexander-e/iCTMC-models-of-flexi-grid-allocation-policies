#!/bin/bash

PYFILE=OGTime_Precise.py
METH=lgmres
# Use option -d
OUT=PreciseLGMRES_Detailed.txt
# # Use option -r
# OUT=PreciseLGMRES_Reduced.txt

for scenario in "40 2,10,50" "80 8,28,100" "120 16,50,150" "160 32,80,200"
do
	set -- $scenario
	# $1 = m1, $2 = rhomin,rhomax,numrhos
	python3 $PYFILE --method=$METH -d --m1=$1 --n2=4 --rhos=$2 --out=$OUT
done
