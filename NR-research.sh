#!/bin/bash

function MakeMeAnonymous
{
	cd /root/nipe && perl nipe.pl restart
	CheckAnonymous
}
#1.4 If the network connection is anonymous, display the spoofed country name
function CheckAnonymous
{
	if [ -z "$(geoiplookup $(curl -s ifconfig.me) | grep NG)" ]
	then
		echo -n " [*] You are anonymous!!..Spoofed Country name is:"
		echo "$(geoiplookup $(curl -s ifconfig.me) | awk '{print $5 " " $6}')"
	else 
		echo " [*] You are not anonymous!!!.."
		MakeMeAnonymous
	fi
2>/dev/nul
}
CheckAnonymous
# creating a directory where all the file will be saved
sshpass -p 'kali' ssh -o StrictHostKEyChecking=no kali@192.168.121.174 'mkdir /home/kali/enum'

# 1.5 Allow the user to specify the Domain/IP Address; save into a variable

echo "[*] Enter an IP to sacn: "
read IP

# 2.1 Display the details of the remote server (country, IP, and Uptime)
echo -n " [*] The country is: " 
sshpass -p 'kali' ssh -o StrictHostKEyChecking=no kali@192.168.121.174 "whois $IP | grep -i country > /home/kali/enum/whois.txt"

echo " "

echo -n "[*] You IP address is: "
sshpass -p 'kali' ssh -o StrictHostKEyChecking=no kali@192.168.121.174 "curl -s ifconfig.me > /home/kali/enum/IP.txt"

echo " "

echo -n "[*] Your server uptime is: "
sshpass -p 'kali' ssh -o StrictHostKEyChecking=no kali@192.168.121.174 "uptime > /home/kali/enum/uptime.txt"

echo " "

# 2.2 Get the remote server to check the Whois of the given address
sshpass -p 'kali' ssh -o StrictHostKEyChecking=no kali@192.168.121.174 "whois $IP | grep -i country > /home/kali/enum/country.txt"

echo " "

# 2.3 Get the remote server to scan for open ports on the given address
echo -n "[*] Open port of the nmap: "
sshpass -p 'kali' ssh -o StrictHostKEyChecking=no kali@192.168.121.174 "nmap $IP -F -sV -oG nmap.grep | grep open > /home/kali/enum/nmap.grep"

echo " "

echo -n "[*] The server date is: "
sshpass -p 'kali' ssh -o StrictHostKEyChecking=no kali@192.168.121.174 "date >/home/kali/enum/date.txt"

echo " "

echo -n "[*] The server IP is: "
sshpass -p 'kali' ssh -o StrictHostKEyChecking=no kali@192.168.121.174 "ifconfig | grep -i inet > /home/kali/enum/ifconfig.txt"

# 3.1 Save the Whois and Nmap data into files on the local computer
# 3.2 Create a log and audit your data collecting
sshpass -p 'kali' ssh -o StrictHostKEyChecking=no kali@192.168.121.174: /home/kali/enum* /home/kali/
