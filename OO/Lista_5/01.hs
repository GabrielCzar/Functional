import System.IO
--abra e fecha arquivo

-- type Acao  = [(Int,String)]
-- main = do 
-- 	mapM print [(0,"adicionarTarefa"),(1,"removerTarefa")]
-- 	conteudo <- getLine
-- 	if verificarTarefa  [(0,"adicionar Tarefa"),(1,"remover Tarefa")] (read conteudo)::Int == True
-- 		then  
-- 			adicionarTarefa 
-- 	else do 
-- 		removerTarefa 


-- verificarTarefa::Acao -> Int -> Bool
-- verificarTarefa [] _  = False
-- verificarTarefa (a:b) n | fst a == n = True
--                         | otherwise =  verificarTarefa b n

-- adicionarTarefa = putStrLn $ "adicionando Funcionando"
-- removerTarefa  = putStrLn $ "removendo Funcionando"

--questao 3

type Acoes = [(Int,String)]

main = do
	mapM print [(0, "add"), (1, "excluir"), (2, "ver Arquivo")]
	putStrLn $ "Escolha a opcao:"
	conteudo <- getLine
	showAcao conteudo 


showAcao op  | op == "0" = adicionar
             | op == "2" = ver_Arquivo 
             |otherwise = main 


adicionar = do
	handle <- openFile "lista_tarefa.txt" AppendMode
	putStrLn $ "Digite a frase:"
	frase <- getLine
	hPutStr handle ("-" ++ frase ++ "\n")
	putStrLn $ "Frase adicionando com sucesso"
	hClose handle
	main

ver_Arquivo = do
	handle <- openFile "lista_tarefa.txt" ReadMode
	ver <- hGetContents handle
	putStrLn $ "--------------------"
	putStrLn $ "Lista de Tarefas"
	putStrLn $ ver
	putStrLn $ "--------------------"
	hClose handle
	main

	          




                                  
 
