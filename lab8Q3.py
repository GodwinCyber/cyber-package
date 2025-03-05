#!/usr/bin/python3

# lst=['a','c','a','a','b','d','e','r','x','a']; 
# create a script that removes duplicated items from the list.

lst = ['a','c','a','a','b','d','e','r','x','a']
def Remove(lst):
	lst2 = []
	for i in lst:
		if i not in lst2:
			lst2.append(i)
	return lst2
	
print(Remove(lst))
