#!/bin/bash

#create whois script using external var
#present the user in which country it is registered/stored
echo "The IP address $1 is From: "
whois $1 | grep -i country | awk '{print $NF}' | uniq
