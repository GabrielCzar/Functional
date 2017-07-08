type Linha = [Float]
data Matriz = Matriz {
    linhas :: Int,
    colunas :: Int,
    dados :: [Linha]
} deriving Show

zeroMatriz m n = Matriz m n dados
		where dados = [linha | i <- [1..m]]
                      linha = [0.0 | i <- [1..n]]

umMatriz m n = Matriz m n dados
		where dados = [linha | i <- [1..m]]
                      linha = [1.0 | i <- [1..n]]


identidadeMatriz :: Int -> Matriz
identidadeMatriz n = Matriz n n dados
		   where dados = [linha i | i <- [1..n]]
                         linha i = [elemento i j | j <- [1..n]]
                         elemento i j = if i == j then 1.0 else 0.0


somaMatriz :: Matriz -> Matriz -> Matriz
somaMatriz (Matriz la ca da) (Matriz lb cb db) = Matriz la ca dados
						where dados = [zipWith (+) (da !! i) (db !! i) | i <- [0..(la - 1)]]

produtoEscalarMatriz :: Float -> Matriz -> Matriz
produtoEscalarMatriz e (Matriz l c d) = Matriz l c dados
				       where dados = [multEscalar e (d !! i) | i <- [0..(l - 1)]]
				 	     multEscalar e linha = [e * (linha !! j) | j <- [0..(c - 1)]]

produtoMatriz :: Matriz -> Matriz -> Matriz
produtoMatriz (Matriz la ca da) (Matriz lb cb db) = Matriz la cb dados
						where dados =

							linha i = (da !! (i-1))
							coluna j = map (!! (j-1)) db
