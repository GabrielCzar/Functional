-- 4
type Row = [Float]
data Matrix = Matrix {
  ncols :: Int
, nrows :: Int
, rows :: [Row]
}

instance Show Matrix where
  show Matrix { ncols = nc, nrows = nr, rows = (x:xs) }
      | nr >= 1 = show x ++ "\n" ++ show (Matrix { ncols = nc, nrows = (nr-1), rows = xs })
      | otherwise = ""

zeroMatrix :: Int -> Int -> Matrix
zeroMatrix nl nc = Matrix {ncols = nc, nrows = nl, rows = [[0.0 | x <- [1 .. nc]] | y <- [1 .. nl]]}

oneMatrix :: Int -> Int -> Matrix
oneMatrix nl nc = Matrix {ncols = nc, nrows = nl, rows = [[1.0 | x <- [1 .. nc]] | y <- [1 .. nl]]}

identMatrix :: Int -> Matrix
identMatrix n = Matrix {ncols = n, nrows = n, rows = [[if x == y then 1.0 else 0.0 | x <- [1 .. n]] | y <- [1 .. n]]}

-- bug
sumMatrix :: Matrix -> Matrix -> Matrix
sumMatrix (Matrix {ncols = cx, nrows = rx, rows = rowsx})
           (Matrix {ncols = cy, nrows = ry, rows = rowsy}) =
            Matrix {ncols = cy , nrows = ry, rows = [[(x + y) | x <- linex, y <- liney] | linex <- rowsx, liney <- rowsy]}
-- bug
prodScalar :: Int -> Matrix -> Matrix
prodScalar n (Matrix {ncols = cx, nrows = rx, rows = rowsx}) =
  Matrix {ncols = cx, nrows = rx, rows = [[ (fromIntegral n) * ((rowsx !! x) !! y) | x <- [0 .. (cx-1)]] | y <- [0 .. (rx-1)]]}

-- bug
-- prodMatrix :: Matrix -> Matrix -> Matrix
-- listToMatrix :: [Row] -> Matrix
