import Data.Char

removercomeco [] = []
removercomeco (x:xs) | x /= ' '  = removercomeco xs
                     | otherwise = xs

first_part [] = []
first_part (x:xs) | x /= ' ' = x : first_part xs
                  | otherwise = []

minusculo lista = map toLower lista

capitalize [] = []
capitalize palavra = toUpper (head palavra) : tail palavra

_titulo [] = []    
_titulo palavra = (capitalize (first_part palavra)) ++ [' '] ++ _titulo (removercomeco palavra)

__titulo [x] = []
__titulo (x:xs) = x : __titulo xs

titulo [] = []
titulo palavra = __titulo (_titulo (minusculo palavra))
