-- Definicao de tipos
data BOLEANO = False | True

data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)

surface :: Shape -> Float
surface (Circle _ _ r) = pi * r ^ 2
surface (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

create_circles a b [] = []
create_circles a b (c:xs) = (Circle a b c) : create_circles a b xs

data Person = Person String String Int Float String String

data Person2 = Person2 {
       firstName :: String
   ,   lastName :: String
   ,   age :: Int
   ,   height :: Float
   ,   number :: String
   ,   model :: String
   } deriving (Show)


-- construtor de tipo
data Maybe x = Nothing | Just x
