# This program demonstrates using
# using 'struct's

from struct import *

# WRITING

file = open('hiscores', 'wb')

# Prepare the data to be written
name = bytes('Dexter Gordon', 'UTF-8')
score = 10105
year = b'2016'
month = b'5'
day = b'15'

# Create a formatted structure
# using 'pack total of 44 bytes
record = pack('32si4s2s2s', name, score, year, month, day)

# Write the structure to the file
file.write(record)
file.close()

# READING

file = open('hiscores', 'rb')

while True:
    try:
        # Prepare the structure for reading
        record = file.read(44)

        # Get the data via 'unpack' function
        name, score, year, month, day = unpack('32si4s2s2s', record)

        # Apply proper character encoding
        name = name.decode('UTF-8')
        year = year.decode('UTF-8')
        month = month.decode('UTF-8')
        day = day.decode('UTF-8')

        print("{:32s} {} {:4s} {:2s} {:2s}".format(name, score, year, month, day))
    except:
        print("\n---EOF--")
        break

file.close()