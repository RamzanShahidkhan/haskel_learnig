module Hasworks where
import Char
import Hugs.Prelude

--------------------------------------------
--                                        --
-- LECTURES START TUESDAY, 27/09/2016     --
--                                        --
--------------------------------------------

-- my first code ...
{-- comment over
several lines --}

square :: Int -> Int -- type signature
square x = x * x

square2 :: Float -> Float
square2 time = time * time

fourth :: Int -> Int               -- pointwise definition of fourth
fourth time = square (square time)

fourth2 :: Int -> Int      -- define fourth2 by the higher order function .
fourth2 = square . square  -- 'functional' 

fourth3 = square . square -- bad practice not to define the type

addtwo :: Int -> Int -> Int
addtwo first second = first + second

addthree :: Int -> Int -> Int -> Int -- 'where clause'
addthree f s t = total
  where
  first2 = f + s
  total  = first2 + t 

-- guards ...

smaller :: Int -> Int -> Int
smaller leftone rightone
  | leftone < rightone = leftone
  | otherwise          = rightone

-- bad style ...

smaller_ugly :: Int -> Int -> Int
smaller_ugly leftone rightone
  | (leftone < rightone) == True = leftone
  | otherwise          = rightone

fact :: Int -> Int
fact n = product [1..n]  -- use list comprehension for [1, 2, ..., n]

fact2 :: Integer -> Integer -- use the type Integer
fact2 n = product [1..n]  -- use list comprehension for [1, 2, ..., n]

{-
Type :? for help88
Hugs> 6+7
13
Hugs> (6+7)*3
39Hasworks> :reload
Hasworks> square (square 2)
16
Hasworks> square (square(2))
16
Hasworks> square square 2
ERROR - Type error in application
*** ExpressiHasworks> (False && True) || True
True
Hasworks> False && True
False
Hasworks> (&&) False True
False
Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
on     : square square 2
*** Term           : square
*** Type           : Int -> Int88
*** Does not match : a -> b -> c

Hasworks> (square . square) 2
16
Hasworks> :type square
square :: Int -> Int
Hasworks> :type (square . square)
square . square :: Int -> Int
Hasworks> :r
ERROR "HaswoHasworks> (False && True) || True
True
Hasworks> False && True
False
Hasworks> (&&) False True
False
Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
rks_2016.hs":22 - Undefined variable "t"
Char> :r
Hasworks> fourth 3
81
Hasworks> :r
Hasworks> fourth2 3
81
Hasworks> :r88
Hasworks> fourth3 3
81
Hasworks> :type fourth3
fourth3 :: Int -> Int

Hugs> 5+$$
ERROR - Syntax error in expression (unexpected end of input)
Hugs> :!lsHasworks> (False && True) || True
True
Hasworks> False && True
False
Hasworks> (&&) False True
False
Hasworks> 5 + 8Hasworks> 5 + 8
13
Hasworks> (+) 5 888
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3

13
Hasworks> (+) 5 8
13

functions_intro.pdf  Hasworks_2015.hs  Hasworks_2016.hs
Hugs> :load Hasworks_2016.hs
Hasworks> square 8
64
Hasworks> square2 8
ERROR - Undefined variable "square2"
Hasworks> :reload
Hasworks> square2 8
8.0
Hasworks> :reload
Hasworks> square2 8
64.0
Hasworks> :?
LIST OF COMMANDS:  Any command may be abbreviated to :c where
c is the first character in the full name.

:load <filenames>   load modules from specified files
:load               clear all files except prelude
:also <filenames>   read additional modules
:reload     Hasworks> (False && True) || True
True
Hasworks> False && True
False
Hasworks> (&&) False True
False
Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
        repeat last load command
:edit <filename>    edit file
:edit               edit last module
:module <module>    set module for evaluating expressions
<expr>              evaluate expressionHasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 988
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3

:type <expr>        print type of expression
:?                  display this list of commands
:set <options>      set command line options
:set                help on command line options
:names [pat]        list names currently in scope
:info <names>       describe named objects
:browse <modHasworks> (False && True) || True
True
Hasworks> False && True88
False
Hasworks> (&&) False True
False
Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
ules>   browse names exported by <modules>
:main <aruments>    run the main function with the given arguments
:find <name>        edit module containing definition of name
:cd dir             change directory
:gc                 force garbage collection
:version            print Hugs version
:quit               exit Hugs interpreter
Hasworks> :reload
Hasworks> square (square 2)
16
Hasworks> square (square(2))
16
Hasworks> square square 288
ERROR - Type error in application
*** Expression     : square square 2
*** Term           : square
*** Type           : Int -> Int
*** Does not match : a -> b -> c

Hasworks> (square . square) 2
16Hasworks> Hasworks> (False && True) || True
TrueHasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
488
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3
Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3

Hasworks> False && True
False
Hasworks> (&&) False TrueHasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 388
3
Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3

FalseHasworks> 5 + 888
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :rHasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3

Hasworks> smaller_ugly 9 3
3

Hasworks> 5 + 8
13Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3
Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3

Hasworks> (+) 5 8
13
:reloadHasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3


Hasworks> square (square 2)
16
Hasworks> square (square(2))Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r88
Hasworks> smaller_ugly 9 3
3
88
16
Hasworks> square square 2
ERROR - Type error in applicationHasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r88
Hasworks> smaller_ugly 9 3
3

*** Expression     : square square 2
*** Term           : square
*** Type           : Int -> IntHasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True88
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3
Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 988
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r88
Hasworks> smaller_ugly 9 388
3Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3
Hasworks> 5 + 8
13
Hasworks> (+) 5 888
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3


*** Does not match : a -> b -> c

Hasworks> (square . square) 2
16
Hasworks> :type square
square :: InHasworks> (False && True) || True
True
Hasworks> False && True
False
Hasworks> (&&) False True
False
Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
t -> Int
Hasworks> :type (square . square)
square . square :: Int -> IntHasworks> 5 + 8
1388
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3


Hasworks> :r
ERROR "Hasworks_2016.hs":22 - Undefined variable "t"
Char> :r
Hasworks> fourth 3
81
Hasworks> :r
Hasworks> fourth2 3
8188
Hasworks> :r
Hasworks> fourth3 3
81
Hasworks> :type fourth3
fourth3 :: Int -> Int

Hasworks> :type square
square :: Int -> Int
Hasworks> :type (square . square)
square . square :: Int -> Int
Hasworks> :r
ERROR "Hasworks_2016.hs":22 - Undefined variable "t"
Char> :r
Hasworks> fourth 3
81
Hasworks> :r
Hasworks> fourth2 3
81
Hasworks> :r
Hasworks> fourth3 388
81
Hasworks> :type fourth3
fourth3 :: Int -> Int
Hasworks> addtwo 9 3
12
Hasworks> :r
ERROR "Hasworks_2016.hs":36 - Undefined variable "first2"
Char> :r
Hasworks> addthree 2 3 4Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3

9

partial application: fix the leftmost argument of a Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True88
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3
function

Hasworks> (addtwo 10) 100
110
Hasworks> (addtwo 10) 1000Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3

1010
Hasworks> (addtwo 10) 10000
10010Hasworks> 5 + 8
13
Hasworks> (+) 5 8
138888
Hasworks> 6 < 9
True
Hasworks> (<) 6 9
True
Hasworks> :r
Hasworks> smaller 4 9
4
Hasworks> smaller 9 3
3
Hasworks> :r
Hasworks> smaller_ugly 9 3
3


useful for mapping ...

Hasworks> map (addtwo 10) [1,2,3,4]
[11,12,13,14]
Hasworks> map (addtwo 1) [1,2,3,4]
[2,3,4,5]
Hasworks> :t map
map :: (a -> b) -> [a] -> [b]
HasworkHasworks> (False && True) || True
True
Hasworks> False && True
False
Hasworks> (&&) False True
False
Hasworks> 5 + 8
13
Hasworks> (+) 5 8
1388
s> addtwo 3 2
5
Hasworks> square $$
25

$$ is the last output seen

Hasworks> not True
False
Hasworks> not False
True
Hasworks> :t not
not :: Bool -> Bool
Hasworks> False || True
True
Hasworks> False || False
False
Hasworks> False && True
False
Hasworks> (False && True) || True
True

built in logical operators,

infix, prefix, postfix,
Hasworks> (False && True) || True
True
Hasworks> False && True
False
Hasworks> (&&) False True
False
Hasworks> 5 + 8
13
Hasworks> (+) 5 8
13

-}

------------------------------------------
--                                      --
-- LECTURES END TUESDAY, 27/09/2016     --
--                                      --
------------------------------------------

-------------------------------------------------------------
-- Musicians TO BE CONSIDERED IN THE LAB CLASSES & AT HOME --
-------------------------------------------------------------

----------------------------------------------
-- Introductory example : Musicians - START --
----------------------------------------------

{- Purpose: Introductory example and explanation of :

built-in types, domain, range,argument(s),type checking, nesting of functions, type synonym, order immaterial, :load, :reload, :type, :?
partial function
-}

{- Haskell implementation of the functions 
   vocation, perform, effect and impact -}

impact :: Char -> Char      -- musicians' impacts
-- impact = effect . vocation
impact mus = effect (vocation mus) -- another possibility (pointwise)

vocation :: Char -> String  -- musicians' (unique) vocations
vocation 'R' = "ce"
vocation 'S' = "cp"
vocation 'L' = "cp"
vocation 'K' = "cp"
vocation 'B' = "cd"

perform :: Char -> String  -- musicians' performance activities
perform 'R' = "ce"
perform 'S' = "p"
perform 'L' = "p"
perform 'B' = "cd"

effect :: String -> Char -- activities' effect
effect profession
  | profession == "cp" = 'l'
  | otherwise          = 'e'



-- second version ...

data Musician = Rostropovich | Schuman | Liszt | Kodaly | Bernstein
                deriving (Eq, Show)

data Trade    = Cellist | Pianist | Conductor | Composer
                deriving (Eq, Show, Ord)

type Result = String

vocation2 :: Musician -> Trade    -- musicians' (unique) vocations
vocation2 Rostropovich = Cellist
vocation2 Schuman      = Composer
vocation2 Liszt        = Composer
vocation2 Kodaly       = Composer
vocation2 Bernstein    = Conductor

perform2 :: Musician -> Trade  -- musicians' performance activities
perform2 Rostropovich = Cellist
perform2 Schuman      = Pianist
perform2 Liszt        = Pianist
perform2 Bernstein    = Conductor

effect2 :: Trade -> Result -- activities' effect
effect2 profession
  | profession == Composer = "Lasting"
  | otherwise              = "Ephemeral"

impact2 = effect2 . vocation2

{-
Type :? for help
Hugs> 6+7
13
Hugs> :load Hasworks_2014.hs
Hasworks> :load Hasworks_2014.hs
ERROR "Hasworks_2014.hs":22 - Undefined type constructor "Chr"
Char> :load Hasworks_2014.hs
Hasworks> vocation 'R'
"ce"
Hasworks> vocation 'B'
"cd"
Hasworks> vocation 'A'
"
Program error: pattern match failure: vocation 'A'

Hasworks> show Liszt
"Liszt"
Hasworks> Liszt == Bernstein
False
Hasworks> Cellist < Conductor
True
Hasworks> Cellist > Conductor
False
Hasworks> :type vocation
vocation :: Char -> String
Hasworks> :type effect  
effect :: String -> Char
Hasworks> :type ord
ord :: Char -> Int
(The above shows that we can find out the type signature also of a built in function!)

Hasworks> fact 5
120
Hasworks> fact 10
3628800
Hasworks> fact 100
0
Hasworks> fact 1000
0
-}

-------------------------------------------
-- Introductory example: Musicians - END --
-------------------------------------------


--------------------------------------------------
-- LAB CLASS 29 September 2016 (Thursday) START --
--------------------------------------------------

---------------------------------------------------------------------------------------------------
-- NOTE: BELOW IS WHAT I (AC) HAVE PROGRAMMED IN FRONT OF THE CLASS.                             --
-- THE TASK WAS TO LOOK AT THE TUTORIAL SHEET BASED ON THE BOOKEXAMPLES IN SIMON THOMPSON's BOOK --
---------------------------------------------------------------------------------------------------

mult2, min2 :: Int -> Int
mult2 x = 2 * x
min2  y = y - 2

exor :: Bool -> Bool -> Bool -- pointwise definition
exor True  False = True
exor False True  = True
exor False False = False
exor True  True  = False

exorsec :: Bool -> Bool -> Bool -- pointwise definition 2nd version
exorsec True  False = True
exorsec False True  = True
exorsec _ _         = False

exor3 :: Bool -> Bool -> Bool -- pointwise definition 3nd version (not correct!)
exor3 _ _         = False
exor3 True  False = True
exor3 False True  = True

{-
DESIRED BEHAVIOUR: 
threedifferent 5 8 5
False
threedifferent 9 2 1
True
threedifferent 6 6 6
False
-}

