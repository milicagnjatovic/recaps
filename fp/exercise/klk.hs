-- 1 Broj elemenata vecih od prvog elementa list, za praznu listu nula

-- a) rekurzivno
brveciha:: (Ord a) => [a] -> Int
brveciha [] = 0
brveciha (a:xs) = brvecihaF a xs 
    where brvecihaF el [] = 0
          brvecihaF el (x:xs) = if el<x then 1 + brvecihaF el xs else brvecihaF el xs

-- b) koristeci foldl
brvecihb:: (Ord a) => [a] -> Int
brvecihb [] = 0
brvecihb lst = foldl (\acc x -> if x > el then acc + 1 else acc) 0 lst
    where el = head lst

-- c) bez rekurzije i bilo kakvog folda
brvecihc:: (Ord a) => [a] -> Int
brvecihc [] = 0
brvecihc lst = length $ filter (\x -> x>el) lst
    where el = head lst

-- d) quci check test koji proverava da li prve dve imlementacije daju isto resenje
prop_test:: Ord a => [a] -> Bool
prop_test lst = (brveciha lst) == (brvecihb lst)

-- 2. Da li postoje dva uzastopna ista karaktera, bez rekurzije 
dvaista:: [Char] -> Bool 
dvaista lst = foldl (\acc (l,r) -> acc || (l==r)) False $ zip (drop 1 lst) lst

dvaista' :: String -> Bool 
dvaista' s = any (\tup -> fst tup == snd tup) $ zip s (tail s)

-- 3
data Model = Waiting
    | Either String String

-- 4 Bez rkurzije proeriti da li je lista sortirana opadajuce, rastuce ili su elementi jednaki, vratiti EQ, LT ili GT
whichSort:: [Int] -> String  
-- whichSort lst  
--     | ret > 0 = "LT" 
--     | ret < 0 = "GT" 
--     | otherwise = "EQ" 
--     where ret = foldl (\acc (a,b) -> acc + a - b) 0 (zip lst (tail lst))
whichSort lst 
    | null lst = "EQ"
    | ifAll (==) lst = "EQ"
    | ifAll (>=) lst = "GT"
    | ifAll (<=) lst = "LT"
    | otherwise = "not sorted"
    where ifAll f lst = all (\(a,b) -> f a b) $ zip lst (tail lst)

-- 5. bez rekurzije, indeks prrvo elemena liste oji je manji od datog n
firstLessThan :: Int -> [Int] -> Maybe Int 
firstLessThan n lst 
    | null res = Nothing 
    | otherwise = Just $ head res
    where res = [i | (x,i) <- zip lst [0..], x<n]

firstLessThan' :: Int -> [Int] -> Maybe Int 
firstLessThan' n lst =
    if null res then Nothing 
                else Just $ fst $ head res
    where res = filter (\(a,b) -> a<n) $ zip lst [0..]