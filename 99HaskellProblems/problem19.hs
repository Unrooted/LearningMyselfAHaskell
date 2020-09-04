main :: IO()
main = return()
rotate :: [a] -> Int -> [a]
rotate xs n = let n' = if n <0 then (length xs + n) else n in drop n' xs ++ take n' xs
