#!/usr/bin/python3

# Print line 97 of the text file; use the 'wc' tool to find the 
# number of characters in that line.

printline = 97
lineCounter = 0
with open('file.txt','r') as f:
    for line in f:
        lineCounter += 1
        if lineCounter == printline:
            print(line, end='')
            
