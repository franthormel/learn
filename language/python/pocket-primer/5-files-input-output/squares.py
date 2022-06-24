# This program writes a file with values from 0 to 25 and their corresponding squared values

outfile = open ("squares.txt", "w")
outfile.write ("X\tX^2\n")

for i in range (0, 25):
    outfile.write (str(i))
    outfile.write ("\t")
    outfile.write (str(i*i))
    outfile.write ("\n")

outfile.close()