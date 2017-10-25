{-
take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
      | n <= 0  = []
take' _[] = []
take' n (x:xs) = x : take' (n-1) xs
-}
 reverse' :: [a] -> [a]
 reverse' [] = []
 reverse' (x:xs) = reverse' xs ++ [x]

 --maximum ---
 
 maximum' ::(Ord a) => [a] -> a
 maximum' [] = error "maximum of empty list"
 maximum' [x] = x
 maximum' (x:xs)
          | x > maxTail = x
		  | otherwise = maxTail
		  where maxTail = maximum' xs 
		  
--- using max function ---
 maximum1' ::(Ord a) => [a] -> a
 maximum1' [] = error "maximum1 of empty list "
 maximum1' [x] = x
 maximum1' (x:xs) = max x (maximum1' xs)
 
 --middleNumber ---
 {-
 middleNumber :: Int -> Int -> Int -> Bool
 middleNumber x y z 
      | between y x z = x
      | between x y z = y
      | otherwise     =  z	 
-}	  
-- divide ---
 divider :: Int -> Int -> Int
 divider m n 
     | m< n = 0
	 | otherwise = 1 + divider (m-n) n
-- Take ----
 --take' ::(Num i, Ord i )=>i  -> [a] -> [a]
 take' ::Int ->[a]  -> [a] 
 take' n _
     | n <=0 =[]
 take' _ [] = []
 take' n (x:xs) = x: take' (n-1) xs
 -- elem ---
 elem' :: (Eq a ) => a -> [a] -> Bool
 elem' a [] = False
 elem' a (x:xs)
       | a== x = True
	   | otherwise = a `elem'` xs
--- flip ----
 flip' :: (a -> b -> c) -> b -> a -> c
 flip' f y x = f x y
-- map --
 map' :: (a -> b ) -> [a] -> [b]
 map' _ []= []
 map' f (x:xs) = f x : map' f xs 
 --filter ---
 filter' :: (a -> Bool) -> [a] -> [a]
 filter' _ [] = []
 filter' p (x:xs)
        | p x = x: filter' p xs
		| otherwise =filter p xs
---largestDivisible ---
 largDiv :: (Integral a) => a
 largDiv = head (filter p [100000,99999..])
       where p x = x `mod` 3892 ==0
	--- sum of odd power --
 --sum1 (takeWhile (<100000) [m | m <- [n^2 | n <- [1..]], odd m])
 chain' :: (Integral a ) => a ->[a]
 chain' 1 = [1]
 chain' n
       | even n = n:chain'(n `div` 2)
	   | odd n = n:chain'(n*3 +1 )
	   