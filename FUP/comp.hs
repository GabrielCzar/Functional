comp :: [Int] -> Int
comp [] = 0 
comp (x:xs) = 1 + comp xs

