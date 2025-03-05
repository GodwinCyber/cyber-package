#!/usr/bin/python3

# Download and read the file users.db; find the number of lines the file contains.

counter = 0

f = open('users.db','r')
for i in f:
	print(i)
	counter = counter+ 1
	
f.close()
print("The number of student: ",counter)
