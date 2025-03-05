#!/usr/bin/python3

# Download and read the file users.db; find the number of lines the file contains.
#  Use the file users.db and find the students average score.


with open('users.db') as f:
    sum = 0 # initialize here, outside the loop
    count = 0 # and a line counter
    for line in f:
        count += 1 # increment the counter
        sum += float(line.split()[1]) # add here, not in a nested loop
    average = sum / count #sum of the student score/number of students

print("Sum of student scores: ",sum)
print("numbers of students: " ,count)
print("Student average scores: ",average)






#with open('users.db') as f:
#	sum = 0
#	numlines = 0
#	for line in f:
#		n = line.split(':')[-1]
#		sum += float(n)
#		numlines += 1
#	average = sum/sumlines
#print(average)	
	
	
	
#	with open('abc.txt') as fh:
#    sum = 0
#    numlines = 0
#    for line in fh:
#        n = line.split(':')[-1]
#        sum += float(n)
#        numlines += 1
#    average = sum / numlines
#print average
