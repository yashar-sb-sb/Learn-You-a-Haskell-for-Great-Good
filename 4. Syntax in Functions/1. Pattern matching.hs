lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky _ = "Sorry, you're out of luck, pal!"

lucky' :: (Integral a) => a -> Bool
lucky' 4 = True
lucky' 7 = True
lucky' x
    | x `div` 10 > 0 = lucky' (x `mod` 10) && lucky' (x `div` 10)
lucky' _ = False
