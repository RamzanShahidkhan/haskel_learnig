--sum--
{-
sum' :: [Int] -> Int
sum' n
     | [] =[]
	 | (n:nx) =n + sum' nx
	 -}
sum' :: [Int] -> Int
sum' [] = 0
sum' (h:t) = h + sum' t

--product--
product' :: [Int] -> Int
product' [] =1
product' (h:t) = h * product' t
--maximum---
max' :: [Int] -> Int
max' [] = 0
max' [x] = x
max' (x:xs) = max x (max' xs)
--minimum--
min' :: [Int] -> Int
min' [] = 0
min' [x] = x
min' (x:xs) = min x (min' xs)

-- foldright ---
foldRight :: (a -> b -> b) -> b ->  [a]  -> b
foldRight  _ b []= b
foldRight f b (h:t) = f h (foldRight f b t)

-- foldLeftt--
foldLeft ::(a -> b ->a) -> a -> [b] -> a
foldLeft  _ b [] = b
foldLeft  f b (h:t) = (foldLeft f (f b h) t)
-- foldr1 --
foldrOne' :: (a -> a -> a) -> [a] -> a
foldrOne' _ [x] = x
foldrOne'  f (x:xs) = f x (foldrOne' f xs) 
-- foldl1 ----
foldl1' :: (a -> a->a ) -> [a] -> a
foldl1' f [x] = x
foldl1' f (x:y:xs) = foldl1' f ((f x y):xs)

-- foldl1 using foldl ---
foldl1'' :: (a->a -> a) -> [a] ->a 
foldl1''f [x] = x
foldl1'' f (x:xs) =foldLeft f x xs 

---Length using fold --
count :: a ->Int -> Int
count x y = 1 + y

lengthr :: [a] -> Int
lengthr [] = 0
lengthr lst = foldRight (count) 0 lst
countL :: Int -> a -> Int
countL x y = x+1
lengthl :: [a] -> Int
lengthl [] = 0
lengthl lst = foldLeft (countL) 0 lst



          
		        


    