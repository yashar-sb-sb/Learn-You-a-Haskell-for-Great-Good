replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0 = []
    | otherwise = x:replicate' (n-1) x


take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n [] = []
take' n _
    | n <= 0 = []
take' n (x:xs) = x:take' (n-1) xs


reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]


repeat' :: a -> [a]
repeat' x = x:repeat' x
