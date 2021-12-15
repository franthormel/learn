# This program will append more data to an existing file

outfile = open ("squares.txt", "a")

for i in range (25, 45):
    outfile.write (str(i))
    outfile.write ("\t")
    outfile.write (str(i*i))
    outfile.write ("\n")

outfile.close()