threedifferent :: Int -> Int -> Int -> Bool -- Are the three input all different?
threedifferent x y z
  | x == y    = False
  | x == z    = False
  | z == y    = False
  | otherwise = True
{-
Test> threedifferent 5 8 5
False
Test> threedifferent 5 8 9
True
Test> 8 == 9
False
Test> :t (==)
(==) :: Eq a => a -> a -> Bool
Test> :t (=)
ERROR - Syntax error in expression (unexpected `=')
Test> (==) 6 9
-}

{-
DESIRED:

twodifferent 3 4
True
twodifferent 3 3
False
-}

twodifferent :: Int -> Int -> Bool
twodifferent first second
  | first == second = False
  | otherwise       = True
{-
Test> twodifferent 5 6
True
Test> twodifferent 5 5
False
-}
-- TASK: CREATE NEW VERSION OF threedifferent by using twodifferent ...

threedifferent2 :: Int -> Int -> Int -> Bool
threedifferent2 x y z
  | (twodifferent x y) && (twodifferent x z)  && (twodifferent y z) = True
  | otherwise                                                       = False

{-
Test> threedifferent2 3 4 5
True
Test> threedifferent2 3 5 5
False
Test> threedifferent2 5 4 5
False
Test> :r
Test> threedifferent2 5 4 5
False
-}
--------------------------------------------------
-- LAB CLASS 29 September 2016 (Thursday) END   --
--------------------------------------------------

----------------------------------------------
--                                          --
-- LECTURES START TUESDAY, 4th October 2016 --
--                                          --
----------------------------------------------

-- one function definde within another; not visible outside

threedifferent3 :: Int -> Int -> Int -> Bool
threedifferent3 x y z
  | (twodifferent2 x y) && (twodifferent2 x z)  && (twodifferent2 y z) = True
  | otherwise                                                          = False
  where
  twodifferent2 :: Int -> Int -> Bool
  twodifferent2 first second
    | first == second = False
    | otherwise       = True
{-
Hasworks> :r
ERROR "Hasworks_2016.hs":956 - Undefined variable "twodifferent2"
Char> :r
Hasworks> threedifferent3 3 5 7
True
Hasworks> twodifferent2 6 7
ERROR - Undefined variable "twodifferent2"

-}
{- Task: convert lower case to upper case ...
Hasworks> ord 'h'
104
Hasworks> ord 'H'
72
Hasworks> ord 'g'
103
Hasworks> ord 'G'
71
Hasworks> chr 103
'g'
Hasworks> chr (ord 'g')
'g'
Hasworks> :type 'g'
'g' :: Char
Hasworks> chr ((ord 'g') - 32)
'G'
... and if the character is not a letter then do not change ...
-}

toupper :: Char -> Char
toupper c
  | (ord c <= 122) && (ord c >= 97) = chr ((ord c) - 32) -- now: c contains a lower case letter
  | otherwise                       = c
{-
Hasworks> ord 'h'
104
Hasworks> ord 'H'
72
Hasworks> ord 'g'
103Hasworks> ord 'h'
104
Hasworks> ord 'H'
72
Hasworks> ord 'g'
103
Hasworks> ord 'G'
71
Hasworks> chr 103
'g'
Hasworks> chr (ord 'g')
'g'
Hasworks> :type 'g'
'g' :: Char
Hasworks> chr ((ord 'g') - 32)
'G'
Hasworks> ord '?'
63
Hasworks> chr ((ord '?') - 32)
'\US'
Hasworks> ord 'a'
97
Hasworks> ord 'z'
122
Hasworks> 5 <= 6
True
Hasworks> 5 <= 5
Truetoupper :: Char -> Char
toupper c
  | (ord c <= 122) && (ord c >= 97) = chr ((ord c) - 32) -- now: c contains a lower case letter
  | otherwise                       = c
Hasworks> 5 <= 3
False
Hasworks> 5 >= 3
True
Hasworks> :r
Hasworks> toupper 'g'
'G'
Hasworks> toupper 'G'
'G'
Hasworks> toupper '?'
'?'
Hasworks> ord 'G'
71
Hasworks> chr 103
'g'
Hasworks> chr (ord 'g')
'g'
Hasworks> :type 'g'
'g' :: Char
Hasworks> chr ((ord 'g') - 32)
'G'Hasworks> ord 'h'
104
Hasworks> ord 'H'
72
Hasworks> ord 'g'
103
Hasworks> ord 'G'
71
Hasworks> chr 103
'g'
Hasworks> chr (ord 'g')
'g'
Hasworks> :type 'g'
'g' :: Char
Hasworks> chr ((ord 'g') - 32)
'G'
Hasworks> ord '?'
63
Hasworks> chr ((ord '?') - 32)
'\US'
Hasworks> ord 'a'
97
Hasworks> ord 'z'
122
Hasworks> 5 <= 6
True
Hasworks> 5 <= 5
True
Hasworks> 5 <= 3
False
Hasworks> 5 >= 3
True
Hasworks> :rtoupper :: Char -> Char
toupper c
  | (ord c <= 122) && (ord c >= 97) = chr ((ord c) - 32) -- now: c contains a lower case letter
  | otherwise                       = c
Hasworks> toupper 'g'
'G'
Hasworks> toupper 'G'
'G'
Hasworks> toupper '?'
'?'
Hasworks> ord '?'
63
Hasworks> chr ((ord '?') - 32)
'\US'
Hasworks> ord 'a'
97
Hasworks> ord 'z'Hasworks> ord 'h'
104
Hasworks> ord 'H'Hasworks> ord 'h'
104
Hasworks> ord 'H'
72
Hasworks> ord 'g'
103
Hasworks> ord 'G'
71
Hasworks> chr 103
'g'
Hasworks> chr (ord 'g')
'g'
Hasworks> :type 'g'
'g' :: Char
Hasworks> chr ((ord 'g') - 32)
'G'
Hasworks> ord '?'
63
Hasworks> chr ((ord '?') - 32)
'\US'
Hasworks> ord 'a'
97
Hasworks> ord 'z'
122
Hasworks> 5 <= 6
True
Hasworks> 5 <= 5
True
Hasworks> 5 <= 3
False
Hasworks> 5 >= 3
True
Hasworks> :r
Hasworks> toupper 'g'toupper :: Char -> Char
toupper c
  | (ord c <= 122) && (ord c >= 97) = chr ((ord c) - 32) -- now: c contains a lower case letter
  | otherwise                       = c
'G'
Hasworks> toupper 'G'
'G'
Hasworks> toupper '?'
'?'
72
Hasworks> ord 'g'
103
Hasworks> ord 'G'
71
Hasworks> chr 103
'g'
Hasworks> chr (ord 'g')
'g'
Hasworks> :type 'g'
'g' :: Char
Hasworks> chr ((ord 'g') - 32)
'G'Hasworks> ord 'h'
104
Hasworks> ord 'H'
72
Hasworks> ord 'g'
103
Hasworks> ord 'G'
71
Hasworks> chr 103
'g'
Hasworks> chr (ord 'g')toupper :: Char -> Char
toupper c
  | (ord c <= 122) && (ord c >= 97) = chr ((ord c) - 32) -- now: c contains a lower case letter
  | otherwise                       = c
'g'
Hasworks> :type 'g'
'g' :: Char
Hasworks> chr ((ord 'g') - 32)
'G'
Hasworks> ord '?'
63
Hasworks> chr ((ord '?') - 32)
'\US'
Hasworks> ord 'a'
97
Hasworks> ord 'z'
122
Hasworks> 5 <= 6
True
Hasworks> 5 <= 5
True
Hasworks> 5 <= 3
Falsetoupper :: Char -> Char
toupper c
  | (ord c <= 122) && (ord c >= 97) = chr ((ord c) - 32) -- now: c contains a lower case letter
  | otherwise                       = c
Hasworks> 5 >= 3
True
Hasworks> :r
Hasworks> toupper 'g'
'G'
Hasworks> toupper 'G'
'G'
Hasworks> toupper '?'
'?'
Hasworks> ord '?'
63
Hasworks> chr ((ord '?') - 32)
'\US'
Hasworks> ord 'a'
97
Hasworks> ord 'z'
122
Hasworks> 5 <= 6
True
Hasworks> 5 <= 5
True
Hasworks> 5 <= 3
False
Hasworks> 5 >= 3
True
Hasworks> :r
Hasworks> toupper 'g'
'G'Hasworks> ord 'h'
104
Hasworks> ord 'H'
72
Hasworks> ord 'g'
103
Hasworks> ord 'G'
71
Hasworks> chr 103
'g'
Hasworks> chr (ord 'g')
'g'
Hasworks> :type 'g'
'g' :: Char
Hasworks> chr ((ord 'g') - 32)
'G'
Hasworks> ord '?'
63
Hasworks> chr ((ord '?') - 32)
'\US'
Hasworks> ord 'a'
97
Hasworks> ord 'z'
122
Hasworks> 5 <= 6
True
Hasworks> 5 <= 5
True
Hasworks> 5 <= 3
False
Hasworks> 5 >= 3
True
Hasworks> :rtoupper :: Char -> Char
toupper c
  | (ord c <= 122) && (ord c >= 97) = chr ((ord c) - 32) -- now: c contains a lower case letter
  | otherwise                       = c
Hasworks> toupper 'g'
'G'
Hasworks> toupper 'G'
'G'
Hasworks> toupper '?'
'?'
Hasworks> toupper 'G'
'G'
Hasworks> toupper '?'
'?'
122
Hasworks> 5 <= 6
True
Hasworks> 5 <= 5
True
Hasworks> 5 <= 3
False
Hasworks> 5 >= 3
True
Hasworks> :r
Hasworks> toupper 'g'
'G'
Hasworks> toupper 'G'
'G'
Hasworks> toupper '?'
'?'
-}
-- BAD PROGRAMMING

toupper2 :: Char -> Char
toupper2 c
  | (ord c <= 122) && (ord c >= 97) == True = chr ((ord c) - 32) -- now: c contains a lower case letter
  | otherwise                       = c

{-
Hasworks> Hasworks> 5 <= 6
ERROR - Ambiguous use of operator "(>)" with "(<=)"
Hasworks> True
True
Hasworks> Hasworks> 5 <= 5
ERROR - Ambiguous use of operator "(>)" with "(<=)"
Hasworks> True
True
Hasworks> Hasworks> 5 <= 3
ERROR - Ambiguous use of operator "(>)" with "(<=)"
Hasworks> False
False
Hasworks> Hasworks> 5 >= 3
ERROR - Ambiguous use of operator "(>)" with "(>=)"
Hasworks> True
True
Hasworks> Hasworks> :r
ERROR - Syntax error in expression (unexpected symbol ":")
Hasworks> Hasworks> toupper 'g'
ERROR - Undefined data constructor "Hasworks"
Hasworks> 'G'
'G'
Hasworks> Hasworks> toupper 'G'
ERROR - Undefined data constructor "Hasworks"
Hasworks> 'G'
'G'
Hasworks> Hasworks> toupper '?'
ERROR - Undefined data constructor "Hasworks"
Hasworks> '?'
'?'
Hasworks> 
Hasworks> :r
Hasworks> toupper2 '?'
'?'
Hasworks> [1,2,3]
[1,2,3]
Hasworks> ['a','b','c']
"abc"
Hasworks> ["abc","bde","wer"]
["abc","bde","wer"]
Hasworks> [["abc","bde","wer"],["text","word"]]
[["abc","bde","wer"],["text","word"]]
Hasworks> :type [["abc","bde","wer"],["text","word"]]
[["abc","bde","wer"],["text","word"]] :: [[[Char]]]
Hasworks> ["abc",["bde","wer"]]
ERROR - Type error in list
*** Expression     : ["abc",["bde","wer"]]
*** Term           : ["bde","wer"]
*** Type           : [[Char]]
*** Does not match : [Char]

Hasworks> ["abc","bde","wer","wwww","aaaaaa"]!!2
"wer"
Hasworks> ["abc","bde","wer","wwww","aaaaaa"]!!0
"abc"
Hasworks> ["abc","bde","wer","wwww","aaaaaa"]!!8
"
Program error: Prelude.!!: index too large

Hasworks> "abc":["bde","wer","wwww","aaaaaa"]
["abc","bde","wer","wwww","aaaaaa"]
Hasworks> :type (:)
(:) :: a -> [a] -> [a]

NOTE:

the colon : is the list constructor. It is a built in operator

Hasworks> "abc":["bde","wer","wwww","aaaaaa"]
["abc","bde","wer","wwww","aaaaaa"]
Hasworks> (:) "abc" ["bde","wer","wwww","aaaaaa"]
["abc","bde","wer","wwww","aaaaaa"]

done: conversion of operator to function of two arguments

Hasworks> head [1,2,3,4]
1
Hasworks> (:) "abc" ["bde","wer","wwww","aaaaaa"]
["abc","bde","wer","wwww","aaaaaa"]
Hasworks> head $$
"abc"
Hasworks> (:) "abc" ["bde","wer","wwww","aaaaaa"]
["abc","bde","wer","wwww","aaaaaa"]
Hasworks> tail $$
["bde","wer","wwww","aaaaaa"]
Hasworks> :type tail
tail :: [a] -> [a]
Hasworks> :type head
head :: [a] -> a
Hasworks> init "hdkjghdkg"
"hdkjghdk"
Hasworks> :type init
init :: [a] -> [a]


THE ABOVE WERE built in list functions
-}
{-
Hasworks> []
[]
Hasworks> "text":[]
["text"]
Hasworks> "word":("text":[])
["word","text"]
Hasworks> "news":("word":("text":[]))
["news","word","text"]
Hasworks> length ["news","word","text"]
3
Hasworks> :type length
length :: [a] -> Int
Hasworks> "news"
"news"
Hasworks> putStr "news"
news
Hasworks> :type putStr
putStr :: String -> IO ()
Hasworks> putStr "news\ncar crashed\nburglary"
news
car crashed
burglary
Hasworks> ord '\n'
10

-}

mylength :: [a] -> Int  -- recursive definition of length of a list (mimicking length)
mylength []     = 0                 -- base case      m.1
mylength (x:xs) = 1 + (mylength xs) -- recursive step m.2

{-
Above demonstrates recursive definition and 'parametric polymorphism'
-}

mylength2 :: [a] -> Int  -- recursive definition of length of a list (mimicking length)
mylength2 []     = 0                  -- base case
mylength2 (_:xs) = 1 + (mylength2 xs) -- recursive step

-- BELOW IS BAD STYLE ... since the argument should convey the PATTERN ...

mylength3 :: [a] -> Int  -- recursive definition of length of a list (mimicking length)
mylength3 []   = 0                           -- base case
mylength3 list = 1 + (mylength3 (tail list)) -- recursive step

{-

Rewriting: pretend to be the interpreter ... (pattern matching) ...

mylength [5,1,9]
mylength (5:[1,9])  ... by list constructor :
1 + (mylength [1,9]) ... by m.2
1 + (mylength (1:[9])) ... by application of list constructor :
1 + (1 + (mylength [9]))  ... by m.2
1 + (1 + (mylength (9:[])))  ... by application of list constructor :
1 + (1 + (1 + (mylength []))) ... by m.2
1 + (1 + (1 + (0))) ............. by m.1
...                   internally ...
3
-}
{-
Hasworks> mylength [5,1,9]
3
Hasworks> 1 + (mylength (1:[9]))
3
Hasworks> 1 + (1 + (1 + (mylength [])))
3

-}

{-
WANT: median of a sorted (in ascending order) number of numbers

medians [1,5,8,9,33]
8
medians [1,5,8,10,90,330]
9
-}

medians :: [Float] -> Float   -- input is a list of ascending Float values ...
medians [x]    = x                 -- first base case
medians [x,y]  = (x + y) / 2       -- second base case
medians (x:xs) = medians (init xs) -- recursive step

{-
Hasworks> medians [1,5,8,10,90,330]
9.0
Hasworks> medians [1,5,8,9,33]
8.0

-}

--------------------------------------------
--                                        --
-- LECTURES END TUESDAY, 4th October 2016 --
--                                        --
--------------------------------------------

--------------------------------------------
--                                        --
-- LABS START THURSDAY, 6th October 2016  --
--                                        --
--------------------------------------------

---------------------------------------------------------------------------------
-- MY SOLUTION OF THE PROBLEM SHEET (START) ...

startupper :: [String] -> [String]
startupper []     = []                                            -- su.1 base case
startupper (x:xs) = ((toupper (head x)):(tail x)):(startupper xs) -- su.2 recursive step

{-
Hasworks> startupper ["text","London","Birmingham","leeds","Bradford"]
["Text","London","Birmingham","Leeds","Bradford"]
-}

startupper2 :: [String] -> [String]
startupper2 []     = []                                      -- suu.1 base case
startupper2 ((y:ys):xs) = ((toupper y):ys):(startupper2 xs)  -- suu.2 recursive step

{-
Hasworks> startupper2 ["text","London","Birmingham","leeds","Bradford"]
["Text","London","Birmingham","Leeds","Bradford"]

-}

twice :: [Int] -> [Int]
twice []     = []                    -- tw.1 base case
twice (x:xs) = (2 * x) : (twice xs)  -- tw.2 recursive step

{-
Hasworks> twice [8,2,9,6]
[16,4,18,12]

-}

again :: Int -> Char -> [Char]
again 0 _ = []                -- a.1 base case
again n c = c:(again (n-1) c) -- a.2 recursive step

{-
Hasworks> again 5 'h'
"hhhhh"
Hasworks> again 0 'h'
""
Hasworks> map (again 4) "text"
["tttt","eeee","xxxx","tttt"]

The type signature of map is:
Hasworks> :type map
map :: (a -> b) -> [a] -> [b]

EXPLAIN!
-}

cyclec :: Char -> Char
cyclec c
  | ord c == 122 = 'a'
  | otherwise    = chr (1 + (ord c))
{-
Hasworks> cyclec 'r'
's'
Hasworks> cyclec 'y'
'z'
Hasworks> cyclec 'z'
'a'
Hasworks> cyclec 'c'
'd'

-}

cycleC :: Char -> Char
cycleC c
  | ord c == 90 = 'A'
  | otherwise   = chr (1 + (ord c))
{-
Hasworks> cycleC 'C'
'D'
Hasworks> cycleC 'T'
'U'
Hasworks> cycleC 'Z'
'A'
-}

cycletext :: String -> String
cycletext []                                 = []
cycletext (x:xs)
  | (ord x <= ord 'Z') && (ord x >= ord 'A') = (cycleC x) : (cycletext xs)
  | otherwise                                = (cyclec x) : (cycletext xs)

{-
Hasworks> cycletext "GoodDayMadam"
"HppeEbzNbebn"
Hasworks> cycletext "Zoology"
"Appmphz"
-}

cycletextn :: Int -> String -> String
cycletextn 0 s = s
cycletextn n s = cycletextn (n - 1) (cycletext s)
{-
Hasworks> cycletext "GoodDayMadam"
"HppeEbzNbebn"
Hasworks> cycletextn 0  "GoodDayMadam"
"GoodDayMadam"
Hasworks> cycletextn 1 "GoodDayMadam"
"HppeEbzNbebn"
Hasworks> cycletextn 2 "GoodDayMadam"
"IqqfFcaOcfco"
Hasworks> cycletextn 3 "GoodDayMadam"
"JrrgGdbPdgdp"
Hasworks> cycletextn 25 "GoodDayMadam"
"FnncCzxLzczl"
Hasworks> cycletextn 26 "GoodDayMadam"
"GoodDayMadam"
Hasworks> cycletextn 27 "GoodDayMadam"
"HppeEbzNbebn"
-}
-- .... MY SOLUTION OF THE PROBLEM SHEET (END)
----------------------------------------------------------------

-- HASKELL CODE DEFINED AND DISCUSSED IN CLASS IN FRONT OF THE STUDENTS ...

toupperf :: String -> String      -- WANT: A FUNCTION CONVERTING THE FIRST LETTER TO CAPITAL
toupperf (x:xs) = (toupper x):xs  -- TAKE THAT toupper is availabe!
{-
Hasworks> toupperf "bradford"
"Bradford"
Hasworks> toupperf "Bradford"
"Bradford"
Hasworks> toupperf "*&%Bradford"
"*&%Bradford"
-}
toupperl :: [String] -> [String] -- INTENTION: 'do toupperf to every entry of a list of strings'
toupperl []     = []                         -- base case
toupperl (y:ys) = (toupperf y):(toupperl ys) -- recursive step
{-
Hasworks> toupperl ["bradford","leeds","London","paris"]
["Bradford","Leeds","London","Paris"]
Hasworks> toupperl ["bradford","?eeds","London","paris"]
["Bradford","?eeds","London","Paris"]
-}

-----------------------------------------
--                                     --
-- LABS END THURSDAY, 6th October 2016 --
--                                     --
-----------------------------------------

-----------------------------------------------
--                                           --
-- LECTURES START TUESDAY, 11th October 2016 --
--                                           --
-----------------------------------------------

{-
WANT to define my version of the built concatenation operator ++ ...



-}

my_conc :: [a] -> [a] -> [a]
my_conc []     xs = xs                  -- base case
my_conc (x:xs) ys = x : (my_conc xs ys) -- recursive step
{-
Illustration:

[1,2,3] ++ [10,20] ---> [1,2,3,10,20] = 1 :[2,3,10,20] = 1 : ([2,3]++[10,20])

The above suggests the recursive step!

The base case says: concatenation of the empty list with anything is this anything!

Hasworks> my_conc [1,2,3] [10,20,30,40]
[1,2,3,10,20,30,40]

-}
{-
AIM: define an equivalent operator akin to ++  ...
DEFINE the operator symbol |++| ...
-}

(|++|) :: [a] -> [a] -> [a]
[]     |++| xs = xs               -- base case
(x:xs) |++| ys = x : (xs |++| ys) -- recursive step--------------------------------------------
--                                        --
-- LECTURES START TUESDAY, 27/09/2016     --
--                                        --
--------------------------------------------
{-
Hasworks> [1,2,3] |++| [10,20,30,40]
[1,2,3,10,20,30,40]

-}
{-
AIM: DEFINE MY VERSION OF reverse ...

my_reverse [1,2,3,4,5] ----> [5,4,3,2,1] = [5,4,3,2] ++ [1] = (my_reverse [2,3,4,5]) ++ [1] = (my_reverse [2,3,4,5]) |++| [1]

That suggests the recursive step for my_reverse!
Hasworks> my_reverse [1,(|++|) :: [a] -> [a] -> [a]
[]     |++| xs = xs               -- base case
(x:xs) |++| ys = x : (xs |++| ys) -- recursive2,3,4,5]
[5,4,3,2,1]
-}

my_reverse :: [b] -> [b]  -- type signature, b is a type parameter
my_reverse []     = []                        -- base case
my_reverse (x:xs) = (my_reverse xs) |++| [x]  -- recursive step (as exemplified above) 
{-
Hasworks> reverse [1,2,3,4,5]
[5,4,3,2,1]
Hasworks> :r
Hasworks> my_reverse [1,2,3,4,5]
[5,4,3,2,1]

-}
{-
Hasworks> zip [1,2,3,4] [10,20,30,40]
[(1,10),(2,20),(3,30),(4,40)]
Hasworks> zip [1,2,3,4] [10,20,30,40,50]
[(1,10),(2,20),(3,30),(4,40)]
Hasworks> zip [1,2,3,4,5] [10,20,30,40]
[(1,10),(2,20),(3,30),(4,40)]
Hasworks> zip [1,2,3,4,5] ["text","word","noun"]
[(1,"text"),(2,"word"),(3,"noun")]
Hasworks> :type zip
zip :: [a] -> [b] -> [(a,b)]

WANT TO IMPLEMENT MY OWN VERSION...

zip [1,2,3] ["text","word,"noun"] ---> [(1,"text"),(2,"word"),(3,"noun")] = (1,"text"):[(2,"word"),(3,"noun")] =
(1,"text"):(zip [2,3] ["word","noun"])

-}
my_zip :: [a] -> [b] -> [(a,b)]
my_zip [] _          = []                   -- base case (a)
my_zip _  []         = []                   -- base case (b)
my_zip (x:xs) (y:ys) = (x,y):(my_zip xs ys) -- recursive step suggested from above
{-
Hasworks> zip [1,2,3,4] [10,20,30,40]
[(1,10),(2,20),(3,30),(4,40)]
Hasworks> zip [1,2,3,4] [10,20,30,40,50]
[(1,10),(2,20),(3,30),(4,40)]
Hasworks> zip [1,2,3,4,5] [10,20,30,40]
[(1,10),(2,20),(3,30),(4,40)]
Hasworks> zip [1,2,3,4,5] ["text","word,"noun"]
ERROR - Improperly terminated string
Hasworks> zip [1,2,3,4,5] ["text","word","noun"]
[(1,"text"),(2,"word"),(3,"noun")]
Hasworks> :type zip
zip :: [a] -> [b] -> [(a,b)]
Hasworks> zip [] ["text","word","noun"]
[]
Hasworks> zip [1,2,3,4,5] []
[]
Hasworks> :r
ERROR "./Hasworks_2016.hs":1725 - Type error in application
*** Expression     : (x : y) : my_zip xs ys
*** Term           : x : y
*** Type           : [a]
*** Does not match : (a,[a])

Char> :r
Hasworks> my_zip [1,2,3,4,5] ["text","word","noun"]
[(1,"text"),(2,"word"),(3,"noun")]
-}
{-
HIGHER ORDER FUNCTIONS ... (OR 'functional')
is a function whose one input is a function or which produces a function 

Hasworks> zipWith (+) [1,2,3,4] [10,20,30,40]
[11,22,33,44]
Hasworks> zipWith (++) ["text","word","sentence"] ["A","B","C","D"]
["textA","wordB","sentenceC"]
Hasworks> zipWith (++) [['t','e','x','t'],"word","sentence"] ["A","B","C","D"]
["textA","wordB","sentenceC"]
Hasworks> :type zipWith
zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]

AIM: define my own version of zipWith ...

-}


rep_string :: String -> Int -> String
rep_string xs 0 = ""                          -- base case
rep_string xs n = xs ++ (rep_string xs (n-1)) -- recursive step
{-
WANT:
-----------------------------------------------
--                                           --
-- LECTURES START TUESDAY, 11th October 2016 --
--                                           --
-----------------------------------------------
rep_string "word" 3 ----> "wordwordword"
IT WORKS:
Hasworks> rep_string "word" 4
"wordwordwordword"
Hasworks> zipWith rep_string ["word","sentence","noun"] [3, 2, 6]
["wordwordword","sentencesentence","nounnounnounnounnounnoun"]
Hasworks> :type (zipWith rep_string)
zipWith rep_string :: [[Char]] -> [Int] -> [[Char]]

Above shows the type signature of the function obtained by partial application
-}

{- WANT to define my version of zipWith 

-}
my_zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
my_zipWith _ [] _          = []                             -- base case (a)
my_zipWith _ _ []          = []                             -- base case (b)
my_zipWith f (x:xs) (y:ys) = (f x y) : (my_zipWith f xs ys) -- recursive step

-- EXERCISE: WRITE DOWN A SPECIFIC CASE TO JUSTIFY THE RECURSIVE STEP!
{-
Hasworks> my_zipWith rep_string ["word","sentence","noun"] [3, 2, 6]
["wordwordword","sentencesentence","nounnounnounnounnounnoun"]

-}
{-
ANOTHER HIGHER ORDER FUNCTION ...

Hasworks> square 6
36
Hasworks> square 7
49
Hasworks> map square [6,7,8]
[36,49,64]
Hasworks> :t map
map :: (a -> b) -> [a] -> [b]

-}

-----------------------------------------------
--                                           --
-- LECTURES END TUESDAY, 11th October 2016   --
--                                           --
-----------------------------------------------
--
-----------------------------------------------
--                                           --
-- LABS BEGIN THURSDAY, 13th October 2016    --
--                                           --
-----------------------------------------------
{-
Looking at exercise 1 ... classifying numbrers as even or odd ...

Requirement:

Input list of integers
Output pair of lists of integers, evens then odds

Identify 'core' problem which is finding out whether a number is even or odd
... solution lies in applying mod (= remainder of integer division) Experiment ...

Hasworks> mod 10 2
0
Hasworks> mod 27 2
1
Now define functions ... iseven, isodd

Hasworks> mod 10 2 == 0
True
Hasworks> mod 11 2 == 0
False
Hasworks> mod 11 2 == 1
True
Hasworks> mod 10 2 == 1
False
-}

iseven, isodd :: Int -> Bool
iseven n = (mod n 2 == 0)
isodd  n = (mod n 2 == 1)
{- TESTING:
Hasworks> iseven 88
True
Hasworks> iseven 89
False
Hasworks> isodd 89
True
Hasworks> isodd 88
False

In the model solution I have used mod as an infix operator; you do this by enclosing
the function name in inverted commas WHICH YOU WILL FIND IN THE TOP LEFT CORNER OF THE KEYBOARD
-}

{-
HOW SHOULD classEvenOdd be constructed?
I WISH ...

classEvenOdd [6,8,7,2,5] --->
classEvenOdd (6:[8,7,2,5]) --->([6],[]) combined with (?) classEvenOdd [8,7,2,5] -->
([8,6],[]) combined with (?) classEvenOdd [7,2,5] --->
([8,6],[7]) combined with (?) classEvenOdd [2,5] -->
([2,8,6],[7]) combined with (?) classEvenOdd [5] --->
([2,8,6],[5,7]) combined with (?) classEvenOdd [] --->
([2,8,6],[5,7])
-}

{-
use built in fst and snd indicated below ...
Hasworks> fst ("jrehgkrhjefehj",8)
"jrehgkrhjefehj"
Hasworks> snd ("jrehgkrhjefehj",8)
8
-}
classEvenOdd :: [Int] -> ([Int], [Int])
classEvenOdd [] = ([],[])                 -- base case
classEvenOdd (x:xs)                       -- recursive step
  | iseven x    = (x:restevens, restodds)    -- 'updating' ...
  | otherwise   = (restevens, x:restodds)
  where
  restevens = fst (classEvenOdd xs)          -- make use of built in fst and snd
  restodds  = snd (classEvenOdd xs)
{-
Hasworks> classEvenOdd [6,8,7,2,5,1]
([6,8,2],[7,5,1])

IT WORKS! (almost ... the order ... no problem:)
Hasworks> fst (classEvenOdd [6,8,7,2,5,1])
[6,8,2]
Hasworks> reverse (fst (classEvenOdd [6,8,7,2,5,1]))
[2,8,6]
Hasworks> (reverse (fst (classEvenOdd [6,8,7,2,5,1])),reverse (snd (classEvenOdd [6,8,7,2,5,1])))
([2,8,6],[1,5,7])

-}

---------------------------------------------
--                                         --
-- LABS END THURSDAY, 13th October 2016    --
--                                         --
---------------------------------------------

-----------------------------------------------
--                                           --
-- LECTURES START TUESDAY, 18th October 2016 --
--                                           --
-----------------------------------------------

{-
Functions defined in the LAMBDA notation (using anonymous functions): useful when defining interactively for program development ...
Hasworks> (\x -> x * x) 6
36
Hasworks> (\x -> x * x) 'a'
ERROR - Cannot infer instance
*** Instance   : Num Char
*** Expression : (\x -> x * x) 'a'

Hasworks> (\t -> (' ':t)) "text"
" text"
Hasworks> (\t -> (' ':t)) 1
ERROR - Cannot infer instance
*** Instance   : Num [Char]
*** Expression : (\t -> ' ' : t) 1

Hasworks> :type (\t -> (' ':t))
\t -> ' ' : t :: [Char] -> [Char]
Hasworks> :type (\t -> ('1':t))
\t -> '1' : t :: [Char] -> [Char]
Hasworks> :type (\t -> (1:t))
\t -> 1 : t :: Num a => [a] -> [a]
Hasworks> (\t -> (1:t)) [2,3,4]
[1,2,3,4]
Hasworks> :type ((\t -> (1:t)) [2,3,4])
(\t -> 1 : t) [2,3,4] :: Num a => [a]

LESSON: system works out the type signature of the given anonymous function ...
-}

{-
Hasworks> (\(x, y) -> x * x + y + 1) (6,2)
39
Hasworks> (curry (\(x, y) -> x * x + y + 1)) 6 2
39
Hasworks> :type curry
curry :: ((a,b) -> c) -> a -> b -> c

LESSON: curry is a higher order function accepting a function applied to a pair and produces the equivalent function of two arguments
WHY? So as to prepare a partial function to be mapped ...
Hasworks> (curry (\(x, y) -> x * x + y + 1)) 6 2
39
Hasworks> map ((curry (\(x, y) -> x * x + y + 1)) 6) [2,4,0,1]
[39,41,37,38]

uncurry does the 'other way round':
Hasworks> :type uncurry
uncurry :: (a -> b -> c) -> (a,b) -> c
Hasworks> (\x y -> x * x + y + 1) 6 2
39
Hasworks> (uncurry (\x y -> x * x + y + 1)) (6,2)
39
WHY is uncurry useful? Here it is ... mapping ...
Hasworks> map (uncurry (\x y -> x * x + y + 1)) [(6,2),(3,1),(4,2)]
[39,11,19]
THIS I COULD PRODUCE LIKE THIS ...
Hasworks> zip [6,3,4] [2,1,2]
[(6,2),(3,1),(4,2)]
Hasworks> map (uncurry (\x y -> x * x + y + 1)) $$
[39,11,19]

$$ means last output produced by Hugs
-}

ones :: [Int]
ones = 1:ones

{-
Hasworks> ones
[1,1,1,1,1,1,1,  ......... STOP THIS WITH CONTROL C

Hasworks> take 5 ((map (\x -> x + 2)) ones)
[3,3,3,3,3]
Hasworks> map (\x -> x + 2) (take 5 ones)
[3,3,3,3,3]
-}
{-
iterate is a built in higher order function ...
Hasworks> :type iterate
iterate :: (a -> a) -> a -> [a]
Hasworks> take 10 (iterate (\x -> x + 2) 1) 
[1,3,5,7,9,11,13,15,17,19]

SYMBOLICALLY ...
iterate f z

produces the infinite list ...

[z, f z, f (f z), f (f (f z)), ......

z shall be called the starting value, f is the function which takes me to the next entry
-}
{-
APPLICATION ... Factorial

1! = 1
2! = 1 X 2 = 2
3! = 1 X 2 X 3 =6
4! = 1 X 2 X 3 X 4 = 24
5! = 1 X 2 X 3 X 4 X 5 = 120
...
6! = 5! X 6 = 720

...
(n+1)! = n! X (n+1)
IN PREPARATION FOR DOING THIS WITH iterate ...

(1,1) --> (2,1X2)=(2,2) --> (3,2X3)=(3,6) --> (4,(3+1)X6)=(4,24) --> (4+1,(4+1)X24) --> ......

Now do interactively the following ... producing the entries one by one of the infinite list ....
Hasworks> (\(n,m) -> (n+1, (n+1)*m)) (4,24)
(5,120)
Hasworks> (\(n,m) -> (n+1, (n+1)*m)) (3,6)
(4,24)
Hasworks> (\(n,m) -> (n+1, (n+1)*m)) (1,1)
(2,2)
Hasworks> (\(n,m) -> (n+1, (n+1)*m)) $$
(3,6)
Hasworks> (\(n,m) -> (n+1, (n+1)*m)) $$
(4,24)
Hasworks> (\(n,m) -> (n+1, (n+1)*m)) $$
(5,120)
Hasworks> (\(n,m) -> (n+1, (n+1)*m)) $$
(6,720)

... learn from our experiment and use iterate ... to get list of (n,n!) (SYMBOLICALLY)
Hasworks> take 6 (iterate (\(n,m) -> (n+1, (n+1)*m)) (1,1)) 
[(1,1),(2,2),(3,6),(4,24),(5,120),(6,720)]
Hasworks> map snd $$
[1,2,6,24,120,720]
-}
{-
IF I am interested in 10! ...

Hasworks> take 10 (iterate (\(n,m) -> (n+1, (n+1)*m)) (1,1)) 
[(1,1),(2,2),(3,6),(4,24),(5,120),(6,720),(7,5040),(8,40320),(9,362880),(10,3628800)]
Hasworks> last $$
(10,3628800)
Hasworks> snd $$
3628800

WANT TO IMPLEMENT FACTORIAL AS A FUNCTION ... EXPERIMENT ...
Hasworks> (iterate (\(n,m) -> (n+1, (n+1)*m)) (1,1)) !! 9 
(10,3628800)
Hasworks> snd $$
3628800
Hasworks> snd ((iterate (\(n,m) -> (n+1, (n+1)*m)) (1,1)) !! 9) 
3628800

... giving rise to a definition ...
-}

myfact :: Int -> Int
myfact k = snd ((iterate (\(n,m) -> (n+1, (n+1)*m)) (1,1)) !! (k-1))
{-
Hasworks> myfact 10
3628800
Hasworks> myfact 6
720
-}
{-
TASK: GET RID OF THE LAMBDA NOTATION INSIDE THE FUNCTION DEFINITION (it is ugly)
-}


---------------------------------------------
--                                         --
-- LECTURES END TUESDAY, 18th October 2016 --
--                                         --
---------------------------------------------

-----------------------------------------------
--                                           --
-- LABS BEGIN THURSDAY, 20th October 2016    --
--                                           --
-----------------------------------------------

{- HOW DO I ACHIEVE THIS ?

1953 ----> [1,9,5,3]

1953 ----> 3 ?? ... integer division WITH remainder ... mod

1953 ----> (1953,[]) --> (195,[3]) --> (19,[5,3]) --> (1,[9,5,3]) --> (0,[1,9,5,3]) -->
           (0,[0,1,9,5,3]) --> (0,[0,0,1,9,5,3]) --> .......

Use this experiment to define the function in question ...

Hasworks> (\(m,x) -> (div m 10,(mod m 10):x)) (1953,[])
(195,[3])
Hasworks> (\(m,x) -> (div m 10,(mod m 10):x)) $$
(19,[5,3])
Hasworks> (\(m,x) -> (div m 10,(mod m 10):x)) $$
(1,[9,5,3])

Generate the first ten entries of the infinite list ...

Hasworks> take 10 (iterate (\(m,x) -> (div m 10,(mod m 10):x)) (1953,[]))
[(1953,[]),(195,[3]),(19,[5,3]),(1,[9,5,3]),(0,[1,9,5,3]),(0,[0,1,9,5,3]),(0,[0,0,1,9,5,3]),(0,[0,0,0,1,9,5,3]),(0,[0,0,0,0,1,9,5,3]),(0,[0,0,0,0,0,1,9,5,3])]

Now I realize that I need access to individual list entries ... need drop and dropWhile

Hasworks> iseven 9
False
Hasworks> iseven 90
True
Hasworks> dropWhile iseven [90,6,4,3,7,8,50]
[3,7,8,50]
Hasworks> :type dropWhile
dropWhile :: (a -> Bool) -> [a] -> [a]

is a higher order function !!!

Hasworks> head (dropWhile (\(n,_) -> n /= 0) (iterate (\(m,x) -> (div m 10,(mod m 10):x)) (1953,[])))
(0,[1,9,5,3])
Hasworks> snd $$
[1,9,5,3]


-}

ldigits :: Int -> [Int]
ldigits num = snd pair
  where
  pair = head (dropWhile (\(n,_) -> n /= 0) (iterate (\(m,x) -> (div m 10,(mod m 10):x)) (num,[])))

ldigits_long :: Integer -> [Integer]
ldigits_long num = snd pair
  where
  pair = head (dropWhile (\(n,_) -> n /= 0) (iterate (\(m,x) -> (div m 10,(mod m 10):x)) (num,[])))
{-
Hasworks> ldigits 1953
[1,9,5,3]
Hasworks> ldigits 195388877970090

Program error: arithmetic overflow

Hasworks> ldigits 19538887
[1,9,5,3,8,8,8,7]
Hasworks> :r
Hasworks> ldigits_long 195388877970090
[1,9,5,3,8,8,8,7,7,9,7,0,0,9,0]

-}

fstNotZero :: (Integer, a) -> Bool
fstNotZero (n, _) = n /= 0

ldigits_long2 :: Integer -> [Integer]
ldigits_long2 num = snd pair
  where
  cutLastDigit :: (Integer, [Integer]) -> (Integer, [Integer])
  cutLastDigit (m,x) = (div m 10,(mod m 10):x)
  infiniteList = iterate cutLastDigit (num,[])
  pair = head (dropWhile fstNotZero infiniteList)
{-
[1,9,5,3] -----> 1953 ---> "1953" 
1953 ---> [1,9,5,3]

[1,9,5,3] ---> ([1,9,5,3],0) --> ([9,5,3],1)  --> ([5,3], 10*1 + 9) = ([5,3], 19) -->
        ([3], 10*19+5) = ([3],195) --> ([],1953) -->  ([],1953) --> ([],1953) --> ...
-}

producepair :: ([Int],Int) -> ([Int],Int)
producepair ([], n)     = ([], n)
producepair ((x:xs), n) = (xs, 10 * n + x)
{-
Hasworks> producepair ([1,9,5,3],0)
([9,5,3],1)
Hasworks> producepair $$
([5,3],19)
Hasworks> producepair $$
([3],195)
Hasworks> producepair $$
([],1953)
Hasworks> producepair $$
([],1953)
Hasworks> producepair $$
([],1953)

Hasworks> head (dropWhile (\(x, _) -> (length x) /= 0) (iterate producepair ([1,9,5,3],0)))
([],1953)
Hasworks> head (dropWhile (\x -> (length (fst x)) /= 0) (iterate producepair ([1,9,5,3],0)))
([],1953)
Hasworks> snd (head (dropWhile (\x -> (length (fst x)) /= 0) (iterate producepair ([1,9,5,3],0))))
1953

EXERCISE: CONVERT THIS INTERACTIVE SESSION INTO A FUNCTION called, say, digitsToNum ... PRODUCING A NUMBER FROM THE LIST OF ITS DIGITS
Symbolically ...

(digitsToNum (ldigit num)) = num

(digitsToNum . ldigit) <=> id (for Int)

Hasworks> id 5
5
Hasworks> id [1,2,3]
[1,2,3]
-}

{-
incidentally ... there is the built in show ...

Hasworks> show 1953
"1953"
Hasworks> map show [1,9,5,3]
["1","9","5","3"]
Hasworks> :type "1"
"1" :: String
Hasworks> []
[]
Hasworks> '2':[]
"2"
Hasworks> '3':'2':[]
"32"
Hasworks> 3:2:[]
[3,2]
Hasworks> ord '2'
50


-}
---------------------------------------------
--                                         --
-- LABS END THURSDAY, 20th October 2016    --
--                                         --
---------------------------------------------


--------------------------------------------
--                                        --
-- LECTURES START TUESDAY, 25/10/2016     --
--                                        --
--------------------------------------------

{-
Folding -- simplest foldl1 and folr1 ... Higher order functions

Hasworks> (+) 1 2 
3
Hasworks> foldl1 (+) [1,2,3,4,5] 
15
Hasworks> foldr1 (+) [1,2,3,4,5] 
15
Hasworks> :type foldr1
foldr1 :: (a -> a -> a) -> [a] -> a
Hasworks> :type foldl1
foldl1 :: (a -> a -> a) -> [a] -> a
Hasworks> foldr1 (+) [5] 
5
Hasworks> foldr1 (+) [] 

Program error: pattern match failure: foldr1 (+) []

Hasworks> foldr1 (+) [5,8] 
13

-}
-- Demonstration of the built in foldl ...

-- PROBLEM : Sorting evens and odds (See handwritten sheet)...
-- first define the operator ...

(!*!) :: ([Int],[Int]) -> Int -> ([Int],[Int])
(xs,ys) !*! m 
  | iseven m  = ((m:xs),     ys)
  | otherwise = (xs    , (m:ys))
{-
Preparatory considerations ... convincing ourselves that the operator !*! works as intended ...

Hasworks> ([4,2] ,[7,5,3]) !*! 9
([4,2],[9,7,5,3])
Hasworks> ([] ,[]) !*! 3
([],[3])
Hasworks> $$ !*! 5
([],[5,3])
Hasworks> $$ !*! 7
([],[7,5,3])
Hasworks> $$ !*! 2
([2],[7,5,3])
Hasworks> $$ !*! 4
([4,2],[7,5,3])
Hasworks> $$ !*! 9
([4,2],[9,7,5,3])
Hasworks> $$ !*! 0
([0,4,2],[9,7,5,3])

... all this can be achieved with one line using foldl ...

Hasworks> foldl (!*!) ([],[]) [3,5,7,2,4,9,0]
([0,4,2],[9,7,5,3])

... and some thoughts about the type signature of foldl ...

Hasworks> :type foldl
foldl :: (a -> b -> a) -> a -> [b] -> a

... accumulator can be initialized any way I like ...

Hasworks> foldl (!*!) ([12,24],[89]) [3,5,7,2,4,9,0]
([0,4,2,12,24],[9,7,5,3,89])
Hasworks> foldl (!*!) ([12,241],[89]) [3,5,7,2,4,9,0]
([0,4,2,12,241],[9,7,5,3,89])


... and a more extensive 'version' is scanl ... showing all intermediate stages ...
Hasworks> scanl (!*!) ([],[]) [3,5,7,2,4,9,0]
[([],[]),([],[3]),([],[5,3]),([],[7,5,3]),([2],[7,5,3]),([4,2],[7,5,3]),([4,2],[9,7,5,3]),([0,4,2],[9,7,5,3])]
-}

{-

WISHLIST ...

([],[])       [3,5,7,2,4,9,0]
([0],[])      [3,5,7,2,4,9]
([0],[9])     [3,5,7,2,4]
([4,0],[9])   [3,5,7,2]
...Hasworks> 0 !+! ([],[])
([0],[])
Hasworks> 9 !+! $$
([0],[9])
Hasworks> 4 !+! $$
([4,0],[9])
Hasworks> 2 !+! $$
([2,4,0],[9])

... and it works !!

Hasworks> foldr (!+!) ([],[]) [3,5,7,2,4,9,0]
([2,4,0],[3,5,7,9])
-}

(!+!) :: Int -> ([Int],[Int]) -> ([Int],[Int])
m !+! (xs,ys)
  | iseven m  = ((m:xs),ys)
  | otherwise = (xs, (m:ys))
{-
Hasworks> 0 !+! ([],[])
([0],[])
Hasworks> 9 !+! $$
([0],[9])
Hasworks> 4 !+! $$
([4,0],[9])
Hasworks> 2 !+! $$
([2,4,0],[9])


... intermediate states of the accumulator are available when using scanr ...

Hasworks> scanr (!+!) ([],[]) [3,5,7,2,4,9,0]
[([2,4,0],[3,5,7,9]),([2,4,0],[5,7,9]),([2,4,0],[7,9]),([2,4,0],[9]),([4,0],[9]),([0],[9]),([0],[]),([],[])]
-}
{-
Some more built in function ...

Hasworks> :t iseven
iseven :: Int -> Bool
Hasworks> :t (not . iseven)
not . iseven :: Int -> Bool
Hasworks> takeWhile (not . iseven) [3,5,7,2,4,9,0]
[3,5,7]
Hasworks> filter iseven [3,5,7,2,4,9,0]
[2,4,0]
Hasworks> map iseven [3,5,7,2,4,9,0]
[False,False,False,True,True,False,True]
Hasworks> [3,5,7,2,4,9,0] ++ [10,20,30]
[3,5,7,2,4,9,0,10,20,30]
Hasworks> concat [[3,5,7,2,4,9,0],[10,20,30],[4,5,7,9]]
[3,5,7,2,4,9,0,10,20,30,4,5,7,9]
Hasworks> foldl1 (++) [[3,5,7,2,4,9,0],[10,20,30],[4,5,7,9]]
[3,5,7,2,4,9,0,10,20,30,4,5,7,9]

-}

-- my version of filter ...

myfilter :: (a -> Bool) -> [a] -> [a]
myfilter _ [] = []                      -- base case
myfilter g (x:xs)                       -- recursive step
 | g x        = x : (myfilter g xs)        -- retain entry
 | otherwise  = myfilter g xs              -- discard entry
{-
Hasworks> myfilter iseven [3,5,7,2,4,9,0]
[2,4,0]
-}

------------------------------------------
--                                      --
-- LECTURES END TUESDAY, 25/10/2016     --
--                                      --
------------------------------------------


----------------------------------------------------------
--                                                      --
-- LABORATORY EXERCISES ON FOLDING START (27.10.2016)   --
--                                                      --
----------------------------------------------------------
{-
'Warming up exercise' ...

given a list of numbers, produce a pair whose first component is the sum and whose second entry is the product. USE foldl and define an appropriate operator ... 

TASK: [8,3,1,2] ---> (14,48)

Pair is the accumulator, start with (0,1)

       ?                   ?                     ?                       ?
(0,1) --> (8+0,8*1)=(8,8) --> (8+3,8*3)=(11,24) --> (11+1,24*1)=(12,24) --> (12+2,24*2)=(14,48)
-}

(!+*!) :: (Int,Int) -> Int -> (Int,Int)
(m, n) !+*! k = (m + k, n * k)
{-
Hasworks> (0,1) !+*! 8
(8,8)
Hasworks> $$ !+*! 3
(11,24)
Hasworks> $$ !+*! 1
(12,24)
Hasworks> $$ !+*! 2
(14,48)
Hasworks> foldl (!+*!) (0,1) [8,3,1,2]
(14,48)
Hasworks> scanl (!+*!) (0,1) [8,3,1,2]
[(0,1),(8,8),(11,24),(12,24),(14,48)]

TASK: DO THE SAME BY FOLDING THE LIST FROM THE RIGHT! I.E. use foldr (new operator needed!)

(Solution below defines new operator by using flip and the old operator ...

Hasworks> :type (flip (!+*!))
flip (!+*!) :: Int -> (Int,Int) -> (Int,Int)
Hasworks> :type (!+*!)
(!+*!) :: (Int,Int) -> Int -> (Int,Int)
Hasworks> (flip (!+*!)) 8 (0,1)
(8,8)
Hasworks> (!+*!) (0,1) 8
(8,8)
Hasworks> foldr (flip (!+*!)) (0,1) [8,3,1,2]
(14,48)
Hasworks> scanr (flip (!+*!)) (0,1) [8,3,1,2]
[(14,48),(6,6),(3,2),(2,2),(0,1)]

.. NOW FOR A `DEEPER` UNDERSTANDING WE DID SOME EXPERIMENTS ...

Hasworks> foldl (+) 0 [1,2,3,4,5,6,7,8,9]
45
Hasworks> foldr (+) 0 [1,2,3,4,5,6,7,8,9]
45
Hasworks> foldl (*) 0 [1,2,3,4,5,6,7,8,9]
0
Hasworks> foldl (*) 1 [1,2,3,4,5,6,7,8,9]
362880
Hasworks> foldr (*) 1 [1,2,3,4,5,6,7,8,9]
362880
Hasworks> foldl (-) 1 [1,2,3,4,5,6,7,8,9]
-44
Hasworks> foldr (-) 1 [1,2,3,4,5,6,7,8,9]
4
Hasworks> foldr (/) 1 [1,2,3,4,5,6,7,8,9]
2.4609375
Hasworks> foldl (/) 1 [1,2,3,4,5,6,7,8,9]
2.75573192239859e-06
Hasworks> foldl (-) 1 [1,2,3,4,5,6,7,8,9]
-44
Hasworks> foldr (-) 1 [1,2,3,4,5,6,7,8,9]
4
Hasworks> foldr (flip (-)) 1 [1,2,3,4,5,6,7,8,9]
-44
Hasworks> foldr (-) 1 [1,2,3,4,5]
2
Hasworks> foldr (flip (-)) 1 [1,2,3,4,5]
-14
Hasworks> (1-(2-(3-(4-(5-1)))))
2
Hasworks> scanr (-) 1 [1,2,3,4,5]
[2,-1,3,0,4,1]
Hasworks> foldl (flip (-)) 1 [1,2,3,4,5]
2
Hasworks> (1-(2-(3-(4-(5-1)))))
2
Hasworks> foldr (flip (-)) 1 [1,2,3,4,5]
-14
Hasworks> (((((1-5)-4)-3)-2)-1)
-14
Hasworks> foldl (-) 1 [1,2,3,4,5]
-14

... SUGGESTING AN IDENTITY ...
... LET's see ...

foldl f z xs = foldr (flip f) z xs

foldl f z [x1,x2,x3,...,xn] stands for ...

(...(((z `f` x1) `f` x2) `f` x3) `f` ... `f` xn)

foldr (flip f) z [x1,x2,x3,...,x(n-1),xn] stands for ... (PUT g = flip f)

(x1 `g` .... (x(n-1) `g` (xn `g` z))...)

(...((z `f` xn) `f` x(n-1))... `f` x1) (note: this is left associatively bracketed!)

... not quite, PROBABLY ...

foldl f z xs = foldr (flip f) z (reverse xs)

This will be addressed when reasoning about Haskell code.
-}


-- NOTICE: MODEL SOLUTIONS ARE 'COMMENTED OUT'! (SEE BELOW.)
-- STUDENTS ARE ENCOURAGED IN THE FIRST INSTANCE TO FURNISH THEIR OWN SOLUTIONS !

{- <------ COMMENTING OUT STARTS HERE !!!!

myfoldl :: (a -> b -> a) -> a -> [b] -> a
myfoldl _ z []     = z
myfoldl f z (x:xs) = myfoldl f (f z x) xs

myfoldr :: (a -> b -> b) -> b -> [a] -> b
myfoldr _ z []     = z
myfoldr f z (x:xs) = f x (myfoldr f z xs)

--------------------------------
-- 1: classify even - odd ... --
--------------------------------

-- First solution: folding from the left ...

{-
Preliminary 'hand comptations' ...

I wish: [6,2,9,8,7,1] --> ([6,2,8], [9,7,1])

I inspect the entries in turn of the input list from LEFT TO RIGHT one by one and write down how my (as yet non-existent!) operator //+// should behave:

([],[]) //+// 6 --> ([6],[])
([6],[]) //+// 2 --> ([2,6],[])
([2,6],[]) //+// 9 --> ([2,6],[9])
([2,6],[9]) //+// 8 --> ([8,2,6],[9])
([8,2,6],[9]) //+// 7 --> ([8,2,6],[7,9])
([8,2,6],[7,9]) //+// 1 --> ([8,2,6],[1,7,9])

Therefore:

(((((([],[]) //+// 6) //+// 2) //+// 9) //+// 8) //+// 7) //+// 1 = ([8,2,6],[1,7,9])

Therefore:

foldl (//+//) ([],[]) [6,2,9,8,7,1] = ([8,2,6],[1,7,9])

Therefore: WE THOROUGHLY STUDY THE ABOVE THOUGHTS and conclude that ...

The function classEvenOddFoldl :: [Int] -> ([Int], [Int]) we are looking for is
-}

classEvenOddFoldl :: [Int] -> ([Int], [Int])
classEvenOddFoldl nums = (\(x,y) -> (reverse x, reverse y)) (foldl (//+//) ([],[]) nums)
  where
  (//+//) :: ([Int], [Int]) -> Int -> ([Int], [Int])
  (xs, ys) //+// z 
    | isEven z  = ((z:xs), ys)
    | otherwise = (xs, (z:ys))
  isEven n = (mod n 2 == 0)

-- testing ...
{-
Hasworks> classEvenOddFoldl [6,2,9,8,7,1]
([6,2,8],[9,7,1])
-}

-- Second solution: folding from the right ...

{-
Preliminary 'hand comptations' ...

I wish: [6,2,9,8,7,1] --> ([6,2,8], [9,7,1])

I inspect the entries in turn of the input list from RIGHT TO LEFT one by one and write down how my (as yet non-existent!) operator ||+|| should behave:

1 ||+|| ([],[]) --> ([],[1])
7 ||+|| ([],[1]) --> ([],[7,1])
8 ||+|| ([],[7,1]) --> ([8],[7,1])
9 ||+|| ([8],[7,1]) --> ([8],[9,7,1])
2 ||+|| ([8],[9,7,1]) --> ([2,8],[9,7,1])
6 ||+|| ([2,8],[9,7,1]) --> ([6,2,8],[9,7,1])

Therefore:

6 ||+|| (2 ||+|| (9 ||+|| (8 ||+|| (7 ||+|| (1 ||+|| ([],[])))))) = ([6,2,8],[9,7,1])

Therefore:

foldr (||+||) ([],[]) [6,2,9,8,7,1] = ([6,2,8],[9,7,1])

Therefore: WE THOROUGHLY STUDY THE ABOVE THOUGHTS and conclude that ...

The function classEvenOddFoldr :: [Int] -> ([Int], [Int]) we are looking for is
-}

classEvenOddFoldr :: [Int] -> ([Int], [Int])
classEvenOddFoldr nums = foldr (||+||) ([],[]) nums
  where
  (||+||) :: Int -> ([Int], [Int]) -> ([Int], [Int])
  z ||+|| (xs, ys)
    | isEven z  = ((z:xs), ys)
    | otherwise = (xs, (z:ys))
  isEven n = (mod n 2 == 0)

-- testing ...
{-
Hasworks> classEvenOddFoldr [6,2,9,8,7,1]
([6,2,8],[9,7,1])
-}

-------------------------------------------------
-- 2: classify people's gender if possible ... --
-------------------------------------------------

female, male :: String -> Bool
female ('M':'r':'s':'.':_)         = True
female ('M':'r':'s':' ':_)         = True
female ('M':'i':'s':'s':' ':_)     = True
female ('M':'s':'.':' ':_)         = True
female ('M':'s':' ':_)             = True
female ('L':'a':'d':'y':' ':_)     = True
female ('Q':'u':'e':'e':'n':' ':_) = True
female _                           = False

male ('M':'r':'.':_)                 = True
male ('M':'r':' ':_)                 = True
male ('M':'a':'s':'t':'e':'r':' ':_) = True
male ('S':'i':'r':_)                 = True
male ('L':'o':'r':'d':_)             = True
male ('K':'i':'n':'g':' ':_)         = True
male _                               = False

-- First solution: folding from the left ...

{-
Preliminary 'hand comptations' ...

I wish:

peopleFoldl ["Lord R", "Queen V", "King A", "Lady M", "Lord A S", "Dr. Q"] -->

(["Lord R", "King A", "Lord A S"], ["Queen V", "King A", "Lady M"], ["Dr. Q"])

I inspect the entries in turn of the input list from LEFT TO RIGHT one by one and write down how my (as yet non-existent!) operator !!+!! should behave:

([],[],[]) !!+!! "Lord R" = (["Lord R"],[],[])
(["Lord R"],[],[]) !!+!! "Queen V" = (["Lord R"],["Queen V"],[])
(["Lord R"],["Queen V"],[]) !!+!! "King A" = (["King A","Lord R"],["Queen V"],[])
(["King A","Lord R"],["Queen V"],[]) !!+!! "Lady M" = (["King A","Lord R"],["Lady M","Queen V"],[])
(["King A","Lord R"],["Lady M","Queen V"],[]) !!+!! "Lord A S" = (["Lord A S","King A","Lord R"],["Lady M","Queen V"],[])
(["Lord A S","King A","Lord R"],["Lady M","Queen V"],[]) !!+!! "Dr. Q" = (["Lord A S","King A","Lord R"],["Lady M","Queen V"],[Dr. Q])

Therefore:

(((((([],[],[]) !!+!! "Lord R") !!+!! "Queen V") !!+!! "King A") !!+!! "Lady M") !!+!! "Lord A S") !!+!! "Dr. Q"

= (["Lord A S","King A","Lord R"],["Lady M","Queen V"],[Dr. Q])

Therefore:

foldl (!!+!!) ([],[],[]) ["Lord R", "Queen V", "King A", "Lady M", "Lord A S", "Dr. Q"] =
(["Lord A S","King A","Lord R"],["Lady M","Queen V"],[Dr. Q])

Therefore: WE THOROUGHLY STUDY THE ABOVE THOUGHTS and conclude that ...

The function peopleFoldl :: [String] -> ([String], [String], [String]) we are looking for is
-}

peopleFoldl :: [String] -> ([String], [String], [String])
peopleFoldl names = (\(x,y,z) -> (reverse x, reverse y, reverse z)) (foldl (!!+!!) ([],[],[]) names)
  where
  (!!+!!) :: ([String], [String], [String]) -> String -> ([String], [String], [String])
  (xs, ys, zs) !!+!! w
    | male w    = ((w:xs), ys, zs)
    | female w  = (xs, (w:ys), zs)
    | otherwise = (xs, ys, (w:zs))
{-
Notice: the functions male and female have been defined earlier in this script!!
-}

-- testing ...
{-
Hasworks> peopleFoldl ["Lord R", "Queen V", "King A", "Lady M", "Lord A S", "Dr. Q"]
(["Lord R","King A","Lord A S"],["Queen V","Lady M"],["Dr. Q"])
-}

-- Second solution: folding from the right ...

{-
Preliminary 'hand comptations' ...

I wish:

peopleFoldr ["Lord R", "Queen V", "King A", "Lady M", "Lord A S", "Dr. Q"] -->

(["Lord R", "King A", "Lord A S"], ["Queen V", "King A", "Lady M"], ["Dr. Q"])

I inspect the entries in turn of the input list from RIGHT TO LEFT one by one and write down how my (as yet non-existent!) operator !+! should behave:

"Dr. Q" !+! ([],[],[]) = ([],[],["Dr. Q"])
"Lord A S" !+! ([],[],["Dr. Q"]) = (["Lord A S"],[],["Dr. Q"])
"Lady M" !+! (["Lord A S"],[],["Dr. Q"]) = (["Lord A S"],["Lady M"],["Dr. Q"])
"King A" !+! (["Lord A S"],["Lady M"],["Dr. Q"]) = (["King A","Lord A S"],["Lady M"],["Dr. Q"])
"Queen V" !+! (["King A","Lord A S"],["Lady M"],["Dr. Q"]) = (["King A","Lord A S"],["Queen V","Lady M"],["Dr. Q"])
"Lord R" !+! (["King A","Lord A S"],["Lady M"],["Dr. Q"]) = (["Lord R","King A","Lord A S"],["Queen V","Lady M"],["Dr. Q"])

Therefore:

foldr (!+!) ([],[],[]) ["Lord R", "Queen V", "King A", "Lady M", "Lord A S", "Dr. Q"] =

"Lord R" !+! ("Queen V" !+! ("King A" !+! ("Lady M" !+! ("Lord A S" !+! ("Dr. Q" !+! ([],[],[])))))) =

(["Lord R","King A","Lord A S"],["Queen V","Lady M"],["Dr. Q"])

Therefore: WE THOROUGHLY STUDY THE ABOVE THOUGHTS and conclude that ...

The function peopleFoldr :: [String] -> ([String], [String], [String]) we are looking for is
-}

peopleFoldr :: [String] -> ([String], [String], [String])
peopleFoldr names = foldr (!+!) ([],[],[]) names
  where
  (!+!) :: String -> ([String], [String], [String]) -> ([String], [String], [String])
  name !+! (xs, ys, zs)
    | male name   = ((name:xs), ys, zs)
    | female name = (xs, (name:ys), zs)
    | otherwise   = (xs, ys, (name:zs))

{- testing ...
Hasworks> peopleFoldr ["Lord R", "Queen V", "King A", "Lady M", "Lord A S", "Dr. Q"]
(["Lord R","King A","Lord A S"],["Queen V","Lady M"],["Dr. Q"])
-}

-----------------------------------------------------------------------------------
-- 3: convert a list of digits of type Int to a (decimal) number of type Int ... --
-----------------------------------------------------------------------------------

-- First solution: folding from the left ...

{-
Preliminary 'hand comptations' ...

I wish:

listToNumFoldl [1,9,5,6] = 1956

I inspect the entries in turn of the input list from LEFT TO RIGHT one by one and write down how my (as yet non-existent!) operator /*/ should behave:

0 /*/ 1 = 1
1 /*/ 9 = 19
19 /*/ 5 = 195
195 /*/ 6 = 1956

Therefore,

foldl (/*/) 0 [1,9,5,6] = (((0 /*/ 1) /*/ 9) /*/ 5) /*/ 6 = 1956

Therefore: WE THOROUGHLY STUDY THE ABOVE THOUGHTS and conclude that ...

The function listToNumFoldl :: [Int] -> Int we are looking for is
-}

listToNumFoldl :: [Int] -> Int
listToNumFoldl numlist = foldl (/*/) 0 numlist
  where
  (/*/) :: Int -> Int -> Int
  u /*/ v = 10 * u + v

{- testing ...
Hasworks> listToNumFoldl [1,9,5,6]
1956
-}

-- Second solution: folding from the right ...

{-
Preliminary 'hand comptations' ...

I wish:

listToNumFoldr [1,9,5,6] = 1956

I inspect the entries in turn of the REVERSE of the input list (i.e. [6,5,9,1]) from RIGHT TO LEFT one by one and write down how my (as yet non-existent!) operator //*// should behave:

1 //*// 0 = 1
9 //*// 1 = 19
5 //*// 19 = 195
6 //*// 195 = 1956

Therefore,

foldr (//*//) 0 [6,5,9,1] = 6 //*// (5 //*// (9 //*// (1 //*// 0))) = 1956

Therefore: WE THOROUGHLY STUDY THE ABOVE THOUGHTS and conclude that ...

The function listToNumFoldr :: [Int] -> Int we are looking for is
-}

listToNumFoldr :: [Int] -> Int
listToNumFoldr numlist = foldr (//*//) 0 (reverse numlist)
  where
  (//*//) :: Int -> Int -> Int
  u //*// v = u + 10 * v

{-
testing ...
Hasworks> listToNumFoldr [1,9,5,6]
1956
-}

----------------------------------------------------------------------------------------------
-- 4: convert a non-negative number of type Int to a list of its digits (of type [Int]) ... --
----------------------------------------------------------------------------------------------

{- NOT BY FOLDING but by using div, mod, flip, iterate, map ...

Some experimentation ...

Hasworks> take 20 (iterate ((flip div) 10) 1956)
[1956,195,19,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
Hasworks> take 10 (iterate ((flip div) 10) 1956)
[1956,195,19,1,0,0,0,0,0,0]
Hasworks> take 10 (map ((flip mod) 10) (iterate ((flip div) 10) 1956))
[6,5,9,1,0,0,0,0,0,0]
Hasworks> take 10 (iterate ((flip div) 10) 1066)
[1066,106,10,1,0,0,0,0,0,0]
Hasworks> take 10 (map ((flip mod) 10) (iterate ((flip div) 10) 1066))
[6,6,0,1,0,0,0,0,0,0]

Therefore ...
-}

digits :: Int -> [Int]
digits number = reverse (take n (map ((flip mod) 10) (iterate ((flip div) 10) number)))
  where
  n = length (takeWhile (\x -> (x /= 0)) (map ((flip mod) 10) (iterate ((flip div) 10) number)))
{- testing ...
Hasworks> digits 1956
[1,9,5,6]
-}

---------------------------
-- 5: cumulative sum ... --
---------------------------

{-
-- First solution: folding from the left ...

Preliminary 'hand comptations' ...

I wish:

cumSumFoldl [1,9,5,6] = [1,10,15,21]

I inspect the entries in turn of the input list from LEFT TO RIGHT one by one and write down how my (as yet non-existent!) operator /*+/ should behave:

[] /*+/ 1 = [1]
[1] /*+/ 9 = [1,10]
[1,10] /*+/ 5 = [1,10,15]
[1,10,15] /*+/ 6 = [1,10,15,21]

Therefore,

foldl (/*+/) [] [1,9,5,6] = ((([] /*+/ 1) /*+/ 9) /*+/ 5) /*+/ 6 = [1,10,15,21]

Therefore: WE THOROUGHLY STUDY THE ABOVE THOUGHTS and conclude that ...

The function cumSumFoldl :: [Int] -> [Int] we are looking for is
-}

cumSumFoldl :: [Int] -> [Int]
cumSumFoldl numlist = foldl (/*+/) [] numlist
  where
  (/*+/) :: [Int] -> Int -> [Int]
  [] /*+/ num = [num]
  xs /*+/ num = xs ++ [num + (last xs)]
{- testing ...
Hasworks> cumSumFoldl [1,9,5,6]
[1,10,15,21]
-}

{-
-- Second solution: folding from the left (again!) but now being cleverer (!) ...

Preliminary 'hand comptations' ...

I wish:

cumSumFoldl2 [1,9,5,6] = [1,10,15,21]

I inspect the entries of the REVERSE OF THE INPUT LIST (i.e. [6,5,9,1]) in turn from LEFT TO RIGHT one by one and write down how my (as yet non-existent!) operator /**/ should behave:

[] /**/ 6 = [6]
[6] /**/ 5 = [5,11]
[5,11] /**/ 9 = [9,14,20]
[9,14,20] /**/ 1 = [1,10,15,21]

I observe: The operation /**/ is adding into the first argument (the list) the second argument (a mapping operation) and afterwards 'premultiplying' that by the second argument. EASY!

This suggests:
-}

cumSumFoldl2 :: [Int] -> [Int]
cumSumFoldl2 numlist = foldl (/**/) [] (reverse numlist)
  where
  (/**/) :: [Int] -> Int -> [Int]
  xs /**/ num = num:(map (+num) xs)
{- testing ...
Hasworks> cumSumFoldl2 [1,9,5,6]
[1,10,15,21]
-}
  
{-
-- Third solution: folding from the right ...

Preliminary 'hand comptations' ...

I wish:

cumSumFoldr [1,9,5,6] = [1,10,15,21]

I inspect the entries of the REVERSE OF THE INPUT LIST (i.e. [6,5,9,1]) in turn from RIGHT TO LEFT one by one and write down how my (as yet non-existent!) operator /+*/ should behave:

1 /+*/ [] = [1]
9 /+*/ [1] = [1,10]
5 /+*/ [1,10] = [1,10,15]
6 /+*/ [1,10,15] = [1,10,15,21]

Therefore,

foldr (/+*/) [] (reverse [1,9,5,6]) = 6 /+*/ (5 /+*/ (9 /+*/ (1 /+*/ []))) = [1,10,15,21]

Therefore: WE THOROUGHLY STUDY THE ABOVE THOUGHTS and conclude that ...

The function cumSumFoldr :: [Int] -> [Int] we are looking for is
-}

cumSumFoldr :: [Int] -> [Int]
cumSumFoldr numlist = foldr (/+*/) [] (reverse numlist)
  where
  (/+*/) :: Int -> [Int] -> [Int]
  num /+*/ [] = [num]
  num /+*/ xs = xs ++ [num + (last xs)]
{-
testing ...
Hasworks> cumSumFoldr [1,9,5,6]
[1,10,15,21]
-}

-------------------------------------------
-- 6: mapping implemented by folding ... --
-------------------------------------------

{-
First solution: folding from the left ...

Preliminary 'hand comptations' on a symbolic list [x1,x2,x3,x4] ...

[] !/! x1 = [f x1]
[f x1] !/! x2 = [f x2, f x1]
[f x2, f x1] !/! x3 = [f x3, f x2, f x1]
[f x3, f x2, f x1] !/! x4 = [f x4, f x3, f x2, f x1] ---> reverse now!

Therefore:

((([] !/! x1) !/! x2) !/! x3) !/! x4 = map f (reverse [x1,x2,x3,x4])

Therefore:

foldl (!/!) [] [x1,x2,x3,x4] = map f (reverse [x1,x2,x3,x4])

Therefore:

foldl (!/!) [] (reverse [x1,x2,x3,x4]) = map f [x1,x2,x3,x4]
-}

mapFoldl :: (a -> b) -> [a] -> [b]
mapFoldl f list = foldl (func f) [] (reverse list)
  where
  func :: (a -> b) -> [b] -> a -> [b]
  func f ys x = (f x) : ys
{- NOTICE HERE: the function of two variables (what would have become an operator) comes about by partial application !!

testing ...

Hasworks> mapFoldl (\x -> 2*x) [8,3,5]
[16,6,10]
-}

{-
Second solution: folding from the right ...

Preliminary 'hand comptations' on a symbolic list [x1,x2,x3,x4] ...

x4 !//! [] = [f x4]
x3 !//! [f x4] = [f x3, f x4]
x2 !//! [f x3, f x4] = [f x2, f x3, f x4]
x1 !//! [f x2, f x3, f x4] = [f x1, f x2, f x3, f x4]

Therefore:

x1 !//! (x2 !//! (x3 !//! (x4 !//! []))) = [f x1, f x2, f x3, f x4]

Therefore:

foldr (!//!) [] = [f x1, f x2, f x3, f x4] = map f [x1, x2, x3, x4]

-}
mapFoldr :: (a -> b) -> [a] -> [b]
mapFoldr f list = foldr (func f) [] list
  where
  func :: (a -> b) -> a -> [b] -> [b]
  func f x ys = (f x) : ys
{- NOTICE HERE: the function of two variables (what would have become an operator) comes about by partial application !!

testing ...
Hasworks> mapFoldr (\x -> 2*x) [8,3,5]
[16,6,10]
-}

-} -- <------ COMMENTING OUT ENDS HERE !!!!

-- cumulative sum ... (an `old` problem!)
{-

 -----...---> [1,6,9,18,20] is the cumulative sum of the lhs list
[4,5,3,9,2] -----...---> 
     [4,9,12,21,23] comes about as [4, "add 4 into the cumulative sum of [5,3,9,2]"] i.e
     [4,9,12,21,23] comes about as [4, "add 4 into [5,8,17,19]"]

-}

mycumsum :: [Int] -> [Int]
mycumsum []     = []                            -- base case
mycumsum (x:xs) = (x: (map (x+) (mycumsum xs))) -- recursive step

mycumsum2 :: [Int] -> [Int]
mycumsum2 []     = []                                      -- base case
mycumsum2 (x:xs) = (x: (map (\t -> x + t) (mycumsum2 xs))) -- recursive step
{-
Hasworks> mycumsum [1,5,3,9,2]
[1,6,9,18,20]
Hasworks> :r
Hasworks> mycumsum2 [1,5,3,9,2]
[1,6,9,18,20]
-}
--------------------------------------------------------
--                                                    --
-- LABORATORY EXERCISES ON FOLDING END (27.10.2016)   --
--                                                    --
--------------------------------------------------------

--------------------------------------------
--                                        --
-- Lectures 1 Nov 2016 (Tue) START        --
--                                        --
--------------------------------------------

myfoldl :: (a -> b -> a) -> a -> [b] -> a -- obtained after some reasoning ...
myfoldl _ z []     = z                    -- base case
myfoldl f z (x:xs) = myfoldl f (f z x) xs -- recursive step

{-
Hasworks> myfoldl (+) 0 [1,2,3,4,5]
15
-}
myfoldr :: (a -> b -> b) -> b -> [a] -> b
myfoldr _ z []     = z                    -- base case
myfoldr f z (x:xs) = f x (myfoldr f z xs) -- recursive step
{-
Hasworks> myfoldr (+) 0 [1,2,3,4,5]
15
-}

-- implement take ...
{-
Hasworks> take 5 [1,2,3,55,6,7,88,999]
[1,2,3,55,6]
Hasworks> take 5 ["word","word2","word3","noun","yes","no"]
["word","word2","word3","noun","yes"]

OBSERVE THAT take is polymorphic in the second argument ...
-}

mytake :: Int -> [a] -> [a]
mytake 0 _      = []                  -- base case
mytake n (x:xs) = x:(mytake (n-1) xs) -- recursive step
{-
Hasworks> take 5 ["word","word2","word3","noun","yes","no"]
["word","word2","word3","noun","yes"]
Hasworks> mytake 5 ["word","word2","word3","noun","yes","no"]
["word","word2","word3","noun","yes"]

-}
mydrop :: Int -> [a] -> [a]
mydrop 0 xs     = xs               -- base case
mydrop n (x:xs) = mydrop (n-1) xs  -- recursive step
{-
Hasworks> mydrop 3 ["word","word2","word3","noun","yes","no"]
["noun","yes","no"]

-}
{-
What else have I done in these lectures?

1) I have discussed the idea of exhaustively verifying a program (a Haskell function). It was

my definition the logical disjunction denoted by ||. And I have discussed how one would verify that
this operation is associative,

i.e.
(x || y) || z = x || (y || z)

for all values of type Bool. This is possible as the equation is only to be verified for
 8 points.

2) For functions with an infinite domain, we can't do exhaustive testing. Used the example

1 + 2 + 3 + ... + n = n * (n + 1)/2

First, I have reasoned that this formula holds [can be a rather informal messy business]
(played in effect the role of the software 'implementor') Now ... the implementor can do 
testing (which will never be a proof of correctness, or, (s)he can do an INDUCTION PROOF.

3) Indicated the idea of the INDUCTION PROOF by using the 'infinite ladder' analogy.
And, wrote up formally the steps involved.

4) Mentioned Chapter 8 of Simon Thompson's book.

CONTINUATION OF ALL THIS WILL FOLLOW IN THE NEXT LECTURE !!!

-}


--------------------------------------------
--                                        --
-- Lectures 1 Nov 2016 (Tue) END          --
--                                        --
--------------------------------------------

-------------------------------------------------------------------------------
--                                                                           --
-- LABORATORY EXERCISES ON FURTHER EXERCISES ON RECURSION START (03.11.2016) --
--                                                                           --
-------------------------------------------------------------------------------
--
-- MODEL SOLUTIONS COMMENTED OUT (TO START WITH); YOU ARE FREE TO EXPERIMENT!
{-

----------------------------------
-- 1: define your version of ++ --
----------------------------------

(/++/) :: [a] -> [a] -> [a]
[] /++/ ys     = ys
(x:xs) /++/ ys = (x:(xs /++/ ys))

--------------------------------------
-- 2: define your version of concat --
--------------------------------------

newconcat :: [[a]] -> [a]
newconcat []     = []
newconcat (x:xs) = x /++/ (newconcat xs)

--------------------------------------
-- 3: define your version of filter --
--------------------------------------

newfilter :: (a -> Bool) -> [a] -> [a]
newfilter _ [] = []
newfilter f (x:xs)
  | f x       = x : (newfilter f xs)
  | otherwise = newfilter f xs

-----------------------------------
-- 4: define your version of and --
-----------------------------------

(/&&/) :: Bool -> Bool -> Bool
True /&&/ True = True
_ /&&/ _       = False

newand :: [Bool] -> Bool
newand [] = True
newand (x:xs) = x /&&/ (newand xs)

-}
-----------------------------------------------------------------------------
--                                                                         --
-- LABORATORY EXERCISES ON FURTHER EXERCISES ON RECURSION END (03.11.2016) --
--                                                                         --
-----------------------------------------------------------------------------


-----------------------------------------------------------------
-- Hints for the coursework in the Lab on 03.11.2016 ... START --
-----------------------------------------------------------------

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

-- some experimentation ...
{-
Hasworks> bpic 1
[" XXX ","X   X","XXXXX","X   X","X   X"]
Hasworks> map length (bpic 1)
[5,5,5,5,5]
Hasworks> map length (bpic 2)
[5,5,5,3,5]

... NECESSARY CONDITION OF BEING A PICTURE IS THAT ALL LIST ENTRIES (=ROWS) SHOULD HAVE THE SAME LENGTH
... HOW DO I FIND OUT? ... LOOK AT EXPERIMENT ABOVE ... all the entries of a n [Int] list should be the same

... several possible ideas ...

(1) Calculate minimum and maximum and if they are the same then fine !!
(2) Check if every element in the tail is equal to the head ...

-}

allequal2 :: [Int] -> Bool
allequal2 [x]       = True    -- base case
allequal2 (x:x2:xs)           -- recursive step
  | x /= x2   = False              -- line 1
  | otherwise = allequal2 (x2:xs)  -- line 2


-- POLYMORPHIC EXTENSION

allequal3 :: (Eq a) => [a] -> Bool
allequal3 [x]       = True    -- base case
allequal3 (x:x2:xs)           -- recursive step
  | x /= x2   = False              -- line 1
  | otherwise = allequal3 (x2:xs)  -- line 2

{-
x /= y = (not (x == y))
-}

{-
Hasworks> allequal2 (map length (bpic 1))
True
Hasworks> allequal2 (map length (bpic 2))
False
-}
{-
REWRITING ...

allequal2 [5,5,5,5,5]   ... prepare for pattern matching ...
allequal2 (5:5:[5,5,5]) ... by using line 2 gives ... 
allequal2 (5:[5,5,5])   ... matches pattern for recursive step ...
allequal2 (5:5:[5,5])   ... by using line 2 gives ...
allequal2 (5:[5,5])     ... matches pattern for recursive step ...
allequal2 (5:5:[5])     ... by using line 2 gives ...
allequal2 (5:[5])       ... matches pattern for recursive step ...
allequal2 (5:5:[])      ... by using line 2 gives ...
allequal2 (5:[])        ... this is equivalent to ...
allequal2 ([5])         ... matches pattern for base case ...
True

allequal2 [5,5,3,5,5]   ... prepare for pattern matching ...
allequal2 (5:5:[3,5,5]) ... by using line 2 gives ...
allequal2 (5:[3,5,5])   ... matches pattern for recursive step ...
allequal2 (5:3:[5,5])   ... by using line 1 gives ...
False
-}

{-
Experiments for displaying a picture ...

Hasworks> (\s -> s ++ "\n") "today"
"today\n"
Hasworks> map (\s -> s ++ "\n") ["sentence1","sentence2","sentence3"]
["sentence1\n","sentence2\n","sentence3\n"]
Hasworks> concat $$
"sentence1\nsentence2\nsentence3\n"
Hasworks> putStr $$
sentence1
sentence2
sentence3

Hasworks> ["sentence1","sentence2","sentence3"]
["sentence1","sentence2","sentence3"]

... Q: What if I do not want an empty line ? Why is it there?
    A: because of the last \n. To avoid it do

Hasworks> init "sentence1\nsentence2\nsentence3\n"
"sentence1\nsentence2\nsentence3"
Hasworks> putStr $$
sentence1
sentence2
sentence3
Hasworks>

-}
-----------------------------------------------------------------
-- Hints for the coursework in the Lab on 03.11.2016 ... END   --
-----------------------------------------------------------------

---------------------------------------
--                                   --
-- Start lecture on 8 Nov. 2013, Tue --
--                                   --
---------------------------------------

{-
I have explained the idea of an induction proof by reasoning that

1+2+3+...+n = n(n+1)/2

(See handwritten notes.)

Used the 'infinite ladder analogy'. (See handwritten notes.)

All that was "Proof by Induction".

Want to extend the idea to "STRUCTURAL INDUCTION"

Define two functions, newsum and doubleAll and experiment ... and will suspect an identity.
-}

newsum :: [Int] -> Int
newsum []     = 0                -- s.1
newsum (x:xs) = x + (newsum xs)  -- s.2

{-
Hasworks> newsum [4,2,8]
14
-}

doubleAll :: [Int] -> [Int]
doubleAll []     = []                       -- d.1
doubleAll (x:xs) = (2 * x) : (doubleAll xs) -- d.2
{-
Hasworks> doubleAll [4,2,8]
[8,4,16]

-}
{- The session below suggests that two implementations are equal pointwise ...
Hasworks> newsum [4,2,8]
Hasworks> doubleAll [4,2,8]
[8,4,16]
Hasworks> newsum (doubleAll [4,2,8])
28
Hasworks> 2 * (newsum [4,2,8])
28
Hasworks> (newsum . doubleAll) [4,2,8]
28
Hasworks> ((\x -> 2 * x) .  newsum) [4,2,8]
28

SUSPICION ...

(newsum . doubleAll) = ((\x -> 2 * x) .  newsum) OR


For all lists xs of type [Int]

(newsum . doubleAll) xs = 2 * (newsum xs) OR

=================================================
# FOR ALL LISTS xs OF TYPE [Int], it is         #
#                                               #
# newsum (doubleAll xs) = 2 * (newsum xs)       #
=================================================

This has the structure of the statement 1+2+3+... + n = n(n+1)/2

REWRITE THIS AS ...

###################################################################
# FOR ALL n = 0, 1, 2, 3, ...                                     #
# +----------------------------------------------------------+    #
# | FOR ALL LISTS xs OF TYPE [Int] and of length n, it is    |    #
# |                                                          |    #
# | newsum (doubleAll xs) = 2 * (newsum xs)                  |    #
# +----------------------------------------------------------+    #
###################################################################

The statement in the INNER frame shall be called P(n).
Start induction with n = 0, i.e. Base Case is P(0).

Base Case: Have to show that P(0) holds.

To be shown that

newsum (doubleAll []) = 2 * (newsum [])

So then ...
l.h.s.= 
newsum (doubleAll [])   is by d.1 ...
newsum []               is by s.1
0

r.h.s.=
2 * (newsum [])         is by s.1 ...
2 * 0                   is by the implementation ...
0

Therefore P(0).

-------------------
Induction Step:

We have to show P(n) ==> P(n+1) i.e.

Assuming that for a particular n:
 +----------------------------------------------------------+    
 | FOR ALL LISTS xs OF TYPE [Int] and of length n, it is    |    
 |                                                          |  (H)
 | newsum (doubleAll xs) = 2 * (newsum xs)                  |    
 +----------------------------------------------------------+    
we have to show that
 +----------------------------------------------------------+    
 | FOR ALL LISTS xs OF TYPE [Int] and of length n+1, it is  |    
 |                                                          |
 | newsum (doubleAll xs) = 2 * (newsum xs)                  |    
 +----------------------------------------------------------+ 

i.e.
 +----------------------------------------------------------+    
 | FOR ALL LISTS ys OF TYPE [Int] and of length n           |
 | and y of type Int, it is                                 |    
 |                                                          |
 | newsum (doubleAll (y:ys)) = 2 * (newsum (y:ys))          |    
 +----------------------------------------------------------+

So then,

l.h.s =
newsum (doubleAll (y:ys))        use d.2 ...
newsum ((2*y):(doubleAll ys))    use s.2 ...
(2*y) + (newsum (doubleAll ys))  use (H) ...
(2*y) + 2 * (newsum ys)

r.h.s. =
2 * (newsum (y:ys))       use s.2 ...
2 * (y + (newsum ys))     use distribution rule of arithmetics ...
(2 * y) + 2 * (newsum ys)

 BUT THIS IS THE l.h.s.

Successfully conducted the induction step.
-}
{-

       doubleAll
  xs -----------------> doubleAll xs
   |                        |
   | newsum                 | newsum
   |                        |
   v            *2          v
  newsum xs ---------> 2 * (newsum xs) = newsum (doubleAll xs)

Called "commutative diagram"

Chapter 8 Simon Thompson's Book.

-}


---------------------------------------
--                                   --
--   End lecture on 8 Nov. 2013, Tue --
--                                   --
---------------------------------------

-----------------------------------------------------------------
-- Hints for the coursework in the Lab on 10.11.2016 ... Start --
-----------------------------------------------------------------
{-
Hasworks> bpic 1
[" XXX ","X   X","XXXXX","X   X","X   X"]
Hasworks> (\x -> x ++ "\n") "uhhjgj"
"uhhjgj\n"
Hasworks> map (\x -> x ++ "\n") (bpic 1) 
[" XXX \n","X   X\n","XXXXX\n","X   X\n","X   X\n"]
Hasworks> concat $$
" XXX \nX   X\nXXXXX\nX   X\nX   X\n"
Hasworks> putStr $$
 XXX 
X   X
XXXXX
X   X
X   X

Hasworks> ["1234","abcd","ABCD"]
["1234","abcd","ABCD"]
Hasworks> putStr (concat ["1234\n","abcd\n","ABCD\n"])
1234
abcd
ABCD

Hasworks> ["1aA","2bB","3cC","4dD"]
["1aA","2bB","3cC","4dD"]
Hasworks> putStr (concat ["1aA\n","2bB\n","3cC\n","4dD\n"])
1aA
2bB
3cC
4dD

WANT a functuon 

["1234","abcd","ABCD"] ---> ["1aA","2bB","3cC","4dD"]

[[]]    ----> [[]]

["ABCD"] ---> ['A':"",'B':"",'C':"",'D':""] = ["A","B","C","D"]

["abcd","ABCD"] = "abcd":["ABCD"]  --->  ['a':"A",'b':"B",'c':"C",'d':"D"]
                                          =["aA","bB","cC","dD"]

rotate :: [String] -> [String]
rotate [] = []
rotate (x:xs) = (distrib x (rotate xs))

---- WE SUSPECT THAT INSIDE WE NEED distrib ...

distrib :: String -> [String] -> [String]
distrib [] _          = []
distrib (x:xs) (y:ys) = (x:y):(distrib xs ys)

Want distrib to do this ...

"1234" ["aA","bB","cC","dD"]   ----> ["1aA","2bB","3cC","4dD"]
Hasworks> distrib "abcd" ["A","B","C","D"]
["aA","bB","cC","dD"]
-}

distrib :: String -> [String] -> [String]
distrib _ []          = []
distrib (x:xs) (y:ys) = (x:y):(distrib xs ys)

{-
["aA","bB","cC","dD"] is rotate ["abcd","ABCD"]
["aA","bB","cC","dD"] is distrib "abcd" ["ABCD"]
-}

{-
ONE SUGGESTED SOLUTION IS BY foldr and distrib as suggested below ...

Hasworks> distrib "ABCD" ["","","",""]
["A","B","C","D"]
Hasworks> distrib "abcd" $$
["aA","bB","cC","dD"]
Hasworks> distrib "1234" $$
["1aA","2bB","3cC","4dD"]
Hasworks> distrib "abcd" (distrib "ABCD" ["","","",""])
["aA","bB","cC","dD"]
Hasworks> distrib "1234" (distrib "abcd" (distrib "ABCD" ["","","",""]))
["1aA","2bB","3cC","4dD"]

distrib I have used as an operator (better: a function of two variables!

Hasworks> foldr distrib ["","","",""] ["1234","abcd","ABCD"]
["1aA","2bB","3cC","4dD"]
-}

empties :: Int -> [String]
empties 1 = [""]
empties n = "":(empties (n-1))

{-
Hasworks> foldr distrib (empties (length (head ["1234","abcd","ABCD"]))) ["1234","abcd","ABCD"]
["1aA","2bB","3cC","4dD"]

Suggesting ...
-}
rotate :: [String] -> [String]
rotate picture = foldr distrib (empties (length (head picture))) picture

{- IT WORKS !!

Hasworks> rotate ["1234","abcd","ABCD"]
["1aA","2bB","3cC","4dD"]
Hasworks> rotate (bpic 1)
[" XXXX","X X  ","X X  ","X X  "," XXXX"]
Hasworks> map (\x -> x ++ "\n") $$
[" XXXX\n","X X  \n","X X  \n","X X  \n"," XXXX\n"]
Hasworks> concat $$
" XXXX\nX X  \nX X  \nX X  \n XXXX\n"
Hasworks> putStr $$
 XXXX
X X  
X X  
X X  
 XXXX

... one more thing .. you can use distrib as an operator as demonstrated

Hasworks> "ABCD" `distrib` ["","","",""]
["A","B","C","D"]
Hasworks> "abcd" `distrib` ("ABCD" `distrib` ["","","",""])
["aA","bB","cC","dD"]

POSSIBLE TASK FOR STUDENTS: DO THE SAME BY APPLYING foldl
-}

-----------------------------------------------------------------
-- Hints for the coursework in the Lab on 10.11.2016 ... END   --
-----------------------------------------------------------------

---------------------------------------------------
--                                               --
-- LECTURES START 15 Nov 2016 (Tue)              --
--                                               --
---------------------------------------------------
--
-- This lecture is still on structural induction ...
--
{-
Note: the functions mylength and (|++|) have been defined earlier in this script file.
I am reproducing their definition below only for reference.

mylength :: [a] -> Int  -- recursive definition of length of a list (mimicking length)
mylength []     = 0                 -- base case      m.1
mylength (x:xs) = 1 + (mylength xs) -- recursive step m.2


(|++|) :: [a] -> [a] -> [a]
[]     |++| xs = xs               -- c.1 base case
(x:xs) |++| ys = x : (xs |++| ys) -- c.2 recursive

-}

{-

`EXPERIMENTATION' ...

Hasworks> [8,11,99] |++| [6,3,9,0]
[8,11,99,6,3,9,0]
Hasworks> mylength ([8,11,99] |++| [6,3,9,0])
7
Hasworks> mylength [8,11,99]
3
Hasworks> mylength [6,3,9,0]
4

from this we suspect ...
-------------------------------------------------------------------+
For all lists xs and ys of type [Int] the following holds ...      |
                                                                   | (*)
mylength (xs |++| ys) = (mylength xs) + (mylength ys)              |
-------------------------------------------------------------------+

Show by structural induction on the first argument.

Two steps have to be conducted.

BASE CASE will be: To be shown that for all ys of type [Int] ...

mylength ([] |++| ys) = (mylength []) + (mylength ys)

INDUCTION STEP will be:  ... first reformulate (*) ...

====================================================================================
For all n = 0, 1, 2, ...                                                           =
--------------------------------------------------------------------------------+  =
For all lists xs of length n and xs  & ys of type [Int] the following holds ... |  =
                                                                                |  = (*)
mylength (xs |++| ys) = (mylength xs) + (mylength ys)                           |  = 
--------------------------------------------------------------------------------+  =
====================================================================================

Assuming that the statement in the inner frame holds for a particular n, I can show that
it also holds with n replaced by n+1, that is

--------------------------------------------------------------------------------+
For all lists xs of length n+1 and xs & ys of type [Int] the following holds ...|
                                                                                |
mylength (xs |++| ys) = (mylength xs) + (mylength ys)                           |
--------------------------------------------------------------------------------+

i.e.
--------------------------------------------------------------------------------+
For all lists xs = (z:zs) and zs & ys of type [Int], z is of type Int           |
 and length zs is n the following holds ...                                     |
                                                                                |
mylength ((z:zs) |++| ys) = (mylength (z:zs)) + (mylength ys)                   |
--------------------------------------------------------------------------------+

LETS DO IT!

BASE CASE: To be shown that for all ys of type [Int] ...

mylength ([] |++| ys) = (mylength []) + (mylength ys)

l.h.s.=
mylength ([] |++| ys)
mylength ys                    ... by c.1

r.h.s.=
(mylength []) + (mylength ys)
0 + (mylength ys)              ... by m.1
mylength ys                    ... by Haskell implementor

Induction Step: We have to show that ...

Assuming that

--------------------------------------------------------------------------------+
For all lists xs of length n and xs  & ys of type [Int] the following holds ... |
                                                                                | (H)
mylength (xs |++| ys) = (mylength xs) + (mylength ys)                           | 
--------------------------------------------------------------------------------+

for a particular n, show that

--------------------------------------------------------------------------------+
For all lists xs = (z:zs) and zs & ys of type [Int], z is of type Int           |
 and length zs is n the following holds ...                                     |
                                                                                |
mylength ((z:zs) |++| ys) = (mylength (z:zs)) + (mylength ys)                   |
--------------------------------------------------------------------------------+

Lets do it!

Take z from Int, zs and ys from [Int] assume and that the length of zs is n.

l.h.s.=
mylength ((z:zs) |++| ys)
mylength (z:(zs |++| ys))             ... by c.2:  "(x:xs) |++| ys = x : (xs |++| ys)"
1 + (mylength (zs |++| ys))           ... by m.2   ... get the rule here if you like !
1 + ((mylength zs) + (mylength ys)))  ... by induction hypothesis (H)

r.h.s.=
(mylength (z:zs)) + (mylength ys)
(1 + (mylength zs)) + (mylength ys)   ... by m.2
1 + ((mylength zs) + (mylength ys)))  ... by knowing: addition (in Haskell) is associative


