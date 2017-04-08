quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort l@(h:t) = quicksort small ++ mid ++ quicksort large
        where 
            small = [x | x <- t, x < h]
            mid   = [x | x <- l, x == h]
            large = [x | x <- t, x > h] 
