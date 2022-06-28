# Python - Quickstart


# 1. VARIABLES

name = "Francis"
age = 23
isWorking = True


# 2. CONTROL STATEMENTS

if age < 23:
    print("Age is less than 23 years.")
elif age > 23:
    print("Age is greater than 23 years.")
else:
    print("Age is 23 years.")


# 3. ITERATION

for i in range(0, age):
    print("Hello, " + name + "!")

while isWorking:
    print(f"Hello, {name}!")


# 4. FUNCTIONS

def greet(name):
    print(f"Hello, {name}!")


def calculateSalary(isWorking):
    value = 0

    if isWorking:
        value = 100

    return value


# 5. COLLECTIONS
nameList = ["Francis", "Anthony", "Carmel"]
yearList = [2012, 2015, 2022]

materialsTuple = ("Textile", "Plastic", "Metal")

subjectSet = set()
yearSet = set([1, 2, 3, 4])


# 6. Classes

class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def printPoint(self):
        print(f"X: {self.x} Y: {self.y}")
