main :: IO ()

main = do
    content <- readFile "numbers.txt"
    putStrLn content