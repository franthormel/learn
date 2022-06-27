# Python - Quickstart

1. Variables
```
// String
name = "Francis"

// Number
age = 23

// Bool
isWorking = True
```

2. Control statements
```
if age < 23:
    print("Age is less than 23 years.")
elif age > 23:
    print("Age is greater than 23 years.")
else:
    print("Age is 23 years.")
```

3. Iteration
```
for i in range(0, age):
    print("Hello, " + name + "!")

while isWorking:
    print(f"Hello, {name}!")
```

4. Functions
```
def greet(name):
    print(f"Hello, {name}!")

def calculateSalary(isWorking):
    value = 0

    if isWorking:
        value = 100

    return value
```

5. Collections
```
// List
names = ["Francis", "Anthony", "Carmel"]
years = [2012, 2015, 2022]
hasTravelled = [False, False, True]

// Tuple
materials = ("Textile", "Plastic", "Metal")

// Set - Unordered, unique, comparing.
subjects = set()

subjects.add("AB101")
subjects.add("CD0202") 
subjects.add("EF0303")

{'EF0303', 'AB101', 'CD0202'}


years = set([1, 2, 3, 4])

years.add(1)
years.remove(2)

{1, 3, 4}
```

6. Classes
```
class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def printPoint(self):
        print(f"X: {x} Y: {y}")
```
