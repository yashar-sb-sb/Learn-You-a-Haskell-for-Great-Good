lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky _ = "Sorry, you're out of luck, pal!"

lucky' :: (Integral a) => a -> Bool
lucky' 4 = True
lucky' 7 = True
lucky' x
    | x `div` 10 > 0 = lucky' (x `mod` 10) && lucky' (x `div` 10)
lucky' _ = False

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)

factorial' :: (Integral a) => a -> a
factorial' n = product [1..n]

factorials :: [Integer]
factorials = 1:[a*b | (a, b) <- zip [1..] factorials]
