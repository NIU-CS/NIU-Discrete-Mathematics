module SetOperations (
  cartesianProduct,
  powerSetSize,
  a,
  b
) where

-- 定義集合 A 和 B
a :: [Int]
a = [1, 2, 3, 4, 5]

b :: [Char]
b = ['w', 'x', 'y', 'z']

-- 計算笛卡兒積
cartesianProduct :: [a] -> [b] -> [(a, b)]
cartesianProduct xs ys = [(x, y) | x <- xs, y <- ys]

-- 計算冪集大小
powerSetSize :: Int -> Int
powerSetSize n = 2 ^ n
