#!/bin/bash

# Create a script that wull get IPs from a user and print each one of them the country the are from 
for IP in $(cat IPs.lst)
do


echo $IP
whois $IP |grep -i country
sleep 2 #sleep in every 2 secound
done
