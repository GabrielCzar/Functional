
{-
COMPRIME "asdjjjjghjjk"
>> "asd!4jgh!2jk"
-}

quantidade x [] = 0
quantidade x (a:c) |  x == a   = 1 + quantidade x c
                   | otherwise = 0

rem_rec y [] = []
rem_rec y (x:xs) | y == x    = rem_rec y xs
                 | otherwise = (x:xs)

comprime [] = []
comprime [x] = [x]
comprime (x:y:xs) | x == y    = ('!' : show (quantidade x (x:y:xs))) ++ [x] ++ comprime (rem_rec x xs)
                  | otherwise = x : comprime (y:xs)
