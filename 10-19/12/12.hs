import Data.List (sort, group)

main = print highestNumberOfFactors

sieve :: [Int] -> [Int]
sieve arr = head arr : sieve (filter (\e -> (e `rem` head arr) /= 0) (tail arr))

triangleNumbers = scanl1 (+) [1..]

primeNumbers = sieve [2..]

checkIndivisibility n = (/= 0) . rem n
checkDivisibility n = (== 0) . rem n

highestNumberOfFactors = fst . head $ 
  dropWhile ((< 500) . snd) (map (\n -> (n, totalFactors n)) triangleNumbers)

primeFactors :: Int -> [Int]
primeFactors num = pf num []
  where
    pf n arr
        | quotient == 1 = head primes : arr
        | quotient == n = n : arr
        | otherwise = pf quotient (head primes : arr)
      where
        upperBound = div n 2
        eligiblePrimes = takeWhile (<= upperBound) primeNumbers
        primes = filter (checkDivisibility n) eligiblePrimes
        quotient = if null primes then n else n `quot` head primes

totalFactors :: Int -> Int
totalFactors n = product $ map ((+ 1) . length) $ (group . sort) (primeFactors n)
