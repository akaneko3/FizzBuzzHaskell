module Main where

import Lib

main :: IO ()
main = mapM_ putStrLn $ take 100 fizzbuzz
