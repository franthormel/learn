# This program finds the maximum value of a function
#
# The problem goes like this:
#
# A calculator company produces a scientific calculator and a graphing calculator. Long-term 
# projections indicate an expected demand of at least 100 scientifc and 80 graphic calculators each day.
# Because of limitations on production capacity, no more than 200 scientific and 170 graphing
# calculators can be made daily. To satisfy a shipping contract, a total of at least 200 calculators 
# much be shipped each day.
#
# If each scientific calculator sold results in a 2$ loss, but each graphing calculator produces a 5$
# profit, how many of each type should be made daily to maximize net profits.

# This function calculates the profit given the cumulative 
# sales of both scientifc and graphing calculators.
def profit (scientific, graphing):
    return (-2 * scientific) + (5 * graphing)

# This function goes through all the possible combinations while calculating
# which pair of amounts will yield the maximum profit given the minimum and 
# maximum constraints from the stated problem
def searchmax (f, min_scientific, min_graphing, max_scientific, max_graphing, sum):

    #Instantiate the helper variables
    pmax = -1.0e12
    ps = -100
    pg = -100

    # Go through all possible combinations while replacing the pairs
    # if the profit exceeds the current value
    for s in range (min_scientific, max_scientific + 1):
        for g in range (min_graphing, max_graphing + 1):
            if s+g >= sum:
                p = f (s, g)
                if p>=pmax:
                    pmax = p
                    ps = s
                    pg = g
    
    # Return the pairing as a tuple
    return ( (ps, pg) )

c = searchmax (profit, 100, 80, 200, 170, 200)
print (c)