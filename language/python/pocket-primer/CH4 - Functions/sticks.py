# This is a relatively simple combinatorial game that involves removing sticks or chips from a pile.
# There are two players, and the game begins with a pile of 21 sticks. The first player begins by removing
# 1, 2, or 3 sticks from the pile. Then the next player removes some sticks, again 1, 2, or 3 of them.
# Players alternate in this way. The player who removes the last stick wins the game; in other words, if
# you can't move you lose.


val = 21        # The game state, initially 21 sticks
done = False	  # Is the game over?
userMove = 0
move = 0

# Display the game at this point.
def displayState(val):
    print("\nRemaining sticks:\n")
    k = val
    while k > 0:
        if k >=6:
            for j in range(0,6):
                print ("O ", end="")
            k = k - 6
        else:
            for j in range(0,k):
                print ("O ", end="")
            k = 0
        print ("")

# Display the rules of the game
def rules():
    print ("The game of Sticks' rules.")
    print ("  (1) There are two players. Label them You and Computer.")
    print ("  (2) There is a pile of 21 chips in the center of a table.")
    print ("  (3) A move consists of removing one, two, or three chips from the pile. At least one")
    print ("      chip must be removed, but no more than three may be removed.")
    print ("  (4) Players alternate moves with You starting.")
    print ("  (5) The player that removes the last chip wins. (The last player to move wins. If you")
    print ("      can't move, you lose.")
    print("")

# Asks and returns for the user's input given that it is a valid value between 1 to 3
def prompt ():
     n = int(input ("Your move: Take away how many?  "))
     while n<=0 or n>3:
        print ("Sorry, you must take 1, 2, or 3 sticks.")
        n = int(input ("Your move: Take away how many?  "))
     return n

# Checks if the user's move is less than or equal to the number of sticks left
def legalMove(move, val):
    return move <= val

# Returns the value for the number of sticks the computer takes
def getComputerMove (val):
    n = val % 4
    if n<=0:
        return 1
    else:
        return n

# Checks if the number of sticks left is equivalent to 0, hence the game is finished
def gameOver (val):
    return val == 0

# Print the rules for the game
rules()

# Run until the game is over
while not done:
     # Show the game board  
    displayState(val)    

    # Ask user for their move
    userMove = prompt()

    # Was the player's move OK?
    ok = legalMove (userMove, val)

    # Continually ask for valid user input
    while not ok:
        print ("This move is not legal.")
        userMove = prompt()	  # Ask user for their move
        ok = legalMove (userMove, val)

    # Display the amount of sticks the user took
    print ("User moves: ", userMove)

    # Deduct the amount of remove sticks by the user 
    # from the total number of available sticks
    if userMove <= val:
        val = val - userMove
    print ("You took ", userMove, " sticks leaving ", val)

    # Check if the game is done and break the loop
    if gameOver(val):
        print("You win!")
        break;
        
    displayState(val)

    # Computer's turn
    move = getComputerMove (val)
    print ("Computer's move: ", move)
    if move <= val:
        val = val - move
    print ("Computer took ", move, " sticks leaving ", val)
    if gameOver(val):
        print("Computer wins!")
        break;

    displayState(val)

