
import Char
import Hugs.Prelude
type BPic = [String]
bpic :: Int -> BPic

bpic 1 = [" XXX ",
	      "X   X",
		  "XXXXX",
		  "X   X",
		  "X   X"]
		  
bpic 2 = [" XXX ",
	      "X   X",
		  "XXXXX",
		  "X X",
		  "X   X"] 
		  
bpic 3 = ["X      XXX   XX   XX  XXX ",
          "X     X   X  X X X X  X  X",
          "X     XXXXX  X  X  X  XXX ",
          "X     X   X  X     X  X   ",
          "XXXXX X   X  X     X  X   "]
		  
bpic 4 = ["    XXXXXXX XX ",
          "  XXXXXXXXXXXXX",
          "    XXX XXXXXXX",
          "    XXX     XXX",
          "X   XXX      XX",
          "X   XX    X  XX",
          "X   XX   XX  X ",
          "    XX   XX  X ",
          "    XXXXXXX    ",
          "    XXXXXXX    ",
          "    XXX XXX    ",
          "    XX   XX  XX",
          "    XXX XXX  XX",
          "    XXX  XX  XX",
          "    XX   XX  XX",
          "    XXX      XX",
          "    XXX      XX",
          "  XXXXXXXXXXXXX",
          " XXXXXXXXXXXXXX",
          "  XXXXXXXXXXX X"]
		  
bpic 5 = ["               ",
          "      XX       ",
          "    XXXXXX     ",
          "  XXXXXXXXXX   ",
          "XXXXXXXXXXXXXX ",
          "  XXXXXXXXXX   ",
          "    XXXXXX     ",
          "      XX       ",
          "               ",
          "               ",
          "               "]
		  
bpic 6 = ["               ",
          "               ",
          "               ",
          "               ",
          "      XX       ",
          "    XXXXXX     ",
          "  XXXXXXXXXX   ",
          "XXXXXXXXXXXXXX ",
          " XXXXXXXXXX    ",
          "  XXXXXX       ",
          "   XX          "]
--show1 = map (++"\n") (bpic 1)
--concat1 = concat(show1)
---------------------------- Task 1. ShowPic on Terminal -------------------
showPic :: BPic -> IO()
showPic pic = putStr (concat (map (++"\n") pic))
--- Size Of Picture ----
sizePic :: BPic ->(Int,Int)
sizePic [] = (0,0)
sizePic (h:t) = (length h, (1+ length t))

------- isPic --------------
{-
picss :: BPic -> Bool
picss [] = False
picss [d] = True
picss (x:xs) =
     if ((length x) == length (head(xs)))
     then picss (xs)
     else False
-}
isEqual :: [Int] -> Bool
isEqual [i] = True
isEqual (x:xs) =
          if x ==head (xs)
		  then isEqual (xs)
		  else False

isPic :: BPic -> Bool
isPic [] =False
isPic p = isEqual (map (length) p )
--isPic p = isEqual (convert (p))
convert :: BPic -> [Int]
convert [] =[]
convert st = map (length) st 


------------------------ Task 2. comPic ------
compC :: Char -> Char
compC ' ' = 'X'
compC  'X' = ' '

compL :: String -> String
compL [] =[]
compL s = map (compC) s 
compPic :: BPic -> BPic
compPic [] = []
compPic pc = map (compL) pc 

------------------------ Task 3.   unionPic -----
uChar :: Char -> Char -> Char
uChar a b 
        | (a==' ' && b==' ') = ' '
        | otherwise ='X'
unionL :: String -> String -> String
unionL st1 st2 = zipWith (uChar) st1 st2 

unionPic :: BPic -> BPic -> BPic
unionPic b1 b2 = zipWith (unionL) b1 b2 
{-
uChar :: Char -> Char -> Char
uChar ' ' 'X'= 'X'
uChar 'X' ' '= 'X'
uChar ' ' ' '= ' '
uChar 'X' 'X' = 'X'
-}
---unionL ---


---isecPic ----
charIsec :: Char -> Char -> Char
charIsec a b 
        | (a=='X' && b=='X') = 'X'
        | otherwise =' '
isecL :: String -> String -> String
isecL s1 s2 = zipWith (charIsec) s1 s2 

isecPic :: BPic -> BPic -> BPic
isecPic p1 p2  = zipWith (isecL) p1 p2 
 {-
cIsec :: Char -> Char -> Char
cIsec ' ' ' '= ' '
cIsec ' ' 'X' = ' '
cIsec 'X' ' ' = ' '
cIsec 'X' 'X' = 'X'
-}

--- with A formula ---
isecPicF :: BPic -> BPic -> BPic
isecPicF p1 p2 =  compPic (unionPic (compPic (p1)) (compPic (p2)) )

------------------------ Task 4. rollup --------------
rollup :: BPic -> BPic
rollup []=[]
rollup (x:xs) = xs ++ [x]
--rollup ls  = tail ls ++ [head ls]

rolldown :: BPic -> BPic
rolldown [] = []
--rolldown st = reverse( tail (reverse st) ++ [head (reverse st)])
rolldown st = [last st] ++ (init st)

