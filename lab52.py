#!/usr/bin/python3

## create a script that will read the file

f=open('new.txt','r')
data=f.read()
f.close()

print(data)
