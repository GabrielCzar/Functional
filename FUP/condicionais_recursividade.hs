-- Distancia entre dois pontos
quadrado a b = (a - b) ** 2

hipotenusa x1 x2 y1 y2 = sqrt (quadrado x1 x2 + quadrado y1 y2)

distancia xA yA xB yB | yA == yB  = abs(xA - xB)
                      | xA == xB  = abs(yA - yB)
                      | otherwise = hipotenusa xA xB yA yB

iguais3 a b c | a == b && b == c           = 3
              | a /= b && b /= c && a /= c = 0
              | otherwise                  = 2

-- OU exclusivo
xor a b = (a || b) && not (b && a)

{-
Soma de N numeros
Sn = n (n + 1)
	 ---------
	 	 2
-}

soma 1 = 1
soma n = n + soma (n - 1)

-- Fatorial
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

