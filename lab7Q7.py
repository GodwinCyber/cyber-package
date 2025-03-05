#!/usr/bin/python3

# a=[1,2,3,1,4,3,3,5,3,4,5];
# create a function that returns a unique list.

a=[1,2,3,1,4,3,3,5,3,4,5]
b = []
def unique():
	for i in a:
		if i not in b:
			b.append(i)
	print('The Unique list: ',b)
unique()


# a2 = list(set(a))

# print(a2)
