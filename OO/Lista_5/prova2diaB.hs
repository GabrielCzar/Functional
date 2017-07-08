-- b) Faça um programa que leia um número n e imprime n!

main :: IO ()
main = do
  num <- getLine
  putStrLn $ show $ fatorial (read num)

fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)
