applyTwice :: (a -> a) -> a -> a
applyTwice f x = f(f x)


zipWith' :: (a -> b -> z) -> [a] -> [b] -> [z]
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys
zipWith' _ [] _ = []
zipWith' _ _ [] = []
