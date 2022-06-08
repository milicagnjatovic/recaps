module Zad2 where

-- Zadatak 2:
--
-- Napisati program koji iz fajla čija je putanja data kao argument 
-- komandne linije, čita brojeve jedan po jedan, svaki u zasebnom redu.
-- Program ispisuje sve brojeve poravnate udesno u odnosu na najduži
-- broj, a zatim podvlaku i sumu svih brojeva
--
-- Na primer, za fajl:
--
-- 1020
-- 10
-- 3
-- 8000
-- 2000
-- 1
--
-- Treba ispisati:
--
--      1020
--        10
--         3
--      8000
--      2000
--         1
--     -----
--     11034


-- main = putStrLn "Srecno"

import System.Environment as Env

-- parse:: String -> IO [String]
-- parse file = retls >>= putStrLn
--     where 
--         retls = unlines <$> withSpaces 
--         withSpaces = fmap (\l -> (concat $ replicate ( 10 - (length l)) " ") ++ l) <$> ls
--         maxlen = maximum <$> fmap length <$> ls 
--         ls = lines <$> readFile file

-- :set args "2.txt" "xxx"

main = do
    (file:_) <- Env.getArgs
    -- putStrLn file
    parse <$> readFile file >>= putStrLn

-- readFile vraca IO String
-- <$> ce da primeni parse na unutrsanjost IOa, tj string
-- dobija se IO parsedString
-- >>= ce da primeni putStrln na unutrsanjost kutije, tj parsedString

parse :: String  -> String
parse str = retls ++ dashes ++ "\n" ++ show sum
    where 
        retls = unlines withSpaces 
        withSpaces = fmap (\l -> (concat $ replicate ( maxlen - (length l)) " ") ++ l) $ ls
        maxlen = length $ show sum
        ls = lines str -- razdvaja po novom redu
        dashes = concat $ replicate maxlen "-"
        nums = fmap (\x -> read x :: Int) ls
        sum = foldl (+) 0 nums