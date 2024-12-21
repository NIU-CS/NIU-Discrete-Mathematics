module Set (
    computeSet,
) where

-- 計算笛卡兒積
cartesianProduct :: [a] -> [b] -> [(a, b)]
cartesianProduct xs ys = [(x, y) | x <- xs, y <- ys]

-- 計算冪集大小
powerSetSize :: Int -> Int
powerSetSize n = 2 ^ n

computeSet :: IO ()
computeSet = do
    -- 1. Consider the following six subsets of Z.
    --

    putStrLn "1. Consider the following six subsets of Z."
