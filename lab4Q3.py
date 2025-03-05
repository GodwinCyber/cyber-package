#!/usr/bin/python3

# a='Josef'; create a loop that uses the ord() 
# function for each character; find the sum of a.

a = 'Josef'
s = 0 # sum total a

for i in a:
	print(ord(i))
	s = s + ord(i)
print("Print the sum of i: ", s)
