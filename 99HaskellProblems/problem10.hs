main :: IO()
main = return()
runs (x:xs) = run x 1 xs
  where
  run c n (y:ys) | c == y = run c (n+1) ys
  run c n ys = (c,n) : runs ys
runs [] = []
