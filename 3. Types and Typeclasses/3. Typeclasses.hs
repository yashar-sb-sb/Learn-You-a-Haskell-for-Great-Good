elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' e (x:xs)
    | e == x = True
    | otherwise = elem' e xs

isSorted :: (Ord a) => [a] -> Bool
isSorted [] = True
isSorted [_] = True
isSorted xs = fIsSorted (<=) xs || fIsSorted (>=) xs
    where
        fIsSorted _ [] = True
        fIsSorted _ [_] = True
        fIsSorted f (x:y:xs) = x `f` y && (fIsSorted f $y:xs)
