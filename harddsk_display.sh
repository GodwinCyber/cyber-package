#!/bin/bash

echo -e "Select option from below: \n"

# -e option in echo command is used to

# enable interpretation of backslash escapes.

echo -e "\n
1 For the disk size \n
2 For the disk free and used space \n"

# to take the user input
read i

# if to check the user
if [ $i == 1 ];


# -h is used for producing human readable and

# --output is used to specify field.
then
df -h --output=source,size
elif [ $i == 2 ];


then
df -h --output=source,used,avail
fi
