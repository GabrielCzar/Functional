isprimo :: Int -> Bool
isprimo n = [i | i <- [1..n], mod n i == 0] == [1, n] 

primos :: [Int] -> [Int]
primos lista = [x | x <- lista, isprimo x]
