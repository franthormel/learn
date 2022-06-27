import max
import random

numbers = ()

for i in range(0, 10):
    numbers = numbers + (random.randint(0, 1000),)

print(numbers)
print("\nThe largest number from the list is", max(numbers))
