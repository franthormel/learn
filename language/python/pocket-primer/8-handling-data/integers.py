# This program writes and reads a binary file

from array import array
import random

# WRITING BINARY

# Create a binary file with 'integers'
# as its filename
file_out = open('integers', 'wb')

# Create an array to store numbers
numbers = array('i')

# Generate random numbers and
# place them in the array
total = 100

for k in range(0, total):
    number = int(random.random() * total)
    numbers.append(number)

# Write and close the file
numbers.tofile(file_out)

print("Length of array is", len(numbers))

file_out.close()

# READING BINARY

# Read the binary file that 
# was recently created
file_in = open('integers', 'rb')

# Prepare the storage for the data
numbers = array('i')

for k in range(0, total):
    try:
        numbers.fromfile(file_in, 1)
    except:
        print("Error after",k,"reads")

    print(numbers[k])

file_in.close()