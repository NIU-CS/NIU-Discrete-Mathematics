module Set (
    computeSet,
) where

import Endl (endl)

-- 計算笛卡兒積
cartesianProduct :: [a] -> [b] -> [(a, b)]
cartesianProduct xs ys = [(x, y) | x <- xs, y <- ys]

-- 計算冪集大小
powerSetSize :: Int -> Int
powerSetSize n = 2 ^ n

-- 1. Consider the following six subsets of Z.
judgeSubset :: IO ()
judgeSubset = do
    putStrLn "1. Consider the following six subsets of Z."

computeSet :: IO ()
computeSet = do
    putStrLn "=============================="
    putStrLn "Set"
    putStrLn "=============================="
    endl

    judgeSubset
    endl
