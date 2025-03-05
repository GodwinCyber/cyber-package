#!/bin/bash

# I want to run a script that will get my external IP and present to me which country I'm from 

whois $(curl -s ifconfig.co) | grep -i country | uniq 

