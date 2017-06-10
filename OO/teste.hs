mydiv2 :: Float -> Float -> Maybe Float
mydiv2 x 0 = Nothing
mydiv2 x y = Just (x / y)

example2 x y = 
    case mydiv2 x y of 
        Nothing -> putStrLn "Division by zero"
        Just q -> putStrLn (show q)
