cylinder :: (Floating a) => a -> a -> a
cylinder r h = 
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^2
    in  sideArea + 2 * topArea


number1 = 4 * (let a = 9 in a + 1) + 2
