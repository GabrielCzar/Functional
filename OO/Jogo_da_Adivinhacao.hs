import System.Environment
import System.Random

main = do
  argumentos <- getArgs
  numero <- randomRIO (0 :: Int, read (argumentos !! 0) :: Int)
  let chances = read (argumentos !! 1) :: Int
  adivinharAleatorio numero chances

adivinharAleatorio :: Int -> Int -> IO()
adivinharAleatorio numero chances = do
  if chances > 0 then do
    putStrLn $ "Voce tem " ++ show chances ++ " chances de adivinhar o numero!"
    putStrLn "Digite um número: "
    num <- getLine
    if (read num) == numero then do
      putStrLn "Parabéns!"
      return ()
    else do
      putStrLn "Errou!"
      adivinharAleatorio numero (chances - 1)
  else do
    putStrLn "Não há mais chances!!!"
