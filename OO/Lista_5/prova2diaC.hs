-- C. Faça um programa que leia um número n e imprime "sim", se o número é primo e "não", caso contrário.

module Main where

main :: IO ()
main = do
  n <- getLine
  putStrLn $ primo (read n)

primo :: Int -> String
primo n | [ i | i <- [1 .. n], mod n i == 0] == [1, n] = "sim"
        | otherwise = "não"
