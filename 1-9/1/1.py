import math
import sys

LIMIT = int(sys.argv[1]) - 1


def sum_of_multiples(d, limit):
    n = math.floor(limit / d)
    return int((n ** 2 + n) * d / 2)


multiples_sum_three = sum_of_multiples(3, LIMIT)
multiples_sum_five = sum_of_multiples(5, LIMIT)
multiples_sum_fifteen = sum_of_multiples(15, LIMIT)

print(multiples_sum_three + multiples_sum_five - multiples_sum_fifteen)
