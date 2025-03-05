#!/usr/bin/python3

# create a script to read file and count the number of line it contains

counter = 0

f = open('new.txt','r')

for i in f:
	print(i)
	counter = counter+ 1
	
f.close()
print("This file has : " ,counter)


# instaed of using data=f.read, a for loop was called which will all do 
# the same trick. it more of manipulating but they are same result.
