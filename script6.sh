#!/bin/bash

#basic if statement 

echo "Please enter your password"
read password
if [ "$password" != "12345" ]
then
echo "password is wrong"
echo "Please try again"
exit
fi
echo "password is corrcet"
echo "You are welcome"
