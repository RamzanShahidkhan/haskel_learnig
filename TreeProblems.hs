
data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show)

createTree = Node 'A'
                (Node 'B'
                    (Node 'D' Empty Empty)
                    (Node 'E' Empty Empty)
                )
                (Node 'C'
                    (Node 'F'
                        (Node 'H' Empty Empty)
                        (Node 'I' Empty Empty)						    )
                    (Node 'G' 
                        Empty 
                        (Node 'K'
                            (Node 'J' Empty Empty)
                            Empty
                        )
                    )
                )


preorder :: Tree a -> [a]
preorder Empty = []
preorder (Node x e d) =
	[x] ++ (preorder e) ++ (preorder d)
	
inorder :: Tree a -> [a]
inorder Empty = []
inorder (Node x e d) =
	(inorder e)++ [x] ++ (inorder d)
	
postorder :: Tree a -> [a]
postorder Empty = []
postorder (Node x e d) = (postorder e)++(postorder d)++[x]


incrl :: [Int] -> [Int]  -- increments entries (by 1)
incrl [] = []                         -- i.1
incrl (x:xs) = (x+1) : (incrl xs)     --1.2

pnats :: Int -> [Int]					--returns the positive naturals
pnats 1 = [1]           				--p.1
pnats (n + 1)= 1 : (incrl (pnats n))    --p.2

our_sum :: [Int] -> Int             --summation
our_sum [] = 0						--s.1
our_sum (x:xs) = x + (our_sum xs)	--s.2

our_length :: [a] -> Int				-- length
our_length [] = 0						-- 1.1
our_length (x:xs) = 1+ (our_length xs)  -- 1.2

----induction_2.pdf ----
imax :: [Int] ->Int       -- maximum entry in an integer list
imax [x] = x				-- base case im.1
imax (x:y:rest)				-- recursive step
	| y > x = imax( y:rest)	-- im.2a
	| otherwise = imax (x:rest)	 -- im.2b
	
--- function mymap ---
mymap :: (a -> c ) ->[a] -> [c]
mymap _ [] = []
mymap fun (x:xs) = (fun x): (mymap fun xs)

-----the function incr -----
incr :: Int -> Int  --- incrementation
incr n = 1 + n     -- ic.1