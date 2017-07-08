{-

scanl =


-}

-- 01


-- 02.
-- Fatorial acumulado
fat 1 = 1
fat n = n * fat (n - 1)

fatAcc n = scanl (\x y -> fat y) 1 [2 .. n]

-- 1 e 3 - 6 Andreazo

-- 7
-- agrupa [[1 .. 6], [7 .. 9], [10 .. 20]] == [[1, 7, 10], [2, 8, 11], [3, 9, 12]]
-- agrupa :: Eq a => [[a]] -> [[a]]
_rm [] = []
_rm [[]] = [[]]
_rm l@(x:xs)
      | x == [] = []
      | otherwise = scanl (\x (y:ys) -> ys) [] l

rm [] = [[]]
rm [[]] = [[]]
rm [x] = [[]]
rm (x:xs) = xs

agrupa [] = []
agrupa [[]] = []
agrupa l@(x:xs)
    | x == [] = []
    | otherwise = [foldl (\x (y:ys) -> x ++ [y]) [] l] ++ agrupa (rm (_rm l))
-- ERRO NO FOLD QUANDO TEM LISTAS COM QUANTIDADES DIFERENTES
