# This program demonsrates file's random access functionality
from struct import *

file = open('hiscores', 'r+b')

# The locatin of the record
# in the file
position = 44*8

# Using seek() function go
# to that position
file.seek(position)

# Prepare the data
name = b'Arlen Franks'
score = 100300
year = b'2015'
month = b'12'
day = b'26'

# Create a formatted structure
data = pack('32si4s2s2s', name, score, year, month, day)

# Go back to the specified
# file location
file.seek(position)
file.write(data)
file.close()
