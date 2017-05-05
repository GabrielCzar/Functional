import Data.Char

-- 1. menorDeDois
menorDeDois x y | x < y     = x
                | otherwise = y

-- 2. menorDeTres
menorDeTres x y z | x < y && x < z = x
                  | y < z          = y
                  | otherwise      = z

-- 3. fatorial
fatorial 0 = 1
fatorial 1 = 1
fatorial n = n * fatorial (n - 1)

-- 4. fibonacci
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- 5. elemento
elemento 0 (h:t) = h
elemento n (h:t) = elemento (n - 1) t

elemento2 n lista = lista !! n

-- 6. perpertence
pertence x [] = False
pertence x (h:t) | x == h    = True
                 | otherwise = pertence x t

-- 7. total de elementos, nao usar length
total [] = 0
total (h:t) = 1 + total t

-- 8. maior, sem usar funcao max
maior [h] = h
maior (h:m:t) | h > m     = maior (h:t)
              | otherwise = maior (m:t)

maior2 [h] = h
maior2 (h:t) | h > maior2 t = h
             | otherwise    = maior2 t

-- 9. frequencia
frequencia n lista = length [x | x <- lista, x == n]

-- 10. unico
unico n lista = (frequencia n lista) == 1

-- 11. maioresQue
maioresQue n lista = [x | x <- lista, x > n]

-- 12. concatena
concatena a b = a ++ b

-- 13. calda
calda (_:t) = t

-- 14. corpo
corpo [_] = []
corpo (h:t) = h : corpo t

-- 15. unique
unique [h] = [h]
unique (h:t) | not (pertence h t) = h : unique t
             | otherwise          = unique t

-- 16. n menores elementos

quicksort [] = []
quicksort l@(h:t) = quicksort small ++ mid ++ quicksort large
        where
            small = [x | x <- t, x < h]
            mid   = [x | x <- l, x == h]
            large = [x | x <- t, x > h]

_menores _ [] = []
_menores 0 _ = []
_menores n lista = head ordenada : menores (n - 1) (tail ordenada)
                where
                    ordenada = quicksort lista
menores n lista = [x | x <- lista, pertence x menos]
                where
                    menos = _menores n lista


-- 17. alter
juntar [] [] = []
juntar l  [] = l
juntar [] l  = l
juntar (ph:pt) (nh:nt) = ph : nh : juntar pt nt

alter 0 = []
alter n = juntar positivos negativos
        where
            positivos = [1 .. n]
            negativos = [-1, -2 .. (-n)]

-- 18. reverso
reverso [] = []
reverso (h:t) = (reverso t) ++ [h]

-- 19. divide
divide lista n = splitAt n lista

-- divide2 _ 0 = []
-- divide2 (x:xs) =

-- 20. intercal
intercal l1 l2 = juntar l1 l2

-- 21. uniao


uniao l1 l2 = l1 ++ [x | x <- l2, notElem x l1]

-- 22. intersec
intersec l1 l2 = [x | x <- l2, pertence x l1]

-- 23. sequencia
sequencia n m = [m, m + 1 .. m + n - 1]

-- 24. inserir ordenado
inserir n [] = [n]
inserir n (h:t) | n < h      = n : h : t
                | otherwise  = h : inserir n t

-- 25. isSorted
isSorted [h] = True
isSorted (h:m:t) | h <= m    = isSorted (m:t)
                 | otherwise = False

-- 26. qsort
qsort lista = quicksort lista

-- 27. rotEsq
rotEsq 0 palavra = palavra
rotEsq n (h:t) = rotEsq (n - 1) (t ++ [h])

-- 28. rotDir
rotDir 0 palavra = palavra
rotDir n palavra = rotDir (n - 1) word
               where
                   rev = reverse palavra
                   rot = (tail rev) ++ [(head rev)]
                   word = reverse rot

-- 29. upper
upper [] = []
upper (h:t) = toUpper h : upper t

-- 30. titulo _---------------------------------------------------------------------


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

-- 31. selec
selec palavra [] = []
selec palavra (h:t) = (palavra !! h) : (selec palavra t)

-- 32. isPalind
isPalind palavra | palavra == reverse palavra = True
                 | otherwise                  = False

-- 33. primo
primo n = [i | i <- [1..n], mod n i == 0] == [1, n]

_primo2 a b | b == 1       = True
            | mod a b == 0 = False
            | otherwise    = _primo2 a (b - 1)

primo2 n = _primo2 n (div n 2)

-- 34. sdig
sdig 0 = 0
sdig n = resto + sdig (div (n - resto) 10)
       where
           resto = (mod n 10)

-- 35. bubblesort -------------------------------------

bubblesort [] = []
bubblesort [x] = [x]
bubblesort (x:y:rest) =
  bubblesort (init bubbled) ++ [last bubbled]
  where
    (first, second) = if x > y then (y,x) else (x,y)
    bubbled = first : bubblesort (second:rest)

-- 36. compac --------------------------------------------
-- compac lista =
-- ##################



-- 37. splitints
splitints lista = (impares, pares)
                where
                    impares = [x | x <- lista, (mod x 2 == 1)]
                    pares = [x | x <- lista, (mod x 2 == 0)]

-- 38. perfeito
perfeito n | pertence n l = True
           | otherwise    = False
           where
               l = [x * x | x <- [1 .. n]]

-- 39. base, onde n esta na base b --------------------------
letras = ['A', 'B' .. 'Z']
numeros = ['0', '1' .. '9']

hexadecimal num | num < 10  = numeros !! num
                | otherwise = letras !! (num - 10)

base n b | n >= b =  base (div n b) b ++ [hexadecimal (mod n b)]
         | otherwise = show n

-- 40. partes ---------------------------------
-- partes lista =


-- implementacao da divisao de inteiros
divisao_inteiro n m | n < m = 0
                    | otherwise = 1 + divisao_inteiro (n - m)

-- Algoritmo de euclides
mcd :: Int -> Int -> Int
mcd a 0 = a
mcd a n = mcd b (mod a b)

--
