# The user inputs a value for a radius and the program calculates the circumference of the circle

import math

print("This program calculates the circumference of a circle")

radius = float(input("Enter the radius of the circle: "))
radius = radius * 2.0 * math.pi

print("The circumference of the circle is ", radius)
