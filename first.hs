doubleMe x= x + x
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z
doubleYou x y= (x * 2) + (y *2)