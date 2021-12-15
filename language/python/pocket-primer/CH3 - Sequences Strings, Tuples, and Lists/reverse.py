# This program reverses a string

word = "What time is it? Are you inside?"

# This section goes through each element of the String and manually interchanges it
k = len(word)

reverse = word

for i in range(0, k):
    reverse = reverse + reverse[k-i-1]

reverse = reverse[len(reverse)//2:]

print("Word: " + word)
print("Reverse: " + reverse)


# This section uses string slicing
# Example:
# 
# name = "Apple Orange"
#
# name_splice_two = name[::2]
# name_splice_two is equivalent to "pl rne"

print("\nReversed a string using string splicing\n")

print("Reversed using splice: " + reverse[::-1])
print("Reversed using splice: " + reverse[::-1])