#!/bin/bash

# 16. Create a script that runs a for loop and echoes 
# this is my loop' 100 times into a file; 
# find the MD5 hash of the created file.

#rm -rf md5.txt
for i in {1..100};do echo "this is my loop";done > md5.txt

md5sum  md5.txt
#echo -n "(cat(md5.txt))" | openssl md5
