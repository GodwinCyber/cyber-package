#!/bin/bash

# 1. display the IP of the attacker during failed attempt
# 2. display the country of the IP
# 3. alert when failed attempt
ln=0
loc=auth.log

# to record live event on /var/log/auth.log: you can include this in yuour testig for live recording

while true
do

	for i in $(cat $loc | awk "NR>$ln" | grep Failed | awk '{print $(NF-3)}')
	do
		ln=$(cat $loc | wc -l)
		c=$(geoiplookup $i | awk '{$1=$2=$3=$4="";print $0 }'| sed 's/ //g')
		echo "[!] Alert: BF detected [date: $(date)] [IP: $i] [Country: $c]"



	done
	sleep 2
done
