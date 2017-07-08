-- Questão 02
-- Questão 04 Lista 02 - 2,0 Pontos
-- Um grafo é definido como uma lista de vértices e uma lista de arestas (pares ordenados que conectam dois vértices)
type Vertice = Int

type Grafo = ([Vertice], [(Vertice, Vertice)])

-- preencha com uma função que retorne verdadeiro se uma lista de vértices for um caminho no grafo, falso caso contrário.
-- Exemplos:
-- G = ([1 ,2 ,3] , [(1 , 2) , (2 , 1) , (2 , 3)])
-- caminho G [ 1 , 2 , 1 , 2 , 3] == True
-- caminho G [ 1 , 2 , 1 , 3] == False

existeCaminho :: [(Vertice, Vertice)] -> (Vertice, Vertice) -> Bool
existeCaminho [] _ = False
existeCaminho ((v, vs) : vss) (x, y)
    | v == x && vs == y = True
    | otherwise = existeCaminho vss (x, y)

existeVertice :: [Vertice] -> Vertice -> Bool
existeVertice vertices y = any (==y) vertices

caminho :: Grafo -> [Vertice] -> Bool
caminho _ [] = False
caminho (vertices, arestas) [x] = existeVertice vertices x
caminho (vertices, arestas) [x, y] = existeCaminho arestas (x, y)
caminho (vertices, arestas) (x:y:xs)
    | (existeCaminho arestas (x, y)) == False = False
    | otherwise = caminho (vertices, arestas) (y:xs)
