main :: IO()
main = return()
elementAt :: [a] -> Int -> a
elementAt xs n
  | length xs < n = error "list too small"
  | n == 1 = head xs
  | otherwise = elementAt (tail xs) (n - 1)
