-- 3. Definisati binarno stablo i instancirati Eq, Show (infiksni zapis) i Functor.

-- ovo je N-arno stablo
data Stablo a = MkStablo{ levo::[Stablo a], desno::[Stablo a], node::a}
    -- | MkLeaf{ child::a }
    -- deriving Show

instance (Show a) => Show (Stablo a) where 
    show (MkStablo [] [] node) = show node
    show (MkStablo levo desno node) = (concat ( fmap show levo )) ++ " " ++ (show node) ++ " " ++ (concat ( fmap show desno )) 

instance (Eq a) => Eq (Stablo a) where 
    (MkStablo l1 d1 n1) ==   (MkStablo l2 d2 n2) = and [n1 == n2,
        l1 == l2,
        d1 == d2]

instance Functor Stablo where 
    fmap f (MkStablo l r n) = MkStablo (fmap (\el -> fmap f el) l) (fmap (\el -> fmap f el) r) (f n)
    -- fmap primenjuje f na ono u kutiji
    -- ovde imamo listu stabala
    -- treba da primenimo na svaku unutrsasnjosot stabla, tj stablo nam je kutija
    -- prvo fmap da bi se primenjivalo na stablo u listi
    -- drugo fmap da bi se primenilo zapravo na unutrsanjost stabla