# Problem:  NASA Meteorite Landing Data
# NASA publishes a huge amount of data on its web
# sites, and one of these is a collection of meteorite
# landings. It covers many years and has over 4800
# entries. The task assigned here is to print a nicely
# formatted report on selected parts of the data. The
# data on the file has its field separated by commas,
# and there are ten of them: name, id, nametype,
# recclass, mass, Fall, year, reclat, reclong, and
# geolocation. The report requires that the name, 
# reclass, mass, reclat, and reclong be arranged in
# a nicely formatted set of columns.

file = open('meteorites.txt', 'r')
line = file.readline()

print("{:16s}{:16s}{:16s}{:16s}{:16s}".format(
      "Place","Class","Mass","Latitude","Longitude"))

while line != "":
    list = line.split(",")

    print("{:16s}{:16s}{:16.2f}{:16.2f}{:16.2f}".format(
        list[0],list[3],float(list[4]),float(list[7]),float(list[8]),))

    line = file.readline()

file.close()