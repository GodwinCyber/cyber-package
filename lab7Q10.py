#!/usr/bin/python3

f=open('num.lst','r')
def lines():
	counter=0
	for line in f.readlines():
		if '3' in line[3]:
			counter+=1
			#counter+=1
	print(counter)
	
lines()
f.close()


# with open(r'E:\demos\files\demo.txt','r') as f:
#	lines = len(f.readlines())
# print(lines)



