import Data.List
-- Questao 5
{-
_reflexiva :: Int -> Rel -> Bool
_reflexiva _ [] = False
_reflexiva n ((x, xs) : xss)
    | n == x && n == xs = True
    | otherwise = _reflexiva n xss

reflexiva :: [Int] -> Rel -> Bool
reflexiva [] _ = True
reflexiva (x:xs) relacao
       | (_reflexiva x relacao ) == False = False
       | otherwise = reflexiva xs relacao
-}
-- A
-- Como eu estou gerando uma lista de Boleanos entao o AND compara se tem algum valor False na lista
type Rel = [(Int , Int)]
reflexiva2 :: [Int] -> Rel -> Bool
reflexiva2 conj rel = and [elem (x, x) rel | x  <- conj]

-- B
simetrica :: Rel -> Bool
simetrica relacao = and [elem (y, x) relacao | (x, y) <- relacao]

-- C
_transitiva relacao = length $ filter (==True) [(elem (x, z) relacao) && (elem (y, z) relacao) | (x, y) <- relacao, z <- nub [ zss | (zs, zss) <- relacao, zss /= x && zss /= y]]

transitiva :: Rel -> Bool
transitiva relacao
    | (mod (length relacao) 3) == 0 = (div (length relacao) 3) == (_transitiva relacao)
    | otherwise = False

-- 6
-- H
data Arv a = Vazia | No a (Arv a) (Arv a) deriving (Show)

mais_esq :: Arv a -> a
mais_esq (No x Vazia _) = x
mais_esq (No _ esq _) = mais_esq esq

remover :: Ord a => a -> Arv a -> Arv a
remover x Vazia = Vazia
remover x (No y Vazia dir) | x == y = dir
remover x (No y esq Vazia) | x == y = esq
remover x (No y esq dir)
    | x < y  = remover x esq
    | x > y  = remover x dir
    | x == y = No value esq (remover value dir)
    where
      value = mais_esq dir











--
