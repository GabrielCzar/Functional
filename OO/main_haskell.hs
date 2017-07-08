main = do
	linha <- getLine
	if null linha
		then return ()
	else do
		putStrLn $ "Repetindo igual Fagner: " ++ linha
		main
