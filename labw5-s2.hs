{- Q1 -}
enumFromTo1 :: Int -> Int -> [Int]
enumFromTo1 m n 
             | m > n = []
			 | m <= n = m : enumFromTo1 (m+1) n
		
enumFromToo :: Int -> [Int]
enumFromToo m 
              | m ==0 =[]
			  | m >0 =m : enumFromToo (m+1) 
 {- Q2 -}  
fact :: Int -> Int
fact n 
       | n==0  = 1
	   | n==1  = 1 
	   | n > 1 = (n * fact(n-1)) 
sumFac e 
       | e==0  =1 
	   | (e >= 1) = (fact(e) + sumFac(e-1))
	 
{- Q3 -}
remaind' :: Int -> Int -> Int 
remaind' n d
          | n < d = n 
		  | n > d = remaind'(n-d) d
divide' :: Int -> Int -> Int
divide' n d 
         | n < d = 0
		 | n== d = 1
		 | n > d = divide'(n-d) d 
           		  


{- Q4 -}
(^^^) :: Int -> Int -> Int
(^^^) m 0 = 1
(^^^) m n = m*(m^^^(n-1))
{- Q5 a -}
{-
init' :: [a] -> [a]
init' [] = error " pattern match failureee"
init' (t)  = []
init' (h:t) = h: init' t

-}
 {-
init1 :: [a] -> [a]
init1 n
      | n == [] = error "bas kar error ha "
	  
      | h:t = h:init1 t
	   -}
{- Q5 b replicate -}
replicate' :: Int->a->[a]
replicate' 0 x = []
replicate' n x = x:replicate' (n-1) x

{- Q6 -}
zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys
{- Q9 -}

pairs xs = zip xs (tail xs)

{- Q11 -}
zipp3 :: [a] -> [b] -> [c] -> [(a,b,c)]
zipp3 _ _ [] = []
zipp3 _ [] [] = []
zipp3 [] _ _ = []
zipp3 [] [] _ = []
zipp3 _ [] _  = []
zipp3 (x:xs) (y:ys) (z:zs) = (x,y,z) : zipp3 xs ys zs

{- Q13 -}
{-
myOR :: [Bool] -> Bool
myOR [_ True] = True
myOR [True _] = True

myor :: [Bool] -> Bool
myor (h:t)
	| h==[] = False
	| h==[True] = True
	|otherwise = myor(t)
-}
----- Q14 qsorting ------
---------- using let-----------	
qsort :: (Ord a) => [a] -> [a]  
qsort [] = []  
qsort (x:xs) =   
    let smallerSorted = qsort [a | a <- xs, a <= x]  
        biggerSorted = qsort [a | a <- xs, a > x]  
    in  smallerSorted ++ [x] ++ biggerSorted
---- using where in qsort ---
--qsort' :: (Ord a) -> [a] -> [a]
--qsort' [] = []
--qsort' (x:xs) = smaller ++ [x] ++ larger
  --       where smaller = qsort' [a | a <- xs, a <= x]
	--           larger = qsort' [a | a <- xs, a > x]

