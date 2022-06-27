# This program determines if the user input comes before or after the specified work alphabetically

word = "androgenesis"

# Get user input
user = input("Enter a word: ")

# Check alphabetically otherrwise it is the exact word
if user < word:
    print("The word '" + user + "' comes before '" + word + "' alphabetically.")
elif user > word:
    print("The word '" + user + "' comes after '" + word + "' alphabetically.")
else:
    print("You have entered the exact word " + user)
