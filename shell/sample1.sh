#!/bin/bash

############
#Shell script to find numbers divisible by 3 and 5, but not 15
#divisible by 3, divisible by 5, but not 3*5
############

for i in {1..100}; do

if ([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]) && [ `expr $i % 15` != 0 ]);
then
	echo $i
fi;

done

##############

######
#shell script to write the number of s in mississippi
######

x = mississippi

grep -o "s" <<<"$x" | wc -l

