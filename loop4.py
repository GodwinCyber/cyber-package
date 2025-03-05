#!/usr/bin/python3

# write a scipt that will run 4 times
# ask the student to eneter their name and add it to the list
# print the list after four student name 

lst = []
for i in range(4):
	x=input("Enter student name: ")
	lst.append(x)
print(lst)
