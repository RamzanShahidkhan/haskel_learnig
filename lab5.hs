
fact :: Int -> Int
fact n
 | n == 0 = 0
 | n == 1 = 1
 | otherwise = n * fact(n-1)
 
comparef :: (Ord a) => a->a -> Ordering
comparef x y
           | (x < y) = LT
		   | (x > y) = GT
		   | otherwise = EQ
{-		
max' :: (Ord a) => a -> a -> a
 max' a b
     | a >b   = a
     | otherwise = b
	 -}
(&) False _ = False
(&) _ False = False
(&) _ _  = True


(^^) True _ = True
(^^) _ True = True 
(^^) _ _  = False

--slop :: (Int,Int)-> (Int, Int) -> Int 
--slop (x1, y1) (x2,y2) = let dy = y2 - y1
  --                          dx = x2 - x1
				--		in dy/dx
						
--reciproc
isLower :: Char -> Bool
isLower x='a' <= x && x <='z'

