bmiTell :: (Fractional a, Ord a) => a -> a -> String
bmiTell weight height
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. I bet you're ugly!"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty"
    | otherwise = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2


bmiTell' :: (Fractional a, Ord a) => a -> a -> String
bmiTell' weight height
    | bmi <= skinny = "You're underweight, you emo, you!"
    | bmi <= normal = "You're supposedly normal. I bet you're ugly!"
    | bmi <= fat = "You're fat! Lose some weight, fatty"
    | otherwise = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat = 30.0


bmiTell'':: (Fractional a, Ord a) => a -> a -> String
bmiTell'' weight height
    | bmi <= skinny = "You're underweight, you emo, you!"
    | bmi <= normal = "You're supposedly normal. I bet you're ugly!"
    | bmi <= fat = "You're fat! Lose some weight, fatty"
    | otherwise = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2
          (skinny, normal, fat) = (18.5, 25.0, 30.0)


initials :: String -> String -> String
initials firstName lastName = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstName
          (l:_) = lastName


calcBmis :: (Fractional a, Ord a) => [(a, a)] -> [a]
calcBmis xs = map bmi xs
    where bmi (weight, height) = weight / height ^ 2
