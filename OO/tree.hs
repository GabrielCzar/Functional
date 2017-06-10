data Tree a = EmptyTree | Node a (Tree a) (Tree a)
              deriving (Show, Read, Eq)

singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

tree_insert :: (Ord a) => a -> Tree a -> Tree a
tree_insert x EmptyTree = singleton x
tree_insert x (Node a left right)
          | x == a = Node x left right
          | x < a  = Node a (tree_insert x left) right
          | x > a  = Node a left (tree_insert x right)

data ArvBin = Nulo | No Int ArvBin ArvBin

arv :: ArvBin
arv = (No 1
            (No 2
                  (No 4 Nulo Nulo) (No 5 Nulo Nulo))
            (No 3
                  (No 6 Nulo Nulo) Nulo))

em_ordem :: ArvBin -> [Int]
em_ordem Nulo = []
em_ordem (No num esq dir) = (em_ordem esq) ++ [num] ++ (em_ordem dir)
