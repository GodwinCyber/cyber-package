#!/usr/bin/python3

# # lst=[3, 7, 6, 8, 9, 11, 15, 25]; create a loop that appends the 
# square of each number to the new list; print the sum of the new list.

lst = [3, 7, 6, 8, 9, 11, 15, 25]
lst2 = []
for i in lst:
	lst2.append(i**2)
	
print(lst2)
print("Sum of the new list: ",sum(lst2))
