# This program demonstrates the Babylonian square-root function
import random

def root(x):
    y = x
    e = abs(x-y*y) 
    
    while e > 0.0000001:
        y = (y + x / y) / 2.0
        e = abs(x-y*y)
        
    return y

# Get a random number and print out the result
number = random.randint(100, 1000)
print("The square root of", number,"is",root(number))