
main = do
  num1 <- getLine
  num2 <- getLine
  putStrLn . show $ (+) (read num1 :: Int) (read num2 :: Int)
