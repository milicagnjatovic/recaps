-- 2. Argumenti komandne linije. Citanje fajla iz prvog argumenta. Ispis broja reci, linija i sl, na osnovu drugog argumenta.

import System.Environment as Env

main = do 
    (file:l) <- Env.getArgs
    -- putStrLn argx
    count file (setArg l) 
    -- putStrLn $ file ++ arg
    -- (readFile file) >>= putStrLn

count::String -> String -> IO Int
count file "l" = countLines <$> readFile file 
count file "w" = countWords <$> readFile file 
count file _ = length <$> readFile file

countLines:: String -> Int 
countLines content = length $ lines content

countWords:: String -> Int 
countWords content = length $ words content

setArg:: [String] -> String 
setArg [] = "x"
setArg (h:_) = h