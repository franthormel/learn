# This program calculates the mean of a list of numbers

numbers = [2, 3, 5, 6, 1, 2, 5, 7, 8, 2]

# Set the helper variables
total = 0
count = 0

# Get the total and count
for number in numbers:
    total = total + number
    count = count + 1

# Display the mean
print("The numbers ",numbers," has an average of ", total / count)