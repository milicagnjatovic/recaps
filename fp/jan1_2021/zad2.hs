-- 2. Napraviti klasu Takeable t sa funkcijom takeSome :: Int -> t a -> [a]. Instancirati za listu, stablo i Maybe.

class Takeable t where 
    takeSome:: Int -> t a -> [a]

instance Takeable [] where 
    takeSome n lst = take n lst 

instance Takeable Maybe where 
    takeSome n (Nothing) = []
    takeSome n (Just el) = [el]