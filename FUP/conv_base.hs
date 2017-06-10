import Data.Digits (digits, unDigits)

convertBase :: Integral a => a -> a -> [a] -> [a]
convertBase from to = digits to . unDigits from
