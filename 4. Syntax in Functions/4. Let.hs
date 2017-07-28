cylinder :: (Floating a) => a -> a -> a
cylinder r h = 
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^2
    in  sideArea + 2 * topArea


number1 = 4 * (let a = 9 in a + 1) + 2


squareList :: (Num a) => [a] -> [a]
squareList xs = let square x = x * x in map square xs


multHeyThere = (let a = 100; b = 200; c = 300 in a*b*c, let foo = "Hey "; bar = "there!" in foo ++ bar)


number2 = (let (a,b,c) = (1,2,3) in a+b+c) * 100


calcBmis :: (Fractional a) => [(a,a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]


calcBmis' :: (Fractional a) => [(a,a)] -> [a]
calcBmis' xs = let bmi (w, h) = w / h ^ 2 in map bmi xs
