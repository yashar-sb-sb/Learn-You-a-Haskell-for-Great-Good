someNumbers = [4,8,13,18,20]
eq = [4,8,13,18,20] == 4:8:13:18:20:[]
someString = 'A':" small cat"
concatenatedList = [1,2,3]++[4,5,6]
elementNum = [1,2,3,4,5,6] !! 3
elementStr = "abcdefghi" !! 0

headElem = head someNumbers
tailList = tail someNumbers
lastElem = last someNumbers
initList = init someNumbers

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
