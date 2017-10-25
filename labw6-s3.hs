count :: a -> Int -> Int
count x y = 1+ y

countL :: Int -> a -> Int
countL x y = x+1
---1.. squareall using map---
squareall :: [Int] -> [Int]
squareall [] = []
--squareall (x:xs) = x^2 : squareall xs
squareall (xs) = map square xs
          where square x= x^2

squareall' = map (\x->x*x)

		  
--- map --
map' f [] = []
map' f (x:xs) = f x : map' f xs

--- 2.. nestedreverse ---
nestedreverse :: [[a]] -> [[a]]
nestedreverse [] = []
nestedreverse (xs) =reverse (map reverse xs)

--- 3.. atFront ---
{-
atFront :: a -> [[a]] -> [[a]]
atFront n []=[[n]]
atFront n (x:xs) =  map  xs
-}
---- 4.. Lengths of list ---
lengths :: [[Char]] -> [Int]
lengths [] = [0]
lengths xs = map (length) xs

--- 5.. parity ---
{-
parity :: [String] -> [Int]
--parity [] = []
parity xs 
        | (map (length) xs) % 2==0  = 1
		| otherwise =0
-}
--- 6.. wtel ---
wtel [] = []
--wtel xs = filter (length) xs
--wtel lst = filter (empty) lst
  --    where empty = x = not (null x)
wtel lst = let notNull x = not (null x)
           in filter notNull lst 

--- 8.. wvowel ---
--wvowel :: [String] -> [Char]
wvowel lst = filter ( `elem` ['a','i','o','u']) lst

map2 ::(a -> b) -> [a] -> [b]
map2 f xs = foldr (\x acc -> f x : acc)[] xs
---9.. wiv ---
wiv :: [String] -> [String]
wiv [] =[]
insert::Int->[Int]->[Int]
insert x  []    = [x]
insert x (y:ys)  
 | x<y      = x:y:ys
 |otherwise = y: insert x ys
 
isort::[Int]->[Int]
isort []     = []
isort (x:xs) = insert x (isort xs)
-----
{-
insert'::Int->[[Int]]->[[Int]]
insert' x  [[]]    = [[x]]
insert' x  ys  = [x]: insert' ys
-}

--atFront' :: a->[[a]] -> [[a]]
--atFront 

 
