removeall :: Int -> [Int] -> [Int]
removeall n lista = [x | x <- lista, x /= n]
