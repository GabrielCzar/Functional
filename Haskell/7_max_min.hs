maior :: [Int] -> Int
maior [h] = h
maior (head:tail) | head > maior tail = head
                  | otherwise = maior tail

menor :: [Int] -> Int
menor [h] = h
menor (h:t) | h < menor t = h
            | otherwise   = menor t

max_min :: [Int] -> (Int, Int)
max_min lista = (maior lista, menor lista)

