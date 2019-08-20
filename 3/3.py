from functools import lru_cache
from math import sqrt

num = 600851475143

@lru_cache(maxsize=None)
def find_prime_cofactors(n):
    for i in range(int(sqrt(n)), 1, -1):
        if n % i == 0:
            return {*find_prime_cofactors(i), *find_prime_cofactors(int(n / i))}
    return {n}


print(max(find_prime_cofactors(num)))
