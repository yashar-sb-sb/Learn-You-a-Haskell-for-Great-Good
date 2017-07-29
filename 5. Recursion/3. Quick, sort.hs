quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted = quicksort [a | a <- xs, a > x]
    in smallerSorted ++ [x] ++ biggerSorted


qs :: (Ord a) => [a] -> [a]
qs [] = []
qs (x:xs) = qs(filter (<x) xs) ++ x:qs(filter (>=x) xs)
