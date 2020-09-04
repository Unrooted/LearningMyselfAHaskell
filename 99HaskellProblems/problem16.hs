main :: IO()
main = return()
dropEvery :: [a] -> Int -> [a]
dropEvery xs k = go xs k
    where go []     _ = []
          go (_:xs) 1 = go xs k
          go (x:xs) i
            | i < 1     = error "invalid argument"  -- don't let k < 0 bottom out
            | otherwise = x:go xs (pred i)

dropEvery' xs k = map snd . filter ((0/=) . (flip mod) k . fst) $ zip [1..] xs
