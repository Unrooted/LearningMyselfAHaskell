main :: IO ()
main = putStrLn (greet "World")

greeting = "Howdy"
greet who = greeting ++ ", " ++ who

add :: Int -> Int -> Int
add = (+)
