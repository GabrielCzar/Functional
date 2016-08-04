inter :: [Int] -> [Int] -> [Int]
inter lista lista2 = [x | x <- lista, elem x lista2]

