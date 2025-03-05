#!/bin/bash

echo -e "Select option from below
to display each IPs: \n"

echo -e "\n
1 For the private IP_address \n
2 For the Externa IP_address \n
3 For the default gateway \n"

read ip

if [ $ip == 1 ];


then
ifconfig | grep broadcast | cut -d "," -f2 | awk '{print $2}'
elif [ $ip == 2 ];


then
curl ifconfig.me -s
elif [ $ip == 3 ]

then
route -n | grep UG | awk '{print $2}' | cut -d "," -f2
fi
