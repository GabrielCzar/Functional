import System.Environment
import System.Random

main = do
    argumentos <- getArgs
    let maxValue = read $ argumentos !! 0 :: Int
--    numero <- randomRIO (0 :: Integer, maxValue :: Integer)
    soma maxValue 0

soma :: Int -> Int -> IO()
soma qtd s = do
  if qtd > 0 then do
    value <- getLine
    let t = (read value :: Int) + s
    soma (qtd - 1) t
  else do
    putStrLn $ "Soma: " ++ show s
    return ()
