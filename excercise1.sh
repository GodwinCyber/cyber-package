#!/bin/bash


echo "Provide an IPs file:"
read file


for i in $(cat $file)
do 
        country=$(geoiplookup $i | awk '{print $4}' | cut -d "," -f1 )
        if [ $country == "CN" ] || [ $country == "NL" ] 
        then
                echo $i $country
        fi
done