ALL THIS IS FROM CHAPTER 8 of SIMON THOMPSON'S book. Albeit there not that detailed.
-}

shunt :: [a] -> [a] -> [a]
shunt []     ys = ys               -- s.1
shunt (x:xs) ys = shunt xs (x:ys)  -- s.2

rev :: [a] -> [a]
rev xs = shunt xs []

{-
Hasworks> shunt [1,2,3,4] []
[4,3,2,1]
Hasworks> shunt [1,2,3,4] [10,20,30]
[4,3,2,1,10,20,30]
Hasworks> rev [1,2,3,4]
[4,3,2,1]
Hasworks> rev (rev [1,2,3,4])
[1,2,3,4]

TASK: Confirm that applying rev twice is the identity.
It is natural to expect that that can be done by induction.
As it stands, however, this is nor possible!

Want: for all lists xs it is

rev (rev xs) = xs

i.e.

shunt (rev xs) [] = xs

i.e.

shunt (shunt xs []) [] = xs

i.e.

shunt (shunt xs []) [] = shunt [] xs

I cant prove this by induction ... BUT ...

I can prove something even more general :
(head
-------------------------------------+
For all lists xs and ys it is        |
                                     | (*)
shunt (shunt xs ys) [] = shunt ys xs |
-------------------------------------+

PROOF OF (*) by structural induction over xs

Base:
 to be shown : 
-------------------------------------+
For all lists ys it is               |
                                     |
shunt (shunt [] ys) [] = shunt ys [] |
-------------------------------------+
lhs=
shunt (shunt [] ys) []
shunt ys []                    ... by s.1
rhs

(*) in detail:
==================================================
For all n = 0,1,2, ...                           =
-----------------------------------------------+ =
For all lists xs of length n and list ys it is | =
                                               | =
shunt (shunt xs ys) [] = shunt ys xs           | =
-----------------------------------------------+ =
==================================================

Induction step involves showing that if the inside box holds for a particular n
then it also holds for n replaced by n+1.

Assume that for a particular n it is:
-----------------------------------------------+ 
For all lists xs of length n and list ys it is | 
                                               | (H)
shunt (shunt xs ys) [] = shunt ys xs           | 
-----------------------------------------------+ 

Then show that

-----------------------------------------------+ 
For all lists zs of length n and list ys it is | 
                                               |
shunt (shunt (z:zs) ys) [] = shunt ys (z:zs)   | 
-----------------------------------------------+

l.h.s. =
shunt (shunt (z:zs) ys) []
shunt (shunt zs (z:ys)) [] ... by s.2
shunt (z:ys) zs            .. by (H)
shunt ys (z:zs)            .. by s.2
= r.h.s.

-}
---------------------------------------------------
--                                               --
-- LECTURES END 15 Nov 2016 (Tue)                --
--                                               --
---------------------------------------------------

-- lab classes

---------------------------------------------------
--                                               --
-- LAB CLASSES 17.11.2016 (Thursday) START ...   --
--                                               --
---------------------------------------------------

-----------------------------------------------------------------
-- Hints for the coursework in the Lab on 17.11.2016 ... START --
-----------------------------------------------------------------

{- AIM: rotaste a picture by using iterate

Hasworks> putStr (concat ["1234\n","abcd\n","ABCD\n"])
1234
abcd
ABCD

Hasworks> ["1aA","2bB","3cC","4dD"]
["1aA","2bB","3cC","4dD"]
Hasworks> putStr (concat ["1aA\n","2bB\n","3cC\n","4dD\n"])
1aA
2bB
3cC
4dD

---------------------
1234
abcd
ABCD

should be transformed to ...

1aA
2bB
3cC
4dD
----------------------

[['1','2','3','4'],['a','b','c','d'],['A','B','C','D']]   ---> ?

[['1','a','A'],['2','b','B'],['3','c','C'],['4','d','D']]


(["1234","abcd","ABCD"], [])            ---> ?  shal we call it shave
(["234","bcd","BCD"], ["1aA"])          ---> ?
(["34","cd","CD"], ["2bB","1aA"])       ---> ?
(["4","d","D"], ["3cC","2bB","1aA"])    ---> ?
(["","",""], ["4dD","3cC","2bB","1aA"]) -------  reverse the second entry of the pair -->

["1aA","2bB","3cC","4dD"]   YES!

-}

{-
Hugs> ["1234", "abcd", "ABCD"]
["1234","abcd","ABCD"]
Hugs> map head ["1234", "abcd", "ABCD"]
"1aA"
Hugs> map tail ["1234", "abcd", "ABCD"]
["234","bcd","BCD"]
-}

shave :: ([String],[String]) -> ([String],[String])
shave (xs,ys) 
  | (sum (map length xs)) == 0 = (xs, ys)
  | otherwise                  = (map tail xs, (map head xs):ys)
{- shave works as intended ...

Hasworks> shave (["1234","abcd","ABCD"], [])
(["234","bcd","BCD"],["1aA"])
Hasworks> shave $$
(["34","cd","CD"],["2bB","1aA"])
Hasworks> shave $$
(["4","d","D"],["3cC","2bB","1aA"])
Hasworks> shave $$
(["","",""],["4dD","3cC","2bB","1aA"])
Hasworks> shave $$
(["","",""],["4dD","3cC","2bB","1aA"])
Hasworks> shave $$
(["","",""],["4dD","3cC","2bB","1aA"])
Hasworks> shave $$
(["","",""],["4dD","3cC","2bB","1aA"])
Hasworks> shave $$
(["","",""],["4dD","3cC","2bB","1aA"])
Hasworks> shave $$
(["","",""],["4dD","3cC","2bB","1aA"])
Hasworks> shave $$
(["","",""],["4dD","3cC","2bB","1aA"])
-}

{-
Hasworks> head (drop 102 (iterate shave (["1234","abcd","ABCD"], [])))
(["","",""],["4dD","3cC","2bB","1aA"])
Hasworks> snd $$
["4dD","3cC","2bB","1aA"]
Hasworks> reverse $$
["1aA","2bB","3cC","4dD"]
Hasworks> (iterate shave (["1234","abcd","ABCD"], []))!!102
(["","",""],["4dD","3cC","2bB","1aA"])
Hasworks> take 5 (iterate shave (["1234","abcd","ABCD"], []))
[(["1234","abcd","ABCD"],[]),(["234","bcd","BCD"],["1aA"]),(["34","cd","CD"],["2bB","1aA"]),(["4","d","D"],["3cC","2bB","1aA"]),(["","",""],["4dD","3cC","2bB","1aA"])]
Hasworks> head (dropWhile (\(xs, ys) -> (sum (map length xs)) /= 0) (iterate shave (["1234","abcd","ABCD"], [])))
(["","",""],["4dD","3cC","2bB","1aA"])
Hasworks> snd (head (dropWhile (\(xs, ys) -> (sum (map length xs)) /= 0) (iterate shave (["1234","abcd","ABCD"], []))))
["4dD","3cC","2bB","1aA"]
Hasworks> reverse (snd (head (dropWhile (\(xs, ys) -> (sum (map length xs)) /= 0) (iterate shave (["1234","abcd","ABCD"], [])))))
["1aA","2bB","3cC","4dD"]
-}
-----------------------------------------------------------------
-- Hints for the coursework in the Lab on 17.11.2016 ... END   --
-----------------------------------------------------------------

{-
SOME EXPERIMENTS CONCERNING THE SHEET induction_4.pdf: 

unzip is `in a sense' (see last two inputs) the inverse of zip  BUT ...

Hasworks> zip [1,2,3,4,5] "abcde"
[(1,'a'),(2,'b'),(3,'c'),(4,'d'),(5,'e')]
Hasworks> :t unzip
unzip :: [(a,b)] -> ([a],[b])
Hasworks> unzip [(1,'a'),(2,'b'),(3,'c'),(4,'d'),(5,'e')]
([1,2,3,4,5],"abcde")
Hasworks> zip (fst (unzip [(1,'a'),(2,'b'),(3,'c'),(4,'d'),(5,'e')])) (snd (unzip [(1,'a'),(2,'b'),(3,'c'),(4,'d'),(5,'e')]))
[(1,'a'),(2,'b'),(3,'c'),(4,'d'),(5,'e')]
Hasworks> zip [1,2,3,4,5] "abcdefghijklmnopqrstuvwxyz"
[(1,'a'),(2,'b'),(3,'c'),(4,'d'),(5,'e')]
Hasworks> unzip $$
([1,2,3,4,5],"abcde")
-}

---------------------------------------------------
--                                               --
-- LAB CLASSES 17.11.2016 (Thursday) ... END     --
--                                               --
---------------------------------------------------


------------------------------------------------------------
--                                                        --
-- LECTURES 22.11.2016 (Tuesday) ... (Haskell part) START --
--                                                        --
------------------------------------------------------------

{-
I have started - at students' request - by elaborating on problems related to some
coursework questions ...
-}



-----------------------------------------------------------
--                           Task 1                      --
-----------------------------------------------------------

alleq :: String -> Bool
alleq [_]     = True
alleq [x,y]   = x == y
alleq (x:y:xs)
  | x == y    = alleq (y:xs) 
  | otherwise = False

alleqp :: Eq a => [a] -> Bool  -- polymorphic version for all types in the Eq class
--                                i.e where ==, >, <, <=, >= are declared
alleqp [_]     = True
alleqp [x,y]   = x == y
alleqp (x:y:xs)
  | x == y     = alleqp (y:xs) 
  | otherwise  = False

-- Q: rows of equal length?
-- A: Demonstrate the experiments based on the above ...
{-
Q: Do any of the rows contain anything than 'X' or ' '?
A: In the session below ...

Cw2016> (\x -> ((x == 'X') || (x == ' '))) ' '
True
Cw2016> (\x -> ((x == 'X') || (x == ' '))) 'X'
True
Cw2016> dropWhile (\x -> ((x == 'X') || (x == ' '))) " XXX "
""
Cw2016> dropWhile (\x -> ((x == 'X') || (x == ' '))) " XXx "
"x "
Cw2016> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) " XXx ")
2
Cw2016> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) " XXX ")
0
Cw2016> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) " XXX ") == 0
True
Cw2016> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) " XXx ") == 0
False
Cw2016> (\row -> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) row) == 0) " XXX"
True
Cw2016> (\row -> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) row) == 0) " XuX"
False
Cw2016> map (\row -> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) row) == 0) [" XX","   ","XXX"]
[True,True,True]
Cw2016> alleqp $$
True
Cw2016> map (\row -> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) row) == 0) [" XX","w  ","XeX"]Cw2016> (\x -> ((x == 'X') || (x == ' '))) ' '
True
Cw2016> (\x -> ((x == 'X') || (x == ' '))) 'XC'
ERROR - Improperly terminated character constant
Cw2016> (\x -> ((x == 'X') || (x == ' '))) 'X'
True
Cw2016> dropWhile (\x -> ((x == 'X') || (x == ' '))) " XXX "
""
Cw2016> dropWhile (\x -> ((x == 'X') || (x == ' '))) " XXx "
"x "
Cw2016> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) " XXx ")
2
Cw2016> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) " XXX ")
0
Cw2016> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) " XXX ") == 0
True
Cw2016> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) " XXx ") == 0
False
Cw2016> (\row -> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) row) == 0) " XXX"
True
Cw2016> (\row -> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) row) == 0) " XuX"
False
Cw2016> map (\row -> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) row) == 0) [" XX","   ","XXX"]
[True,True,True]
Cw2016> alleqp $$
True
Cw2016> map (\row -> length (dropWhile (\x -> ((x == 'X') || (x == ' '))) row) == 0) [" XX","w  ","XeX"]
[True,False,False]
Cw2016> alleqp $$
False
[True,False,False]
Cw2016> alleqp $$
False
-}

-----------------------------------------------------------
--                           Task 2                      --
-----------------------------------------------------------

swapd :: Char -> Char
swapd ' ' = 'X'
swapd 'X' = ' ' 
{-
Then I now did some interactive experimentation using 'map map ...' etc (not copied in!)
-}

------------------------------------------------------------
--                                                        --
-- LECTURES 22.11.2016 (Tuesday) ... (Haskell part) END   --
--                                                        --
---------------------------------------------------------------------------------------------------
-- continued the lectures (after a fire alarm) by starting with Prolog ... see Prolworks_2017.pl --
--------------------------------------------------------------------------------------------------- 


-------------------------------------------------
--                                             --
--  LAB CLASSES 24 Nov. 2016 (Thu) START ...   --
--                                             --
-------------------------------------------------

-- ALL my thoughts revolved around the Haskell coursework ...
{-
Framing a picture ...


list of strings of the same length ---> ? 'same' 

1) ADD TOP AND BOTTOM ...
list except an additional first string (row) and the same added as the last row

abcd
ABCD
1234

---> ?

----
abcd
ABCD
1234
----
i.e.

["abcd","ABCD","1234"] ---> 

["----","abcd","ABCD","1234","----"]

1.a. Measure the width of a picture
1.b. Poduce a string of '-' of that length
1.c. Put what you have produced in 1.b 'in front' of the original and
'behind' 
-}

produceh :: Int -> String
produceh 0 = ""
produceh n = '-':(produceh (n-1))

produceinf :: Char -> String
produceinf z = z:(produceinf z) 
{-
Hasworks> produceh 6
"------"
Hasworks> take 5 (produceinf '-')
"-----"
Hasworks> take 5 (produceinf '*')
"*****"


Hasworks> length (head ["abcd","ABCD","1234"])
4
Hasworks> produceh $$
"----"
Hasworks> produceh (length (head ["abcd","ABCD","1234"]))
"----"

These experiments give rise to top_of_frame function ...
-}

top_of_frame :: [String] -> String
top_of_frame picture = produceh (length (head picture))

{-
Hasworks> top_of_frame ["abcd","ABCD","1234"]
"----"
Hasworks> (top_of_frame ["abcd","ABCD","1234"]): ["abcd","ABCD","1234"]
["----","abcd","ABCD","1234"]
Hasworks> $$ ++ [top_of_frame ["abcd","ABCD","1234"]]
["----","abcd","ABCD","1234","----"]
-}

top_and_bottom :: [String] -> [String]
top_and_bottom picture = top ++ picture ++ top
-- top_and_bottom picture = (topline : picture) ++ top
  where
  topline = top_of_frame picture
  top     = [topline]
{-
Hasworks> top_and_bottom ["abcd","ABCD","1234"]
["----","abcd","ABCD","1234","----"]

-}
{-
----
abcd
ABCD
1234
----

---> ?

|----|
|abcd|
|ABCD|
|1234|
|----|

IDEA: put '|' in front and behind row-wise as seen interactively ...

Hasworks> (\line -> "|" ++ line ++ "|") "abcd"
"|abcd|"
Hasworks> (\line -> "|" ++ line ++ "|") "----"
Hasworks> map (\line -> "|" ++ line ++ "|") ["----","abcd","ABCD","1234","----"]

["|----|","|abcd|","|ABCD|","|1234|","|----|"]


Remaining task ...

["|----|","|abcd|","|ABCD|","|1234|","|----|"] ---> ?

["+----+","|abcd|","|ABCD|","|1234|","+----+"]

IDEA: Do the modifications row-wise ...

replace "|-" by "+-" and "-|" by "-+"

(will be implemented by corner)
-}

corner :: String -> String
corner []               = []
corner (x:y:rest)
  | x == '|' && y == '-' = ('+':y: (corner rest))
  | x == '-' && y == '|' = (x:'+': (corner rest))
  | otherwise            = x:(corner (y:rest))

{-
Hasworks> corner "|-------|"
"+-------+"
Hasworks> corner "|----|"
"+----+"
Hasworks> head ["+----+","|abcd|","|ABCD|","|1234|","+----+"]
"+----+"
Hasworks> init (tail  ["+----+","|abcd|","|ABCD|","|1234|","+----+"])
["|abcd|","|ABCD|","|1234|"]
Hasworks> last ["+----+","|abcd|","|ABCD|","|1234|","+----+"]
"+----+"
-}

withcorners :: [String] -> [String]
withcorners picture = top ++ body ++ top
  where
  top  = [corner (head picture)]
  body = init (tail picture)
{-
Hasworks> withcorners ["|----|","|abcd|","|ABCD|","|1234|","|----|"]
["+----+","|abcd|","|ABCD|","|1234|","+----+"]

-}
-------------------------------------------------
--                                             --
--  LAB CLASSES 24 Nov. 2016 (Thu) ... End     --
--                                             --
-------------------------------------------------

-------------------------------------------------------
--                                                   --
-- Tutorial help (lectures) ... 29/11/2016 ... START --
--                                                   --
-------------------------------------------------------

pixor :: Char -> Char -> Char
pixor x y
  | x == 'X' || y == 'X' = 'X'
  | otherwise            = ' '

{-
Hasworks> pixor '_' '_'
' '
Hasworks> pixor 'X' '_'
'X'
Hasworks> :t zipWith
zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
Hasworks> zipWith pixor "XXXXX" "XX XX"
"XXXXX"
Hasworks> zipWith pixor "XX  X" "XX XX"
"XX XX"
-}

orpic :: [String] -> [String] -> [String]
orpic [] []         = []
orpic (x:xs) (y:ys) = (zipWith pixor x y) : (orpic xs ys)

pixand :: Char -> Char -> Char
pixand x y
  | x == 'X' && y == 'X' = 'X'
  | otherwise            = ' '

andpic :: [String] -> [String] -> [String]
andpic [] []         = []
andpic (x:xs) (y:ys) = (zipWith pixand x y) : (andpic xs ys)

-- exercise: define a function ("higher order function") which can be used
-- to do each of the operations ... 

pixop :: (Char -> Char -> Char) -> [String] -> [String] -> [String]
pixop _ []     []     = []
pixop f (x:xs) (y:ys) = (zipWith f x y) : (pixop f xs ys)

{-
Hasworks> pixop pixor (bpic 1) (bpic 7)
["XXXXX","X   X","XXXXX","X   X","XXXXX"]
Hasworks> orpic (bpic 1) (bpic 7)
["XXXXX","X   X","XXXXX","X   X","XXXXX"]
Hasworks> pixop pixand (bpic 1) (bpic 7)
["     ","X   X","XX XX","X   X","X   X"]
Hasworks> andpic (bpic 1) (bpic 7)
["     ","X   X","XX XX","X   X","X   X"]
-}
{-
moving a picture to the left ...

move a particular row to the left ...

"XX  XX  X X X"  ---> "X  XX  X X X "
Hasworks> (tail "XX  XX  X X X") ++ " "
"X  XX  X X X "
Hasworks> (tail "XX  XX  X X X") ++ [' ']
"X  XX  X X X "
Hasworks> (\row -> ((tail row) ++ " ")) "XX  XX  X X X"
"X  XX  X X X "
Hasworks> map (\row -> ((tail row) ++ " ")) (bpic 1)
["XXX  ","   X ","XXXX ","   X ","   X "]
Hasworks> bpic 1
[" XXX ","X   X","XXXXX","X   X","X   X"]

If I want to move the picture to the left a given number of times then apply this
recursively. Recommendation: rewrite the anonymous function into something named

'rolling up':

Hasworks> (\pic -> (tail pic) ++ [head pic]) [" XXX ","X   X","XXXXX","X   X","X   X"]
["X   X","XXXXX","X   X","X   X"," XXX "]

'rolling down'

Hasworks> (\pic -> ([last pic] ++ (init pic))) [" XXX ","X   X","XXXXX","X   X","X   X"]
["X   X"," XXX ","X   X","XXXXX","X   X"]

embed this and repeatedly do this (recursion!) the requisite number of times

Probably there is scope for doing the up-down & sideways movements more concesily
with polymorphic functions. DO IT!
-}

-----------------------------------------------------
--                                                 --
-- Tutorial help (lectures) ... 29/11/2016 ... END --
--                                                 --
-----------------------------------------------------



