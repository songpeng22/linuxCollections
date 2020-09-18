#!/bin/bash
str=abc
for i in {1..100000}
do
   str=`cat /sys/class/devfreq/ff9a0000.gpu/load`
   echo -ne "\r$str"
   sleep 0.01
done
