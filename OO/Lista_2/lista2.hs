{-
-- 01. Safe Log usando Maybe

safeLog :: (Floating a, Ord a) => a -> Maybe a
safeLog x | x > 0 = Just (log x)
          | otherwise = Nothing

sf x =
  case safeLog x of
    Nothing -> error "Erro de execucao nessa porra!!!"
    Just k -> k

-- 02. Representacao de pontos
type Ponto = (Float, Float)

-- A. Distancia euclidiana
dist :: Ponto -> Ponto -> Float
dist (x1, y1) (x2, y2) = sqrt(((x1 - x2) ^ 2 + (y1 - y2) ^ 2))

-- B. somatorio das disancias consecutivas
comprimento :: [Ponto] -> Float
comprimento [p1, p2] = dist p1 p2
comprimento (x:y:xs) = dist x y + comprimento (y:xs)
-}

-- 03.

data Ponto2 = Pt Float Float
type Regiao = Ponto2 -> Bool
type Raio = Float

isInsideR :: Ponto2 -> Ponto2 -> Regiao
isInsideR (Pt x xs) (Pt y ys) (Pt z zs)
    | (z >= y && z <= x) && (zs >= xs && zs <= ys) = True
    | otherwise = False

retang :: Ponto2 -> Ponto2 -> Regiao
retang p q = isInsideR p q

isInsideC :: Ponto2 -> Raio -> Regiao
isInsideC (Pt x xs) r (Pt y ys)
    | y >= (x - r) && y <= (x + r) && ys >= (xs - r) && ys <= (xs + r) = True
    | otherwise = False

circ :: Ponto2 -> Raio -> Regiao
circ p r = isInsideC p r











--
