--Fatorial duplo
fatorialduplo :: Int -> Int
fatorialduplo 0 = 1
fatorialduplo 1 = 1
fatorialduplo n | n > 0 = n * fatorialduplo (n - 2) 
