-- 16

horner :: [Double] -> Double -> Double
horner [] z = 0
horner (x:xs) z = x + z * (horner xs z)

horner2 :: [Double] -> Double -> Double
horner2 cs z = foldr (\acc x -> acc + (z * x)) 0 cs
