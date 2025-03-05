#!/usr/bin/python3

# Create a loop that sums the numbers dividing by seven (7) between 100-10000.

lst = []
for i in range(100,10000):
	if(i%7==0):
		lst.append(i)
		
print(lst)
print(sum(lst))

