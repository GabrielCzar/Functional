quantidade x [] = 0
quantidade x (a:c) | x == a    = 1 + quantidade x c
                   | otherwise = 0


parse x = show x

entrada x l = '!' : (parse (quantidade x l))

