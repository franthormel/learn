# This program looks for the maximum value given a list

def max(values):
    # Assume that the largest value is the first entry
    max = values[0]

    for value in values:
        if value > max:
            max = value

    return max