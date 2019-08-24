main = print primeNumber

primeNumber = last $ take 10001 primes

primes = filter isPrime [2..]

isPrime :: Int -> Bool
isPrime n = not $ any ((== 0) . (rem n)) [2..(floor . sqrt . fromIntegral) n]
