#!/usr/bin/python3

# Create a loop to sum all the ASCII characters (a-z) decimal values.

total = 0

import string

for i in string.ascii_lowercase:
	x = ord(i)
	total = total + x

print(total)
