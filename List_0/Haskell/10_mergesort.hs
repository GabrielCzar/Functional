--Mergersort
fsthalf :: [t] -> [t]
fsthalf xs = take (div (length xs) 2) xs

sndhalf :: [t] -> [t]
sndhalf xs = drop (div (length xs) 2) xs

merge :: Ord t => [t] -> [t] -> [t]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
        | (x <= y)  = x : (merge xs (y:ys))
        | otherwise = y : (merge (x:xs) ys)

mergesort :: Ord t => [t] -> [t]
mergesort [] = []
mergesort [x] = [x] 
mergesort xs = merge (mergesort (fsthalf xs)) (mergesort (sndhalf xs))

