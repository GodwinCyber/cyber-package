#1/usr/bin/python3

# Find the content in line 111.

printline = 111
lineCounter = 0
with open('file.txt','r') as f:
    for line in f:
        lineCounter += 1
        if lineCounter == printline:
            print(line, end='')
            
