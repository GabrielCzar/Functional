subconjuntos :: [a] -> [[a]]
subconjuntos [] = [[]]
subconjuntos (x:xs) = [x : ys | ys <- sub] ++ sub
                      where sub = subconjuntos xs
