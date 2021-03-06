main :: IO()
main = return()

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs) = if x `elem` (head (pack xs))
              then (x:(head (pack xs))):(tail (pack xs))
              else [x]:(pack xs)

pack' [] = []
pack' [x] = [[x]]
pack' (x:xs)
    | x == head h_p_xs = (x:h_p_xs):t_p_hs
    | otherwise        = [x]:p_xs
    where p_xs@(h_p_xs:t_p_hs) = pack' xs

encode :: Eq a => [a] -> [(Int, a)]
encode = map (\x -> (length x, head x)) . pack

data Encoded a
    = Single a
    | Multiple Int a
    deriving Show

encodeModified :: (Eq a) => [a] -> [Encoded a]
encodeModified = map f . encode
  where
    f (1,x) = Single x
    f (n,x) = Multiple n x