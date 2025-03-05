#!/bin/bash

# create whois script using internal variable

echo "Please enter your IP address:"
read IP

whois $Ip | grep -i country | awk '{print $NF}' | uniq
