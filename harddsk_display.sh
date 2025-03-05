#!/bin/bash

echo -e "Select option from below: \n"

echo -e "\n
1 For the disk size \n
2 For the disk free and used space \n"

read i
if [ $i == 1 ];

then
df -h --output=source,size
elif [ $i == 2 ];


then
df -h --output=source,used,avail
fi
