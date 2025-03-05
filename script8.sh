#!/bin/bash

#function + if condition
function old()
{
   echo "old age"
}

function young()
{
	echo "young age"
}

read -p "Enter Your age:" age  #How to combine read and echo together

if [ "$age" -gt "79" ]
then 
echo "old age"

else
echo "young age"
fi


