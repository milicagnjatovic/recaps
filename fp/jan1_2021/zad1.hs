-- 1. Imena fajlova se daju kao argumenti komandne linije i učitava se reč sa stdin-a. Prebrojati pojavljivanje te reči u fajlovima.

import System.Environment as Env 

main = do 
    files <- Env.getArgs 
    word <- getLine 
    process files word 
    -- putStrLn $ concat $ files ++ ["\n", word]
    
process:: [String] -> String -> IO Int 
process files word = foldl (\acc x -> pure (+) <*> acc <*> x) (pure 0) 
    $ fmap (\x -> countFromFile x word) files 

countWordOccs:: String -> String -> Int 
countWordOccs rec content = 
    foldl (+) 0 
    $ map (\x -> if x==rec then 1 else 0)
    $ words content 

countFromFile:: String -> String -> IO Int 
countFromFile file rec= countWordOccsForWord <$> (readFile file)
    where countWordOccsForWord = countWordOccs rec
