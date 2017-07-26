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

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

listOfTuples = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]
sumOfTuples = [a+b | (a,b) <- listOfTuples]

head' :: [a] -> a
head' (x:_) = x
head' _ = error "Don't pass garbage to my function!!!"

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list is too long. first two elements are: " ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

firstLet :: String -> String
firstLet "" = "Empty string, whoops!"
firstLet all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]
