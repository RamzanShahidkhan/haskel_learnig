letter :: Char -> [String]
letter 'A' =[" AAA ","A   A","AAAAA","A   A","A   A"]
letter 'B' = ["BBBB","B   B","BBBB","B   B","BBBB"]

letter 'C'  = ["  CCC"," C   ","C   "," C   ","  CCC"]
showC = map (++"\n") (letter 'C')
showB = map (++"\n") (letter 'B')
lstB =concat(showB)
lstC = concat(showC)

showMat :: Char -> IO()
showMat ch = putStr (concat(map (++"\n")(letter ch)))

--stretch :: Int -> Int -> String -> String

horizontal :: Int -> String -> String
horizontal _ [] = []
horizontal n (x:xs) = (replicate n x) ++ horizontal n xs

hStretch :: Int -> Char -> String
hStretch i ch = replicate i ch

hStretchString :: Int -> String -> String
hStretchString i  st = concat (map (hStretch i) st)

hSList :: Int -> [String] -> [String]
hSList i lst = map (hStretchString i) lst 

vStretchString :: Int -> String -> String
vStretchString i str = concat ( replicate i ( str ++ "\n"))
vList :: Int -> [String] -> [String] 
vList i stlst= map (vStretchString i) stlst

--vList2 :: Int -> String -> String
--vList2 i ls =  (concat (map (vStretchString i) ls))

stretch :: Int -> Int -> [String] -> [String]
stretch i j lstt = vList j (hSList i lstt)

showMatt :: [String] -> IO()
showMatt stlstt= putStr ( concat stlstt)

--leftFrame
toStringList :: Int -> String -> [String]
toStringList _ [] = []
toStringList i str = (take i str): (toStringList i (drop i str))

stitch :: Int -> [String] -> String -> [String]
stitch _ _ [] = [] 
stitch _ [] _ = []
stitch i lst1 lst2 = zipWith (++) lst1 (toStringList (i-(length (head lst1))) lst2)


--vertical :: Int -> String -> String
--vertical _ [] = []


--stretch _ _ [] = []
--stretch n1 n2 (x:xs) = 
{-
stretch  num1 num2 (x:xs) = 
(vertical_S num2 [horizontal_S num1 x]) ++ (stretch num1 num2 xs)
-}

