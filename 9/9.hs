main = print triplets

triplets = head [a * b * c | c <- [1000,999..1], b <- [0..c], a <- [0..b], a < b, b < c, a + b + c == 1000, a^2 + b^2 == c^2]