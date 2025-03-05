#!/bin/bash

 msfvenom -l payload  | awk '{print $1}' | grep cmd | grep powershell | grep reverse > PayloadsNames
 echo "[*] FOUND $(cat PayloadsNames | wc -l) Payloads"

