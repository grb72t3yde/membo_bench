#!/bin/bash

hour=$1
min=$2
sec=$3

while [ $hour -ge 0 ]
do
     while [ $min -ge 0 ]
     do
         while [ $sec -ge 0 ]
         do
             #echo -ne "$min:$sec\033[O\r"
             let "sec=sec-1"
             sleep 1
         done
         sec=59
         let "min=min-1"
     done
     min=59
     let "hour=hour-1"
done
