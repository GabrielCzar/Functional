
main :: IO ()
main = do
  let vogais = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  value <- getLine
  putStrLn $ foldrDuplicar value vogais

foldrDuplicar value vogais = foldr (\x acc -> if (elem x vogais) then (x : x : acc) else (x : acc)) [] value

duplicar [] _ = []
duplicar (x:xs) vogais = if (elem x vogais) then x : x : duplicar xs vogais else x : duplicar xs vogais

foldlDuplicar value vogais = foldl (\acc x -> if (elem x vogais) then (acc ++ [x, x] ) else (acc ++ [x]) ) [] value
