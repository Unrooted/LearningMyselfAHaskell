main :: IO()
main = return()
slice :: [a] -> Int -> Int -> [a]
slice xs i k = chunk
  where chop = snd $ splitAt i' xs
        chunk = fst $ splitAt (k - i') chop
        i' = i - 1

