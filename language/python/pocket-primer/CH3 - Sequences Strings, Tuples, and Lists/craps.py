# This program simulates a game of craps

from random import *

# Create a collection of all possible 
# sum combinations of all die sides (1 to 6)
roll = list(range(0,13))
for i in range(1,13):
    roll[i] = set()

# Create a colllectin of all possible
# pairings of die sides given that
# they add to a certain sum
for i in range (1,7):
    for j in range (1,7):
        k = i+j
        roll[k].add( (i,j) )

# Set the rule sof the game
# Winner of craps are the ones with a sum
# of 7 and 11
# The losing craps' combinations are 2, 3 and 12
winner = roll[7] | roll[11]
loser = roll[2] | roll[3] | roll[12]

# Simulate the rolling of a dice using random numbers
die1 = randrange(1,7)
die2 = randrange(1,7)

# Combine the face values as a pair
val = (die1,die2)

# Display the combination
print ("Shooter rolls ", val)

# If the combination is either winning or losing,
# display the result otherwise continue playing until
# a side wins the game
if val in winner:
    print ("The shooter wins!")
elif val in loser:
    print ("The shooter loses")
else:
    point = roll[die1+die2]
    print (die1+die2, " is your point.")
    while True:
        die1 = randrange(1,7)
        die2 = randrange(1,7)
        val = (die1, die2)
        print ("Rolls ", val)
        if val in roll[7]:
            print ("The shooter loses!")
            break
        if val in point:
            print ("The shooter makes the point. A winner!")
            break