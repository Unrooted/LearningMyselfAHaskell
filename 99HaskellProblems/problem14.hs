main :: IO()
main = return()
dupli [] = []
dupli (x:xs) = x:x:dupli xs
