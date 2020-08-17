main :: IO()
main = return()
myLast :: [a] -> a
myLast []     = error "empty list"
myLast [x]    = x
myLast (x:xs) = myLast xs
