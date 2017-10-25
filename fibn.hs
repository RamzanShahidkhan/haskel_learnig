fib :: Int -> Int 
fib 0 =1 
fib 1 =1 
fib n = fib(n-1) + fib(n-2)

charName :: Char -> String
charName 'a' = "Apple"
charName 'b' ="baba"
charName 'c' = "cat"
fstw :: (a, b) -> a
fstw (a, b) = a


fact :: Int -> Int
fact 0=1
fact 1=1
fact a = a * fact(a-1)

vectorAdd :: (Integral, Integral) -> (a, b) -> (a, b) -> (a,b)
vectorAdd (a, b) (c, d) = (a+c, b+d)


headd :: [a] -> a
headd [] = error "pattern error"
headd lst = lst!! 0

headp :: [a] -> a
headp [] = error "pattern unmatched"
headp (x:xs) =x




 