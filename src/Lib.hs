module Lib
    ( fizzbuzz
    ) where

call :: Int -> String -> String
call n "" = show n
call _ s  = s

skip :: Int -> String -> [String]
skip n s = cycle $ replicate (n - 1) "" ++ [s]

fizz :: [String]
fizz = skip 3 "Fizz"

buzz :: [String]
buzz = skip 5 "Buzz"

fizzbuzz :: [String]
fizzbuzz = zipWith call [1..] $ zipWith (++) fizz buzz
