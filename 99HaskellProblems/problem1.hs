import Data.List

myLast :: [a] -> a
myLast []     = error "empty list"
myLast [x]    = x
myLast (x:xs) = myLast xs

