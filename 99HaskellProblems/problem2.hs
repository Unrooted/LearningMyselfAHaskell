main :: IO()
main = return()
myButLast :: [a] -> a
myButLast xs
  | length xs < 2 = error "list too small"
myButLast [x, _]  = x
myButLast (_ :xs) = myButLast xs
