#!/usr/bin/python3

# Download the file num3.lst; create a function
# to find how many numbers are even.

def even_num():
	with open('num3.lst','r') as f:
		counter = 0
		for i in f:
			if int(i)%2==0:
				 counter = counter + 1
		print(counter)
even_num()

# def counteven(integers):
#   return sum(1 for n in integers if n % 2 == 0)

# with open('num3.lst','r') as f:
#    numbers = (int(line) for line in f)
#    print(counteven(numbers))
