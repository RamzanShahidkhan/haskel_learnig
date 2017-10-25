
zipWith' f xs ys=  [ f x y | x <- xs, y<-ys]

--- factorial --
fact x = foldl (*) 1 [1..x]

--- reverse ---
--reverseString :: [String] -> [String]
--reverseString x:xs = foldl (reverse) [] xs :x 

reverseString xs= foldr(\x lst -> lst ++ [x]) [] xs
numbers = take 10 (iterate (+1) 0)
evenNum  = take 40 (iterate (+2) 0)

dollars  = take 10 (iterate (+((100/100)*5)) 100)
dollars' = take 10 (iterate (*1.05) 100)
