#!/usr/bin/python3

#  Create a function to read num3.lst and sum all the numbers 
# that can be divided by 7.

f=open('num3.lst','r')
def numbers():
	counter=0
	for numbers in f.readlines():
		if int(numbers)%7 == 0:
			counter = counter + int(numbers)
	print(counter)
numbers()
f.close()





# Second script to debug 
# Python program for reading
# from file


# h = open('num3.lst', 'r')
# content = h.readlines()
# a = 0
# for line in content:
#	for i in line:
#		if i.isdigit()==True:
#			a += int(i)
#
# print("The sum is:", a)
