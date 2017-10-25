
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

------------------------------------- Task 1 ------------------------------
showPic :: BPic -> IO()
showPic pic = putStr (concat (map (++"\n") pic))

sizePic :: BPic ->(Int,Int)
sizePic [] = (0,0)
sizePic (h:t) = (length h, (1+ length t))

isPic :: BPic -> Bool
isPic [] =False
isPic p = isEqual (map (length) p )

isEqual :: [Int] -> Bool
isEqual [] =False
isEqual [i] = True
isEqual (x:xs) =
          if x == head (xs)
		  then isEqual (xs)
		  else False


-------------------------------------- Task 2  ---------------------------
compPic :: BPic -> BPic
compPic [] = []
compPic pc = map (compL) pc 

compL :: String -> String
compL [] =[]
compL s = map (compC) s 

compC :: Char -> Char
compC ' ' = 'X'
compC  'X' = ' '
--------------------------------------- Task 3  ---------------------------

unionPic :: BPic -> BPic -> BPic
unionPic b1 b2 = zipWith (unionL) b1 b2 

unionL :: String -> String -> String
unionL st1 st2 = zipWith (uChar) st1 st2 

uChar :: Char -> Char -> Char
uChar a b 
        | (a==' ' && b==' ') = ' '
        | otherwise ='X'

---isecPic ----
isecPic :: BPic -> BPic -> BPic
isecPic p1 p2  = zipWith (isecL) p1 p2 

--- with a mathematical formula ---
isecPicFormula :: BPic -> BPic -> BPic
isecPicFormula p1 p2 =  compPic (unionPic (compPic (p1)) (compPic (p2)) )

isecL :: String -> String -> String
isecL s1 s2 = zipWith (charIsec) s1 s2
 
charIsec :: Char -> Char -> Char
charIsec a b 
        | (a=='X' && b=='X') = 'X'
        | otherwise =' '

--------------------------------------- Task 2  ---------------------------
rollup :: BPic -> BPic
rollup []=[]
rollup (x:xs) = xs ++ [x]

rolldown :: BPic -> BPic
rolldown [] = []
rolldown st = [last st] ++ (init st)

rollPic :: Int -> BPic -> BPic
rollPic _ [] = []
rollPic 0 pic = pic 
rollPic n pic 
            | n > 0 = (rollPic (n-1)(rollup pic))
			| n < 0  = ( rollPic (n+1) ( rolldown pic))
			
---------------------------------------- Task 5 --------------------------

movePic :: Int -> BPic -> BPic
movePic _  []= []
movePic 0 pic = pic
movePic n pic 
            | n > 0 = (movePic (n-1) (moveright pic ))
		    | otherwise = (movePic (n+1) (moveleft pic ))
			
moveright :: BPic -> BPic
moveright [] = []
moveright st = map (moveString) st 

moveString :: String -> String
moveString [] = []
moveString st = [last st] ++ (init st)

moveleft :: BPic -> BPic
moveleft [] = []
moveleft l = map (leftString) l

leftString :: String -> String
leftString [] =[]
leftString (x:xs) = xs ++ [x]
	
----------------------------------------- fusePic-------------------------
fusePic :: BPic -> BPic -> BPic
fusePic [] []= []
fusePic [] p2 = p2
fusePic p1 [] = p1
fusePic p1 p2 = zipWith (++) p1 p2 

------------------------------------------ Task 6.   --------------------
shiftPic :: Int -> Int -> BPic -> BPic
shiftPic _ _ [] = []
shiftPic 0 0 p = p
shiftPic 0 n p = rollPic n p 
shiftPic n 0 p = movePic n p
shiftPic m n p = (rollPic n (movePic m p))

              
------------------------------------------ Task 7 ---------------------------

rollPic1 :: Int -> BPic -> BPic
rollPic1 _ [] = []
rollPic1 0 pic = pic 
rollPic1 n pic 
            | n > 0 = (rollPic1 (n-1)(rollup1 pic))
			| n < 0  = ( rollPic1 (n+1) ( rolldown1 pic))

movePic1 :: Int -> BPic -> BPic
movePic1 _  []= []
movePic1 0 pic = pic
movePic1 n pic 
            | n > 0 = (movePic1 (n-1) (moveright1 pic ))
		    | otherwise = (movePic (n+1) (moveleft1 pic ))
		
rolldown1 :: BPic -> BPic
rolldown1 [] = []
--rolldown1 st = tail st
rolldown1 st = reverse( tail (reverse st)) 

rollup1 :: BPic -> BPic
rollup1 []=[]
rollup1 (x:xs) = xs 
		
moveString1 :: String -> String
moveString1 [] = []
--moveString1 st = tail st 
moveString1 st =  reverse( tail (reverse st))

moveright1 :: BPic -> BPic
moveright1 [] = []
moveright1 st = map (moveString1) st 

leftString1 :: String -> String
leftString1 [] =[]
leftString1 st = tail st

moveleft1 :: BPic -> BPic
moveleft1 [] = []
moveleft1 l = map (leftString1) l

			
shiftPic_e :: Int -> Int -> BPic -> BPic
shiftPic_e _ _ [] = []
shiftPic_e 0 0 p = p
shiftPic_e 0 n p = rollPic1 n p 
shiftPic_e n 0 p = movePic1 n p
shiftPic_e m n p = (rollPic1 n (movePic1 m p))

------------------------------------------------- Task 8 --------------------------------
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

framePic_v :: Char -> BPic -> BPic
framePic_v c [] = []
framePic_v c (h:t) = [ (c : h ++ c:"")] ++ framePic_v c t 

frame_char :: Char -> BPic -> BPic
frame_char c (h:t) = [(filledL_h (length h+2) c )] ++ framePic_v c (h:t) ++ [(filledL_h (length h+2) c)]

frame_string :: String -> [String] -> [String]
frame_string x y 
            | (length x ==1) = frame_char (x !! 0) y 
			| otherwise = frame_string (tail x) (frame_char (x !! 0) y)

framePic :: BPic -> BPic 
framePic xs = frame_string "|" xs 


--------------------------------------------- Task 9 --------------------
mirror_h :: BPic -> BPic
mirror_h [] = []
mirror_h st = reverse st

mirror_v :: BPic -> BPic
mirror_v [] =[]
mirror_v st = map (reverse) st








