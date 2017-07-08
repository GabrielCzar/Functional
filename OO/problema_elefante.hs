import System.IO

main = do
    qtd_elefantes <- getLine
    if (read qtd_elefantes) <= 1 then do
        putStrLn $ qtd_elefantes ++ " elefante não incomoda."
        return ()
    else do
        mostrar [2..(read qtd_elefantes)]

mostrar :: [Int] -> IO ()
mostrar [a] = return ()
mostrar (x:xs) = do
    putStrLn $ "Se " ++ show x ++ " elefantes incomodam muita gente..."
    putStrLn $ show (x + 1) ++ " incomodam muito mais."
    mostrar xs (edited)
