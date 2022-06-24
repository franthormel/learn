from array import array

# DICTIONARY
# Keys must be immutable
# Empty Dictionary
numbers = {}

# Dictionary with Entries
numbers = {
    'zero' : 0,
    'one' : 1,
    'two' : 2,
    'three' : 3,
    'four' : 4,
    'five' : 5,
    'six' : 6,
    'seven' : 7,
    'eight' : 8,
    'nine' : 9,
}

# Accessing an entry
zero = numbers['zero']

print(zero);

# Accessing an entry while 
# verifying if Key exsists
try:
    number = numbers['number']
except KeyError:
    print("The index you're looking for does not exist")

# Iterating over an array
for (key, value) in numbers.items():
    print("The key", key, "has a value of", value)

# ARRAY
# Data type restriction types
# b : char
# B : unsigned char
# i : integer
# l : long
# f : float
# d : double
grades = array('d', [85.3, 89.2, 95.1, 81.5, 99.2, 92.3, 94.2])

for grade in grades:
    print(grade)

# FORMATTED TEXT
# Example usage
forecast = "Today is going to be {} and tomorrow it will {}"
forecast = forecast.format("sunny", "rain")

print(forecast)

# Usual usage
forecast = "Today is going to be {} and tomorrow it will {}".format('sunny', 'rain')
print(forecast)

# Formatting specification
# d : integer
# f : float
# e : exponent
# s : string
# g : general
#
#  {[name]['!'conversion][':'specification]}
#
# *Default is left-aligned if no alignment specifier is provided
# 
# {:10s} {:<10s}   Left-aligned with 10 whitespaces
# {:>10s}          Right-aligned with 10 whitespaces
# {:^10s}          Center-aligned with 10 whitespaces
# 
# Samples
#
# {:5d}     An integer in a 5 character spaced right-alignment                  ' 1234'
# {:>5d}    An integer in a 5 character spaced right-alignment                  ' 1234'
# {:<5d}    An integer in a 5 character spaced left-alignment                   '1234 '
# {:07d}    An integer in a 7 character spaced left-alignment with padded 0s    '0001234'
# {:,5d}    An integer in a 5 character spaced left-alignment with seprator     ' 1,234'
# {:5x}     An integer in a 5 character spaced left-alignment as hexadecimal    '    4D2'