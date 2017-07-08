-- A. Escreva definição recursiva da função insert :: Ord a => a -> [a] -> [a]
-- para inserir um elemento numa lista ordenada na posição correta de forma a manter a ordenação.

insert :: Ord a => a -> [a] -> [a]
insert n [] = [n]
insert n (x:xs) | n < x = n : x : xs
                | otherwise = x : insert n xs

-- B. Usando a função insert, escreva uma definição também recursiva da função
-- insertSort :: Ord a => [a] -> [a] que implementa ordenação pelo método de inserção:
_insertSort :: Ord a => [a] -> [a] -> [a]
_insertSort [] nova = nova
_insertSort (x:xs) nova = _insertSort xs (insert x nova)

insertSort :: Ord a => [a] -> [a]
insertSort [] = []
insertSort lista = _insertSort lista []

-- a lista vazia já está ordenada;
-- para ordenar uma lista não vazia, recursivamente ordenamos a cauda e inserimos a cabeça na posição correta.

-- C. Defina a função insertSortFold :: Ord a => [a] -> [a] que ordena uma lista pelo método de inserção
-- usando a função foldr e insert

insertSortFold :: Ord a => [a] -> [a]
insertSortFold lista = foldr insert [] lista
