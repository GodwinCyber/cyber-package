#!/bin/bash
read -p "CPU Usage on `date`"

echo $(top | grep Cpu)/r

sleep 10
