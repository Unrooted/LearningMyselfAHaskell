module Main(main) where

data MyType = MyDataConstructor String

class MyClass a where
    name :: a -> String

instance MyClass MyType where
    name (MyDataConstructor name) = name

func x = x
func' y = y

main = do
    print $ name (MyDataConstructor "Haskell")
    print $ 1400 + 53
    print $ (+) 2000 137