#!/usr/bin/python3

# Download the file num.lst;
# create a function to find the number of lines containing '2'.

def number():
	counter = 0
	with open('num.lst','r') as f:
		for i in f:
			if '2' in str(i):
				counter = counter + 1
		print(format(counter))

number()
# for readlines
#	lines = len(f.readlines())
	
#	print(lines)  
