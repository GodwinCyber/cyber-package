#!/bin/bash


IFS=$'\n'
loc=auth.log
for i in $(cat $loc | awk '{print $1,$2,$3}')
do
	echo " [!] $(date -d $i +%s)"
done
