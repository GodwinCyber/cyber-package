#!/usr/bin/python3

import scapy.all as scapy
import sys
import time

def get_mac_address(ip_address):
	broadcast_layer = scapy.Ether(dst='ff:ff:ff:ff:ff:ff')
	arp_layer = scapy.ARP(pdst=ip_address)
	get_mac_address = broadcast_layer/arp_layer
	answer = scapy.srp(get_mac_packet, timeout=2, verbose=false)[0]
	return answer[0][1].hwsrc
	
target_ip = str(sys.agrv[2])
router_ip = str(sys.sargv[1])
target_mac = str(get_mac_address(target_ip))
router_mac = str(get_mac_address(router_ip))

print(router_mac)
print(target_mac)
