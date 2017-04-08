uniao :: [Int] -> [Int] -> [Int]
uniao lista lista2 = lista ++ [x | x <- lista2, notElem x lista]
