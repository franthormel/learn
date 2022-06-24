# This program prints the number of neutrons given a list of elements and its atomic number
# Note that the number of neutrons is multiplied by its atomic number by two (2)

elements = (
    "Hydrogen", 1,
    "Carbon", 6,
    "Lithium", 3,
    "Titanium", 22,
    "Iron", 26,
    "Helium", 2,
    "Potassium", 19,
    "Calcium", 20,
    )

# Loop through the collection and execute the statement if it's an odd
# index, so that atomic number can be easily accessed
for i in range(0, len(elements)):
    if i % 2 != 0:
        print(elements[i-1], "has", elements[i]*2, "neutrons")