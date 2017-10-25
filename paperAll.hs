


impr :: [Int] -> Int
impr [] = 0
impr [_] = 0
impr (x:y:xs)
			| y > x = 1 + impr (y:xs)
			| otherwise = impr (y:xs)

psales :: [[Int]] -> [Int]
psales = map sum

pimpr ::[[Int]] ->Int
pimpr = impr.(map sum)