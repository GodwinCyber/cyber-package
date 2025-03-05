#!/usr/bin/python3

#  lst=["4", "8", "7", "41", "12", "2", "15", "33"]; 
# create a loop that appends the square of each number to the new list; 
# print the sum of the new list.

lst = ["4", "8", "7", "41", "12", "2", "15", "33"]
lst2 = [eval(i) for i in lst]
lst3 = []
for i in lst2:
	lst3.append(i**2)

print(lst3)
print("The sum of the new list: ",sum(lst3))
