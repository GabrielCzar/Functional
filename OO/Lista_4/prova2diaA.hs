-- a) Escreva definição recursiva da função insert :: Ord a => a -> [a] -> [a]
-- para inserir um elemento numa lista ordenada na posição correta de forma a manter a ordenação.

insert :: Ord a => a -> [a] -> [a]
insert n [] = [n]
insert n (x:xs) | n < x = n : x : xs
                | otherwise = x : insert n xs
