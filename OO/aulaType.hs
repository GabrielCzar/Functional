--resolução da lista03
data Fracao = F Integer Integer

 
-- instance Eq Fracao where
-- 	(==) (Fracao a b) (Fracao c d) = (a == c) && (b == d)

-- -- numerador (Fracao a b) = a
-- -- denominador (Fracao a b) = b

-- instance Show Fracao where
-- 	show (Fracao a b) = (show a) ++ "/" ++ (show b)

instance Num Fracao where
	(+) (Fracao a b) (Fracao c d) = Fracao (a * d + c * b) (b + d)
	(*) (Fracao a b) (Fracao c d) = Fracao (a * c) (b * d)
	negate (Fracao a b) = Fracao (-a) b
	abs (Fracao a b) = Fracao (abs a) (abs b)
