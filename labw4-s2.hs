add3nums x y z = x+y+z

minmax x y = [min x y, max x y]

guess :: Int -> [Char]
guess 42 ="correct!"
guess x = "wrong guess!"

fib :: Int -> Int
fib 1 = 1 
fib 0 = 1
fib n = fib(n-1) + fib(n-2)

--charName :: Char -> [Char]
charName :: Char -> String
charName 'a' ="Apple"
charName 'b' = "Baby"
charName 'c' = "cat"

fst1 :: (a,b) -> a
fst1 (a, b) =a

end1 :: (a,b) -> b
end1 (a,b) = b

fact :: Int -> Int
fact 0 =1
fact 1 =1
fact n = n * fact(n-1)
--addVector :: (Integral a, Integral b) -> (a, b) -> (a, b) -> (a, b)
addVector (a, b) (c, d)= ( a+c, b+d)

head1 :: [a] -> a
head1 [] = error "pattern unmatched"
head1 lst = lst !! 0

head2 :: [a] -> a
head2 [] = error "pattern unmatched"
head2 (x:xs) = x

sum1 :: [Int] -> Int
sum1 [] =0
sum1 (x:xs) = x+sum1(xs)

length1 :: [Int] -> Int
length1 [] =0
length1 (x:xs) = 1 + length(xs)