rollPic :: Int -> BPic -> BPic
rollPic _ [] = []
rollPic 0 pic = pic 
rollPic n pic 
            | n > 0 = (rollPic (n-1)(rollup pic))
			| n < 0  = ( rollPic (n+1) ( rolldown pic))
			
--------------------- Task 5. moveright ,fusePic -------
moveString :: String -> String
moveString [] = []
moveString st = [last st] ++ (init st)
--moveString st =  reverse( tail (reverse st) ++ [head (reverse st)])

moveright :: BPic -> BPic
moveright [] = []
moveright st = map (moveString) st 
---------------- movePic -----------
leftString :: String -> String
leftString [] =[]
leftString (x:xs) = xs ++ [x]
--leftString st = tail st ++ [head st]

moveleft :: BPic -> BPic
moveleft [] = []
moveleft l = map (leftString) l

movePic :: Int -> BPic -> BPic
movePic _  []= []
movePic 0 pic = pic
movePic n pic 
            | n > 0 = (movePic (n-1) (moveright pic ))
		    | otherwise = (movePic (n+1) (moveleft pic ))
{-
fuse :: String -> String -> String
fuse [] [] = []
fuse t [] = t
fuse [] s = s
fuse s1 s2 = zipWith (++) s1 s2 
-}
			

fusePic :: BPic -> BPic -> BPic
fusePic [] []= []
fusePic [] p2 = p2
fusePic p1 [] = p1
fusePic p1 p2 = zipWith (++) p1 p2 
------------------------------ Task 6.   --------------------
shiftPic :: Int -> Int -> BPic -> BPic
shiftPic _ _ [] = []
shiftPic 0 0 p = p
shiftPic 0 n p = rollPic n p 
shiftPic n 0 p = movePic n p
shiftPic m n p = (rollPic n (movePic m p))
--shiftPic m n p = (movePic m (rollPic n p))
              
----------------------- Task 7.-------------
rolldown1 :: BPic -> BPic
rolldown1 [] = []
rolldown1 st = reverse( tail (reverse st))
--rolldown1 st = tail st 


rollup1 :: BPic -> BPic
rollup1 []=[]
rollup1 (x:xs) = xs 

rollPic1 :: Int -> BPic -> BPic
rollPic1 _ [] = []
rollPic1 0 pic = pic 
rollPic1 n pic 
            | n > 0 = (rollPic1 (n-1)(rollup1 pic))
			| n < 0  = ( rollPic1 (n+1) ( rolldown1 pic))
		
moveString1 :: String -> String
moveString1 [] = []
--moveString1 st = tail st 
moveString1 st =  reverse( tail (reverse st))

moveright1 :: BPic -> BPic
moveright1 [] = []
moveright1 st = map (moveString1) st 

leftString1 :: String -> String
leftString1 [] =[]
--leftString1 (x:xs) = xs
leftString1 st = tail st

moveleft1 :: BPic -> BPic
moveleft1 [] = []
moveleft1 l = map (leftString1) l
---------------- movePic -----------
movePic1 :: Int -> BPic -> BPic
movePic1 _  []= []
movePic1 0 pic = pic
movePic1 n pic 
            | n > 0 = (movePic1 (n-1) (moveright1 pic ))
		    | otherwise = (movePic (n+1) (moveleft1 pic ))

			
shiftPic_e :: Int -> Int -> BPic -> BPic
shiftPic_e _ _ [] = []
shiftPic_e 0 0 p = p
shiftPic_e 0 n p = rollPic1 n p 
shiftPic_e n 0 p = movePic1 n p
shiftPic_e m n p = (rollPic1 n (movePic1 m p))
--shiftPic m n p = (movePic m (rollPic n p))





--------------------- Task 8. FramePic --------------
filledL :: Char -> Int -> String
filledL c 0 = ""
filledL c n = c: filledL c (n-1)

------- filledPic ----------
filledPic :: Char -> (Int, Int) -> BPic
filledPic c (0,0) = []
filledPic c (a,b) = (filledL c a ): filledPic c (a, b-1)

filledL_h :: Int -> Char -> String
filledL_h 0 c = []
filledL_h x c = a : (filledL_h (x-1) a)
               where a= '-'

framePic_v :: Char -> [String] -> [String]
framePic_v c [] = []
framePic_v c (h:t) = [ (c : h ++ c:"")] ++ framePic_v c t 

frame_char :: Char -> [String] -> [String]
frame_char c (h:t) = [(filledL_h (length h+2) c )] ++ framePic_v c (h:t) ++ [(filledL_h (length h+2) c)]

frame_str :: String -> [String] -> [String]
frame_str x y 
            | (length x ==1) = frame_char (x !! 0) y 
			| otherwise = frame_str (tail x) (frame_char (x !! 0) y)

framePic :: BPic -> BPic
framePic xs = frame_str "|" xs 


----------------------- Task 9 mirror----
mirror_h :: BPic -> BPic
mirror_h [] = []
mirror_h st = reverse st
mirror_v :: BPic -> BPic
mirror_v [] =[]
mirror_v st = map (reverse) st








