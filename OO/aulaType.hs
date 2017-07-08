--resolução da lista03


-- instance Eq Fracao where
-- 	(==) (Fracao a b) (Fracao c d) = (a == c) && (b == d)

-- -- numerador (Fracao a b) = a
-- -- denominador (Fracao a b) = b

-- instance Show Fracao where
-- 	show (Fracao a b) = (show a) ++ "/" ++ (show b)
data Fracao = F Integer Integer

instance Num Fracao where
  (+) (F a b) (F c d) = F (a * d + c * b) (b + d)
  (*) (F a b) (F c d) = F (a * c) (b * d)
  negate (F a b) = F (-a) b
  abs (F a b) = F (abs a) (abs b)
