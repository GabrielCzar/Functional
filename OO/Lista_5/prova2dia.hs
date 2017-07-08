import System.IO
-- A. Escreva um programa completo que reproduza a funcionalidade do utilitário wc:
-- ler entrada de um "pipe" e imprime o número de linhas, número de palavras e número de caracteres.

-- Exemplos :
-- $ echo "a maria tinha um cordeirinho" | runhaskell wc.hs
-- Linhas : 1
-- Palavras : 5
-- Caracteres : 29

main :: IO ()
main = do
  dados <- getContents
  mostrar dados

mostrar dados = do
  putStrLn $ "Linhas : " ++ (show $ length $ lines dados)
  putStrLn $ "Palavras : " ++ (show $ length $ words dados)
  putStrLn $ "Caracteres : " ++ (show $ length dados)
