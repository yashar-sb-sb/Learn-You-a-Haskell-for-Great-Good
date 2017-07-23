-- Lists
someNumbers = [4,8,13,18,20]
eq = [4,8,13,18,20] == 4:8:13:18:20:[]
someString = 'A':" small cat"
concatenatedList = [1,2,3]++[4,5,6]
elementNum = [1,2,3,4,5,6] !! 3
elementStr = "abcdefghi" !! 0

-- Some function on lists
headElem = head someNumbers
tailList = tail someNumbers
lastElem = last someNumbers
initList = init someNumbers

-- Some more function on lists
lenSomeNumbers = length someNumbers
isEmptySomeNumbers = null someNumbers
reverseSomeNumbers = reverse someNumbers
first3 = take 3 someNumbers
dropFirst3TakeRest = drop 3 someNumbers
maxNum = maximum someNumbers
minNum = minimum someNumbers
sumNum = sum someNumbers
productNum = product someNumbers
has13 = 13 `elem` someNumbers

-- Ranges
range1to20 = [1..20]
range1to20Even = [2,4..20]
range1to20MultipleOfThree = [2,4..20]
range20to1 = [20,19..1]
weirdFloatRange = [0.1, 0.3 .. 1]

-- Infinite lists
infList = [13,26..]
takeInfListEq = take 24 infList == [13,26..24*13]
cycleList = cycle [1,2,3]
repeatElem = repeat 5
replicateNum = replicate 3 10

-- List comprehensions
evenComprehension = [x*2 | x <- [1..10]]
evenComprehensionGreaterThanOrEq12 = [x*2 | x <- [1..10], x*2 >= 12]
mod7is3From50to100 = [x | x <- [50..100], x `mod` 7 == 3]
boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
boomBangs7to13 = boomBangs [7..13]
multiPredicates = [ x | x <- [10..20], x /= 13, x /= 15, x /= 19]
multiLists = [ x*y | x <- [2,5,10], y <- [8,10,11]]
nouns = ["hobo", "frog", "pope"]
adjectives = ["lazy", "grouchy", "scheming"]
nounsAndAdjectives = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]
length' xs = sum [1 | _ <- xs]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
removeOdd = [ [ x | x <- xs, even x ] | xs <- xxs]

-- Tuples
tup = (10,13)
firstTup = fst tup
secondTup = snd tup
zipNums = zip [1..] ["one", "two", "three", "four", "five"]

-- Right triangles
rightTriangles = [ (a, b, c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
rightTriangles' = [ (a, b, c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a + b + c == 24]
