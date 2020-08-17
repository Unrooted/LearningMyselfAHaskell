main :: IO()
main = return()
reverser :: [a] -> [a]
reverser list = reverser' list []
  where
    reverser' [] reversed     = reversed
    reverser' (x:xs) reversed = reverser' xs (x:reversed)
