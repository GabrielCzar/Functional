maior :: [Int] -> Int
maior [h] = h
maior (head:tail) | head > maior tail = head
                  | otherwise         = maior tail

pos :: Int -> [Int] -> Int  
pos x [h] | x == h = 0
pos x (h:t) | x == h     = 0
            | otherwise  = 1 + pos x t

maior_e_pos :: [Int] -> (Int, Int)
maior_e_pos [h] = (h, 0)
maior_e_pos lista = (m, pos m lista)
        where
             m = maior lista
