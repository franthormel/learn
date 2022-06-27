# This program determines if a given file name is a Python file

# Get filename from user input
file = input("Enter filename: ")

l = len(file)

# Check the file extension '.py'
if file[l-3:l] == '.py':
    print("This is a Python file")
else:
    print("This is not a Python file")
