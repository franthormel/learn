# This program prints the names of planets having fewer than ten (10) moons

# Open the file
try:
    infile = open("planets.txt", "r")

    # Read (skip over) the header line
    s = infile.readline()

    # For each planet
    for i in range(0, 8):
        # Read a line as string s
        s = infile.readline()

        # Break s into components based on commas giving list P
        p = s.split(",")

        # If p[10] < 10 print the planet name, which is p[0]
        if int(p[10]) < 10:
            print(p[0], "has fewer than 10 moons.")

except FileNotFoundError:
    print("There is no file named 'planets.txt'.  Please try again")
