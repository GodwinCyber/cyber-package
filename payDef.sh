#!/bin/bash

msfvenom -l payload  | awk '{print $1}' | grep cmd | grep powershell | grep reverse > payloadnames
echo "[*] $(msfvenom -l payload  | awk '{print $1}' | grep cmd | grep powershell | grep reverse | wc -l) found "

