#!/usr/bin/python3

# Replace every 'e' letter in the file with 'x' 
# and save it into a new file. 
# How many lines contain 'xx' in the new file?

with open('file.txt', 'r+') as f:
    
    #read file
    x = f.read()
    
    #replace 'e' with 'x' in the file
    y = x.replace('e', 'x')
    
    #save output
    f.write(y)
 
 

count = 0
with open('file.txt','r') as f:
	#count = 0
	for i in f.readlines():
		if 'xx' in i==0:
			count = count + 1
	print(count)
