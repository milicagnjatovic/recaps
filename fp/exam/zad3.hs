module Zad3 where

-- Zadatak 3:

-- Definisati strukturu podataka `Stek a`, gde je `a`
-- proizvoljan tip. Stek moze biti prazan ili sadrzati
-- proizvoljan broj elemenata tipa `a`.

data Stek a = 
    Prazan  
    | Elementi [a]
    -- deriving Show

-- Kreirati funkcije `fromList` i `toList` koje konvertuju
-- [a] u `Stek a`, i `Stek a` u `[a]`, redom.

fromList:: [a] -> Stek a 
fromList [] = Prazan
fromList lst= Elementi lst 

toList:: Stek a -> [a]
toList Prazan = []
toList (Elementi lst) = lst

-- Napisati QuickCheck test za funkcije `fromList` i `toList`.

prop_list:: (Eq a) => [a] -> Bool
prop_list s = (toList $ fromList s) == s

-- Instancirati Show nad `Stek a` (pretpostaviti da je
-- `a` u klasi Show) tako da se skup ispise u formatu:
--       < dno, ... , vrh >
-- (vrh i dno su elementi steka)
-- Za prazan stek:  </>
toStr:: (Show a) => [a] -> String
toStr [] = "err"
toStr [x] = show x 
toStr [a,b] = show a ++ ", " ++ show b
toStr (x:xs) = show x ++ ", " ++ toStr xs

instance (Show a) => Show (Stek a) where 
    show Prazan = "</>"
    show (Elementi lst) = "<" ++ (toStr lst) ++ ">"

-- Instancirati Functor nad `Stek a`
instance Functor Stek where 
    fmap _ Prazan = Prazan
    fmap f (Elementi lst) = Elementi (fmap f lst)