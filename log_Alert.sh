#!/bin/bash

# 1. display the IP of the attacker during failed attempt
# 2. display the country of the IP
# 3. alert when failed attempt

ln=0 #ln = line number and NR=Number rolls
loc=auth.log #loc= location of the file of the directory such /var/log/auth.log

#In order to record live attack on the log: /var/log/auth.log, I will introduce while loop

while true
do
	for i in $(cat $loc | awk "NR>$ln" | grep Failed | awk '{print $(NF-3)}')
	do 
		ln=$(cat $loc | wc -l)
		c=$(geoiplookup $i | awk '{$1=$2=$3=$4=""; print $0}' | sed 's/ //g')
		echo "[!] Alert BF: Detected [date: $(date)] [IP: $i] [Country: $c]" #BF= Brute force

	done
	sleep 2
done
