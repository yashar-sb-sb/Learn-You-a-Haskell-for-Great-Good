bmiTell :: (Fractional a, Ord a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. I bet you're ugly!"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty"
    | otherwise = "You're a whale, congratulations!"


bmiTell' :: (Fractional a, Ord a) => a -> a -> String
bmiTell' weight height
    | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"
    | weight / height ^ 2 <= 25.0 = "You're supposedly normal. I bet you're ugly!"
    | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty"
    | otherwise = "You're a whale, congratulations!"
