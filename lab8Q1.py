#!/usr/bin/python3

#a=[3,4,1,6,9,3]; create a script that gets six numbers 
#and prints the largest number.

a = [3,4,1,6,9,3]

def myMax(a):
	max = a[0]
	for x in a:
		if x > max:
			max = x
	return max

print("Largest element is:", myMax(a))
