{-
BUSCA_SUB "an" ["freddy mercury", "antonio brandeiras", "zorro", "zebra"]
-}

buscar :: [Char] -> [Char] -> Bool
buscar [] xs = True
buscar (x:xs) (a:b) | x == a    = buscar xs b
                    | otherwise = False

busca_sub :: [Char] -> [[Char]] -> [[Char]]
busca_sub sub [] = []
busca_sub sub (x:xs) | (buscar sub x) == True = [x] ++ busca_sub sub xs
                     | otherwise              = busca_sub sub xs
