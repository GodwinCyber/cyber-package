#!/bin/bash

# Get from the user a domain
read -p "Enter Domain Nmae: " DOMAIN
# Print to the user all the ports and services running on the IP address.
whois $DOMAIN

nmap -F $DOMAIN
# Print whois information
