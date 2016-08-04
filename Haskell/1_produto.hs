produto :: [Int] -> Int
produto [] = 0
produto [h] = h
produto (head:tail) = head * produto tail
