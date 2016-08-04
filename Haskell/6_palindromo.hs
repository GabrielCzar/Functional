palindromo :: String -> String
palindromo palavra
        | palavra == (reverse palavra) = "sim"
        | otherwise                    = "nao"

