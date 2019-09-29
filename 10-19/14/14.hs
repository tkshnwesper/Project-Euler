import Data.Function (fix)

main = print $ fst $ longestSequence (0, 0) 4000
-- main = print $ memoizedCollatz 1
-- main = print $ maximum $ map memoizedCollatz [0..4000]

memoize f = (map f [0..] !!)

memoizedCollatz = fix (memoize . collatz)

collatz :: (Int -> Int) -> Int -> Int
collatz f n
  | n == 0 = 0
  | n == 1 = 1
  | even n = 1 + f (quot n 2)
  | otherwise = 1 + f (3 * n + 1)

longestSequence (n, chainLen) itr
    | itr == 1 = (n, chainLen)
    | chainLen >= result = longestSequence (n, chainLen) (itr - 1)
    | chainLen < result = longestSequence (itr, result) (itr - 1)
  where
    result = memoizedCollatz itr