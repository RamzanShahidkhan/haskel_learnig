--Exercise--
--INC--
inc :: Int -> Int
inc i =i+1
---incList---
{-
incList :: (a) ->[Int] -> [Int]
incList (+1) ls = ls  
-}
---map----

map' :: (a->c) -> [a] ->[c]
map' _ [] =[]
map' f (x:xs) = f x : map' f xs 

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

twice' :: (a->a) -> a ->a 
twice' f x = f (f x)

filter' :: (a -> Bool) -> [a] ->[a]
filter' _ [] = []
filter' f (x:xs)
        | f x = x : filter' f xs
        | otherwise = filter' f xs 		
    
