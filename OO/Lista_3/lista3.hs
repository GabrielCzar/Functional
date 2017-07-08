-- 00.
{-
data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where
  Red == Red = True
  Green == Green = True
  Yellow == Yellow = True
  _ == _ = False
-}

-- 01. Ex.:  F 1 2 = 1 / 2

data Fracao = F Integer Integer

instance Num Fracao where
  negate (F a b) = F (-a) b
  abs (F a b) = F (abs a) (abs b)
  (+) (F a b) (F c d) = F (a * d +  c * b) (b + d)
  (*) (F a b) (F c d) = F (a * c) (b * d)
  fromInteger _ = error ("ERROR. Operação inválida")
  signum _ = error ("ERROR. Operação inválida")

-- Falta o caso das variacoes de uma fracao
instance Eq Fracao where
  (==) (F a b) (F c d) = (a == c) && (b == d)

instance Show Fracao where
  show (F a b) = (show a) ++ "/" ++ (show b)

-- 02
data Stack a = Empty | Top a ( Stack a )

equals :: (Eq a) => Stack a -> Stack a -> Bool
equals Empty Empty = True
equals _ Empty = False
equals Empty _ = False
equals (Top x pilhax) (Top y pilhay) | x == y = equals pilhax pilhay
                                     | otherwise = False

instance Eq a => Eq (Stack a) where
  (==) a b = equals a b

instance Show a => Show (Stack a) where
  show Empty = "Empty"
  show (Top x pilha) = (show x) ++ "\n" ++ (show pilha)

push :: a -> Stack a -> Stack a
push x Empty = Top x Empty
push x (Top y pilha) = Top x (push y pilha)

pop :: Stack a -> Maybe (Stack a)
pop Empty = Nothing
pop (Top _ pilha) = Just pilha

height :: Stack a -> Int
height Empty = 0
height (Top x pilha) = 1 + height pilha

top :: Stack a -> Maybe a
top Empty = Nothing
top (Top x _) = Just x

empty :: Stack a
empty = Empty

isEmpty :: Stack a -> Bool
isEmpty Empty = True
isEmpty _ = False

_show :: Show a => Stack a -> String
_show Empty = "Pilha_de_altura_0"
_show (Top x pilha) = "Pilha_de_altura_" ++ show (height (Top x pilha)) ++ "_e_topo_" ++ show x

-- 03

data Queue a = Vazio | Start a ( Queue a )

instance Show a => Show (Queue a) where
  show Vazio = "Empty"
  show (Start x fila) = (show fila) ++ (show x) ++ "\n"

startQueue :: Queue a -> Maybe a
startQueue Vazio = Nothing
startQueue (Start x _) = Just x

endQueue :: Queue a -> Maybe a
endQueue Vazio = Nothing
endQueue (Start x Vazio) = Just x
endQueue (Start x fila)  = endQueue fila

pushQueue :: a -> Queue a -> Queue a
pushQueue x fila = Start x fila

popQueue :: Queue a -> Queue a
popQueue Vazio = Vazio
popQueue (Start _ fila) = fila

isEmptyQueue :: Queue a -> Bool
isEmptyQueue Vazio = True
isEmptyQueue _ = False

lenQueue :: Queue a -> Int
lenQueue Vazio = 0
lenQueue (Start _ fila) = 1 + lenQueue fila

{-
Enquanto uma dada F i l a de e n t r a d a
não f o r v a z i a e n t ã o o e l e m e n t o
i n i c i a l ( s t a r t Q u e u e ) é r em ov id o e
p r o c e s s a d o por uma f u n ç ã o de e n t r a d a .
A s aı́ d a é a l i s t a d o s v a l o r e s o b t i d o s
-}


whileNotEmpty :: (a -> b) -> Queue a -> [b]
whileNotEmpty _ Vazio = []
-- whileNotEmpty (_) (Start x fila) = [x] ++ whileNotEmpty (_) fila











--
