
slop :: (Fractional a,Num a) => (a,a) ->(a,a) -> a
slop (x1, y1) (x2,y2) 
                   | dx >0 = dy/dx
				   | otherwise ="error "
                   where dy = y2 - y1
                         dx = x2 - x1

reciproc :: (Fractional a) => a -> a
reciproc x = 1 / x
		
abst1  :: Int -> Int
abst1 n =
    if n >0 then n
    else  (-1)*(n)
	
abst2 :: Int -> Int 
abst2 x
     | x <=(-1)  = (-1)*(x)
	 | otherwise = x
	 
signNumb :: (Num a, Ord a)=> a -> a
signNumb n
         | n < 0 = -1
		 | n > 0 = 1
		 | n == 0 = 0
	 
maxThree :: (Num a, Ord a) => a -> a -> a -> a
maxThree p q r
         | ( p > q ) && (p > r) = p
		 | (q > p) && ( q > r) = q
		 | otherwise = r

threeDiff :: (Num a) => a -> a -> a -> Bool
threeDiff p q r 
              | p == q && q == r = True
			  | otherwise = False