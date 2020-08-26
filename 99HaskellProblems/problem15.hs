main :: IO()
main = return()
repli :: [a] -> Int -> [a]
repli xs n = xs >>= replicate n
