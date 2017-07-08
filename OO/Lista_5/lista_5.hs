
main = do
	tests <- getLine
	let qtd  = read tests
	soma qtd 0

soma qtd s = do
	if qtd > 0 then do
		num <- getLine
		s += 1
	    soma (qtd - 1) s
	else do
		putStrLn $ "Soma: " ++ show s
		return ()
