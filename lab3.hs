doubleMe x= x + x
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z
doubleYou x y= (x * 2) + (y *2)

fst1 :: (a,b) -> a 
fst1 (a,b) =a
fact :: Integer -> Integer
fact n =product [1..n]