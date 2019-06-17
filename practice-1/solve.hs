module Codewars.Kata.Spinning where
import Data.List
mapIf :: (a -> Bool) -> (a -> a) -> [a] -> [a]
mapIf p f = map f'
  where f' x | p x = f x | otherwise = x
  


spinWords :: String -> String
spinWords = unwords . (mapIf ((>=5) . length)  reverse) . words
