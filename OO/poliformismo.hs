data NomeCompleto = Nome String
iguala :: NomeCompleto -> NomeCompleto -> Bool
iguala (Nome a) (Nome b) = a == b

instance Eq NomeCompleto 
         where
           (==) = iguala
