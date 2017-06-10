-- Distancia entre dois pontos

hipotenusa a b c d = sqrt ((a - b) ** 2 + (c - d) ** 2)

distancia xA xB yA yB | yA == yB = abs(xA - xB)
                      | xA == xB = abs(yA - yB)
                      | otherwise = hipotenusa xA xB yA yB