# Declaring strings
name = "John Doe"
address = "121 Second Street"

# Printing each character in a string
for i in range(0, len(name)):
    print(name[i], end="")

# Comparing strings
"abcd" < "abce"
"123" < "456"
"ab" < "abc"
" a" < "a"

# Sample in comparing strings
a = "A"
b = "a"
c = "1"

if b < c:
    print("Lowercase < numbers")
else:
    print("Lowercase > numbers")
if a < c:
    print("Uppercase < numbers")
else:
    print("Lowercase > numbers")

# Compare if input() is lesser than the string 'Denver'
city = input()
denver = "Denver"

if city < denver:
    print("The input is lesser than " + denver + " alphabetically")
elif city > denver:
    print("The input is greater than " + denver + " alphabetically")
else:
    print("The input is " + denver)
