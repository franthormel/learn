# This program identifies if a 'print' statement is found at the beginning of a String

text = "print('There are seven hundred ships')"

# Verify the string's existence
includes = text[0:5] == "print"

# Display if it does
if includes:
    print("Print is included")
else:
    print("Print is not included")
