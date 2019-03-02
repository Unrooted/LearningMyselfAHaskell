factorial n = if n<2 then 1 else n * factorial (n-1)

main = print $ factorial 5