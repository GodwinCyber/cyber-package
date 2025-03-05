#!/bin/bash

echo "Enter the IP file: "
read file

for i in $(cat $file)
do 
         country=$(whois $i | grep -i country | head -1 | awk '{print $2}')
         if [ $country == "CN" ] || [ $country == "NL" ]
         then
              echo $i $country
         fi
done
