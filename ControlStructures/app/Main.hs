myIf True thenFunc elseFunc = thenFunc
myIf False thenFunc elseFunc = elseFunc

main = 
    let x = 2137
    in print $ myIf (x==2137) "is papaj" "is not papaj"