main = print primeSum

primeSum = sum $ filter isPrime [2..2000000]

isPrime :: Int -> Bool
isPrime n = not $ any ((== 0) . (rem n)) [2..(floor . sqrt . fromIntegral) n]
