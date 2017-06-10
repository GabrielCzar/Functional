-- Questao01
isPalind :: String -> Bool
isPalind palavra | palavra == (reverse palavra) = True
                 | otherwise = False

-- Questao02
rotDir :: Int -> String -> String
rotDir 0 lista = lista
rotDir n lista = rotDir (n - 1) nova
                where 
                   inicio = init lista
                   final = last lista
                   nova = final : inicio

-- Questao03
splitints :: [Int] -> ([Int], [Int])
splitints lista = (impares, pares)
                where
                     impares = [x | x <- lista, mod x 2 /= 0]
                     pares = [x | x <- lista, mod x 2 == 0]

-- Questao04
primo :: Int -> Bool
primo n = [x | x <- [1..n], mod n x == 0] == [1, n]

-- Questao05
intercal :: [a] -> [a] -> [a]
intercal [] [] = []
intercal [] l2 = l2
intercal l1 [] = l1
intercal (x:xs) (y:ys) = x : y : intercal xs ys
