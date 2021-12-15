# This program simulates a rock, paper, scissors game
# The player enters a choice and the computer also chooses randomly
# After both has chosen, the program determines the winner

import random

print ("This program simulates rock paper scissors")

print("Choose either 'rock', 'paper' or 'scissors")

choices = ("rock", "paper", "scissors")

computer = choices[random.randint(0, len(choices))]
player = input()

print ("Computer chose " + computer)
print("You chose " + player)

print("Result:")

if player == "rock":
    if computer == "scissors":
        print("You win!")
    else:
        print("You lose!")
elif player == "scissors":
    if computer == "paper":
        print("You win!") 
    else:
        print("You lose!")
elif player == "paper":
    if computer == "rock":
        print("You win!")
    else:
        print("You lose!")
else:
    print("Invalid choice!")