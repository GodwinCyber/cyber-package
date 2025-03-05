#!/usr/bin/python3

# a=[8,2,3,0,7]; create a function that prints the sum of a list.

a = [8,2,3,0,7]
def sum():
	total = 0
	for i in a:
		total = total + i
	print('The sum of the list: ', total)
sum()
