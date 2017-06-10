-- Fibonacci

fibonacci 0 = 0
fibonacci 1 = 1 
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2) 

-- Casamento de padroes

f_or False False = False
f_or _ _         = True

-- Avaliacao preguicosa (forma de solucao feita pelo haskell)
{-
menor x y | x < y     = x
          | otherwise = y

triplo x = 3 * x

dobro x = x + x

f a b = dobro (triplo (menor 9 8))
	  = triplo (menor 9 8) + triplo (menor 9 8)
	  = 3 * menor (9 8) + 3 * menor (9 8)
	  = 3 * 8 + 3 * menor 9 8
	  = 24 + 3 * 8
	  = 24 + 24
	  = 48
-}

-- saber quantos divisiveis de n em um intervalo

multi_int a b c | (b <= a || b - a == 1) = 0
                | (mod (b - 1) c   == 0) = 1 + multi_int a (b - 1) c
                | (mod (b - 1) c   /= 0) = 0 + multi_int a (b - 1) c

-- 4. quantos n sao necessarios para diferenca de euler^x do haskell para o seu ser 0.001

fatorial n | n == 0    = 1
           | otherwise = n * fatorial (n - 1)

taylor n x | n == 0 = 1
           | otherwise ((x ** n) / fatorial n) + (taylor (n - 1) x)

taylor10 x = taylor 10 x

erro n x = abs (exp x - taylor n x)

quantidade n x p | erro n x < p = n
                 | otherwise = quantidade (n  + 1) x p


-- 

