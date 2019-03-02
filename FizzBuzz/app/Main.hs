fizz :: Int -> String
fizz n | n `mod` 15 == 0  = "fizz buzz"
       | n `mod` 3  == 0  = "fizz"
       | n `mod` 5  == 0  = "buzz"
       | otherwise = show n

main :: IO()
main = mapM_ putStrLn $ map fizz [1..50]