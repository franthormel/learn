# This program deletes the element 'Lithium' from a given tuple of elements

# Collection of elements
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

# Assume that 'Lithium' is not in the collection so we set it to an
# invalid index value
index = -1

print("Before deleting 'Lithium'", elements)

# Look for 'Lithium' in the collection, if it exists break the loop
# and change the index value
for i in range(0, len(elements)):
    if elements[i] == "Lithium":
        index = i
        break

# Validate index value ('Lithium' exists) overwrite
if index != -1:
    elements = elements[0:i] + elements[i+2:]

print("After deleting 'Lithium'", elements)
