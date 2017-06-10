{-
INPUT : Dois inteiros positivos, n e b (1 < b < 37)
OUTPUT : Representação na base b do inteiro n

base 17 2 ==> "10001"
base 26 16 ==> "1A"
-}

letras = ['A', 'B' .. 'Z']
numeros = ['0', '1' .. '9']

hexadecimal num | num < 10  = numeros !! num
                | otherwise = letras !! (num - 10)

base n b | n >= b =  base (div n b) b ++ [hexadecimal (mod n b)]
         | otherwise = show n
