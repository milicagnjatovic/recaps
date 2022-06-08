-- Rucno implementirati funkcije zip, zipWith i unzip

zip' :: [a] -> [b] -> [(a,b)]
zip' (a:as) (b:bs) = (a,b) : zip' as bs 
zip' _ _ = []

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' f (a:as) (b:bs) = f a b : zipWith' f as bs 
zipWith' _ _ _ = []

unzip' :: [(a, b)] -> ([a], [b]) 
unzip' [] = ([], [])
unzip' ((f, s):xs) = (f:fst ret, s:snd ret)
    where ret = unzip' xs

unzip'' :: [(a, b)] -> ([a], [b]) 
unzip'' [] = ([], [])
unzip'' xs = (map fst xs, map snd xs)

-- Duplirati elemente liste
-- dup [1,2,3] = [1,1,2,2,3,3]

dup:: [a] -> [a]
dup [] = []
dup (x:xs) = x:x:dup xs

dup' lst = concat [[x,x] | x <- lst ]

dup'' lst = concatMap (\x -> [x,x]) lst

dupfr:: [a] -> [a]
dupfr  = foldr (\x acc -> x:x:acc) [] 

dupfl:: [a] -> [a]
dupfl  = foldl (\acc x -> acc ++ [x,x]) [] 

-- Ponoviti svaki element liste n puta
-- rep [1,2,3] 3 = [1,1,1,2,2,2,3,3,3]
rep:: [a] -> Int -> [a]
rep lst n = concat [replicate n x | x <- lst]

rep':: [a] -> Int -> [a]
rep' xs n = concatMap (replicate n) xs 

rep'':: [a] -> Int -> [a]
rep'' lst n = foldl (\acc x -> acc ++ (take n (repeat x))) [] lst

rep''':: [a] -> Int -> [a]
rep''' lst n = foldr (\x acc -> (take n (repeat x)) ++ acc) [] lst

-- Ukloniti svaki n-ti element iz liste
-- remn [1,2,3,4,5] 2 = [1,3,5]

remn :: [a] -> Int -> [a] 
remn lst n = foldr (\(f,s) acc -> if (s `mod` n == 0) then acc else f:acc) [] (zip lst [1..]) 

remn' :: [a] -> Int -> [a]
remn' lst n = map fst $ filter (\(f, s) -> s `mod` n /= 0) $ zip lst [1..]

remn'' :: [a] -> Int -> [a]
remn'' lst n = f lst n
    where f [] _ = []
          f (x:xs) 1 = f xs n 
          f (x:xs) k = x : (f xs (k-1))

-- Rotirati listu za n mesta u levo
-- rotate [1,2,3,4,5] 2 = [3,4,5,1,2]
rotate:: [a] -> Int -> [a]
rotate [] _ = []
rotate lst 0 = lst
rotate (x:xs) n = rotate (xs ++ [x]) (n-1)

rotate':: [a] -> Int -> [a]
rotate' lst n1 = (drop n lst) ++ (take n lst)
    where n = n1 `mod` (length lst)

-- Razdvojiti listu na dva dela, gde je n duzina prvog
-- split [1..12] 5 = ([1,2,3,4,5],[6,7,8,9,10,11,12])
split:: [a] -> Int -> ([a], [a])
split lst n = (take n lst, drop n lst)

-- Izvuci podlistu od indeksa i do indeksa j
-- slice [1..10] 2 4 = [2,3]
slice :: [a] -> Int -> Int -> [a]
slice lst i j = drop i (take j lst)

slice' :: [a] -> Int -> Int -> [a]
slice' lst i j = [x | (x, index) <- zip lst [1..j], i<index]
