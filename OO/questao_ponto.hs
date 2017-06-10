import Data.List

quadrado lista = map (^2) lista


dividir _ [] = []
dividir n (x:xs) | length (x:xs) > 0 = [x / n] ++ dividir (n + 1) xs
                 | otherwise = []

somatorio lista = foldl (+) 0 (dividir 1 (quadrado lista))


somatorio_hard lista = foldl (+) 0 [(fromIntegral ((lista !! (x - 1))^2)) / (fromIntegral (x)) | x <- [1 .. (length lista)]]
