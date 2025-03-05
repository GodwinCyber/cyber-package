#!/bin/bash

#function + if condition

function good()
{
	echo "good age"
}

function better()
{
	echo "better age"
}

read -p "Please Enter Your age: " age

if [ "$age" == "30" ]
then 
good age
fi

if [ "$age" == "40" ]
then
better age
fi
