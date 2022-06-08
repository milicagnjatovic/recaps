-- Ukloniti element iz liste na poziciji n
ukloni::[a] -> Int -> [a]
ukloni (x:xs) 0 = xs 
ukloni [] _ = []
ukloni (x:xs) n = x: ukloni xs (n-1)

ukloni'::[a] -> Int -> (Maybe a, [a])
ukloni' xs n 
    | n>0 && n<=length xs = (Just (xs!!index), take index xs ++ drop n xs)
    | otherwise = (Nothing, xs)
    where index = n-1

-- Ubaciti element na poziciju u listi
ubaci::[a] -> Int -> a -> [a]
ubaci [] _ el = [el]
ubaci ls 0 el = el : ls 
ubaci (x:xs) n el = x : (ubaci xs (n-1) el)

ubaci'::[a] -> Int -> a -> [a]
ubaci' lst pos el = foldr concat' [] $ zip [1..] lst 
    where 
        concat' (i,x) xs  -- el acc
            | i==pos = el:x:xs 
            | otherwise = x:xs