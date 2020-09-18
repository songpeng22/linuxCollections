#!/bin/bash
xset s off &
stress --cpu 50 --io 16 --vm 1 --vm-bytes 512M &
while true
do
glmark2-es2 &
glmark2-es2 &
glmark2-es2 &
glmark2-es2 &
glmark2-es2
done
