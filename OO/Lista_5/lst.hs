import System.IO

-- main = interact (unlines . map reverse . lines)

-- main = do
--  handle <- openFile "lst.txt" ReadMode
--  dados <- hGetContents handle
--      putStrLn $ (unlines . map reverse . lines dados)
--  hClose handle

main :: IO ()
main = do
  handle <- openFile "lst.txt" ReadMode
  dados <- hGetContents handle
  putStrLn $ "Linhas : " ++  (show $ length $ lines dados)
  putStrLn $ "Palavras : " ++ (show $ length $ words $ dados)
  putStrLn $ "Caracteres : " ++ (show $ length dados)
  hClose handle
