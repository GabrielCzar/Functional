-- Questão 01
-- Questão 07 Lista 03 - 3,0 Pontos
-- Defina o comportamento de um tipo de dados Polinomio que representa um polinômio.
-- Implemente o corpo de cada função do módulo.
module Polinomio
(  polinomioZero,
   ePolinomioZero,
   construirPolinomio,
  -- grau,
  -- coeficienteLider,
  -- restoDoPolinomio
) where

data Polinomio a = PolinomioZero | ConstruirPolinomio Int a (Polinomio a)
                   deriving Eq

-- preencha com a função que retorna o polinômio zero
polinomioZero :: Polinomio a
polinomioZero = PolinomioZero

-- preencha com a função que indica verdadeiro caso o parâmetro informado seja o polinômio zero, falso caso contrário.
ePolinomioZero :: (Num a, Eq a) => Polinomio a -> Bool
ePolinomioZero PolinomioZero = True
ePolinomioZero _ = False

-- (construirPolinomio n b p) constroi o polinômio b * x ^ n + p
-- n é o expoente
-- b é o coeficiente
-- p é um polinômio
-- preencha com a função que constrói o polinômio de acordo com o tipo definido.
construirPolinomio :: Num a => Int -> a -> Polinomio a -> Polinomio a
construirPolinomio n b PolinomioZero = ConstruirPolinomio n b PolinomioZero
construirPolinomio n b polinomio = ConstruirPolinomio n b polinomio

-- grau é o maior expoente
-- preencha com uma função que, dado um polinômio, retorna o grau do mesmo.
grau :: Polinomio a -> Int
grau PolinomioZero = 0
grau (ConstruirPolinomio n b polinomio)
    | n > (grau polinomio) = n
    | otherwise = grau polinomio

-- coeficiente líder é o coeficiente do maior expoente do polininômio.
-- preencha com uma função que retorna o coeficiente líder de um polinômio informado.

findCoeficiente PolinomioZero _ = 1
findCoeficiente (ConstruirPolinomio n b polinomio) grau
    | n >= 0 && n == grau = b
    | otherwise = findCoeficiente polinomio grau

coeficienteLider :: Num a => Polinomio a -> a
coeficienteLider polinomio = findCoeficiente polinomio (grau polinomio)

-- resto do polinômio é o polinômio obtido pela remoção do coeficiente líder
-- TA COM ERRO
{-
remCoefLiderPoli PolinomioZero _ = PolinomioZero
remCoefLiderPoli (ConstruirPolinomio n b polinomio) coefLider
    | b == coefLider = polinomio
    | otherwise = ConstruirPolinomio n b (remCoefLiderPoli polinomio coefLider)

restoDoPolinomio :: Polinomio a -> Polinomio a
restoDoPolinomio polinomio = remCoefLiderPoli polinomio (coeficienteLider polinomio)

-}
-- aqui você deve fornecer uma função chamada show que recebe um polinômio e imprime sua representação em string.
-- exemplos:
-- pol1 = construirPolinomio 4 3 (construirPolinomio 2 (−5) (construirPolinomio 0 3 PolinomioZero))
-- show pol1 == "3x^4 + -5x^2 + 3"
-- pol2 = construirPolinomio 5 1 (construirPolinomio 2 5 (construirPolinomio 1 4 PolinomioZero))
-- show pol2 == "x^5 + 5x^2 + 4x"
-- pol3 = construirPolinomio 4 6 (construirPolinomio 1 2 PolinomioZero)
-- show pol3 == "6x^4 + 2x"

instance (Show a, Eq a) => Show (Polinomio a) where
    show PolinomioZero = ""
    show (ConstruirPolinomio n b polinomio) = show b ++ "x^" ++ show n ++ " + " ++ show polinomio


--
