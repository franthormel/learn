# This program asks the user a number of times if the randomly generated number
# is prime or not. At the end, the program displays the amount of correct answers

import random

kAttemptsMax = 10

kRandomMin = 1000
kRandomMax = 100000000

correct = 0

# Display maximum number of attempts and name of this game
print("--------------Prime Game--------------")
print("\n")
print("You have " ,kAttemptsMax, " attempts to guess if the random number prime or not");

for i in range(0, kAttemptsMax):
    # Get randomized large number
    k = random.randint(kRandomMin, kRandomMax)

    # Get user input
    print("Is the number ",k," a prime number? (Y)-Yes (N)-No")
    answer = input()

    # Check if randomized large number is prime
    prime = True
    for n in range(2, int(k/2)):
        if k % n == 0:
            prime = False

    answer = answer.upper()

    if answer == "Y":
        answer = True
    elif answer == "N":
        answer = False

    # Prepare user feedback
    feedback = ""

    if prime:
        feedback = "", k, " is a prime number."
    else:
        feedback = "", k, " is not a prime number."

    if answer == prime:
        feedback = "Correct answer!\n"
        correct = correct + 1
    else:
        feedback = "Incorrect answer!\n"

    print(feedback)

print("\nOut of ", kAttemptsMax, " attempts you answered ", correct, " correctly")