# This program checks all even numbers from 0 to 100 that are perfect squares

# Create a collection of all perfect squares given the minimum and maximum values
perfects = ()
for i in range(0, 11):
    perfects = perfects + (i*i,)

# Create a collection of all even numbers given the minimum and maximum values
evens = ()
for i in range(0, 51):
    evens = evens + (i*2,)

# Create a collection of all even perfect squares
perfect_evens = ()
for perfect in perfects:
    if perfect in evens:
        perfect_evens = perfect_evens + (perfect,)

# Display the collections
print("All even numbers are ", evens)
print("\nAll perfect squares are ", perfects)
print("\nAll even perfect squares are ", perfect_evens)
