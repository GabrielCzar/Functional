-- 01- Construa a função inserir:
-- INPUT: Número x e lista u de números ordenados ascendentemente
-- OUTPUT: Lista de números ordenados ascendentemente oriunda da inserção apropriada de x em u
inserir n [] = [n]
inserir n (x:xs) | x > n     = n : x : xs
                 | otherwise = x : inserir n xs

-- 2 - Escreva uma função diamonds que receba como argumento um valor inteiro positivo n e retorne uma lista de listas
-- [l1 , l2 , . . . , ln−1 , ln , ln-1, . . . , l2 , l1], onde li é a lista dos i múltiplos de i (sendo i o primeiro múltiplo de i).
-- Exemplo:
-- diamonds 2 [ [ 1 ] , [ 2 , 4 ] , [ 1 ] ]
-- diamonds 3 [ [ 1 ] , [ 2 , 4 ] , [ 3 , 6 , 9 ] , [ 2 , 4 ] , [ 1 ] ]
-- diamonds 4 [ [ 1 ] , [ 2 , 4 ] , [ 3 , 6 , 9 ] , [ 4 , 8 , 1 2 , 1 6 ] , [ 3 , 6 , 9 ] , [ 2 , 4 ] , [ 1 ] ]

multiplos n = [x * n | x <- [1 .. n]]

_diamonds 1 nx = [multiplos nx]
_diamonds n nx  = [multiplos (n - (n - 1))] ++ _diamonds (n - 1) nx ++ [multiplos (n - (n - 1))]

diamonds n = _diamonds n n

-- 03- Escreva uma função permutations :: [a] -> [[a]] para obter a lista com todas as permutações dos elementos uma lista. Assim, se xs tem comprimento n, então permutations xs tem comprimento n!.
-- Exemplo:
-- permutations [1, 2, 3] = [[1, 2, 3], [2, 1, 3], [2,3, 1], [1, 3, 2], [3, 1, 2], [3, 2, 1]]
-- Note que a ordem das permutações não é importante.

intercala :: a -> [a] -> [[a]]
intercala x [] = [[x]]
intercala x (y:ys) = (x:y:ys) : [y : w | w <- intercala x ys]

permutacoes :: [a] -> [[a]]
permutacoes [] = [[]]
permutacoes (x:xs) = concat [intercala x ys | ys <- permutacoes xs]

-- 04- Escreva uma função partir :: Int -> [a] -> [[a]] tal que partir n de decompõe uma lista em sub-listas cuja concatenação dá a lista original e tal que cada sub-lista tem comprimento n (exceto, possivelmente, a última).
-- Exemplo:
-- partir 5 "abdefghijkl"= ["abde", "fghij", "kl"]

_partir _ [] = []
_partir 0 _  = []
_partir n (x:xs) = x : _partir (n - 1) xs

cortar _ [] = []
cortar 0 l = l
cortar n (x:xs) = cortar (n - 1) xs

partir _ [] = [[]]
partir n l | length l > n = [_partir n l] ++ partir n (cortar n l)
           | otherwise = [l]

-- 05- Defina a função paresOrdenados :: [a] -> [(a,a)] tal que (paresOrdenados xs) é uma lista de todos os pares de elementos (x, y) de xs tal que x aparece em xs antes de y.
-- Exemplo:
-- paresOrdenados [ 3 , 2 , 5 , 4 ] == [ ( 3 , 2 ) , ( 3 , 5 ) , ( 3 , 4 ) , ( 2 , 5 ) , ( 2 , 4 ) , ( 5 , 4 ) ]
-- paresOrdenados [ 3 , 2 , 5 , 3 ] == [ ( 3 , 2 ) , ( 3 , 5 ) , ( 3 , 3 ) , ( 2 , 5 ) , ( 2 , 3 ) , ( 5 , 3 ) ]

paresOrd x [] = []
paresOrd x (y:ys) = (x, y) : paresOrd x ys

paresOrdenados [] = []
paresOrdenados (x:xs) = paresOrd x xs ++ paresOrdenados xs
