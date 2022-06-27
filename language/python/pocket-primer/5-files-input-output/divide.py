# This program asks for user input and divides it accordingly
# given if it's a decimal or whole number

number = input("Please enter a number: ")

try:
    integer = int(number)

    # The double slash denotes integral division
    quotient = integer // 2
except:
    floating = float(number)

    # This single slash denotes default division (float)
    quotient = floating / 2

print("The quotient of", number, " is ", quotient)
