compareHundredWith :: (Num a, Ord a) => a -> Ordering
compareHundredWith = compare 100


divideByTen :: (Fractional a) => a -> a
divideByTen = (/10)
