import Data.Function (fix)

main = print $ fst $ longestSequence (0, 0) 3000
-- main = print $ memoizedCollatz 20 0
-- main = print $ maximum $ map memoizedCollatz [0..4000]

memoize f = (map f [0..] !!)

-- memoizedCollatz :: Int -> Int -> Int
memoizedCollatz = fix (memoize . collatz)

-- collatz :: (Int -> Int) -> Int -> Int
collatz f n itr
  | n <= 1 = itr
  | even n = f (quot n 2) (itr + 1)
  | otherwise = f (3 * n + 1) (itr + 1)

longestSequence (n, chainLen) itr
    | itr == 1 = (n, chainLen)
    | chainLen >= result = longestSequence (n, chainLen) (itr - 1)
    | chainLen < result = longestSequence (itr, result) (itr - 1)
  where
    result = memoizedCollatz itr 0