#!/bin/bash

for file in $( cat /etc/os-release | grep VERSION=)
do

echo "This is the linux version"
echo  $file

done

