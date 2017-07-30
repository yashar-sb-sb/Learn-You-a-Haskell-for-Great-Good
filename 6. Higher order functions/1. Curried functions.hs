compareHundredWith :: (Num a, Ord a) => a -> Ordering
compareHundredWith = compare 100


compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = (`compare` 100)


divideByTen :: (Fractional a) => a -> a
divideByTen = (/10)


isUpperAlpha :: Char -> Bool
isUpperAlpha = (`elem` ['A'..'Z'])
