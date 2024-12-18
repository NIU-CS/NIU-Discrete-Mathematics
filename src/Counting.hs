module Counting
    (
        c,
        p,
        frac,
        computeCounting,
    ) where

    -- 計算排列數
    -- p(n, r) = n! / (n - r)!
    p :: Int -> Int -> Int
    p n r = frac n `div` frac (n - r)

    -- 計算組合數
    -- c(n, r) = n! / (r! * (n - r)!)
    c :: Int -> Int -> Int
    c n r = frac n `div` (frac r * frac (n - r))

    -- 計算階乘
    -- frac(n) = n!
    frac :: Int -> Int
    frac n = product [1..n]

    -- Entry point for demonstration
    computeCounting :: IO ()
    computeCounting = do
        -- (a) In how many ways can the letters in DATAGRAM be arranged?
        let n = 8
        let r = 5
        putStrLn $ "In how many ways can the letters in DATAGRAM be arranged?"
        putStrLn $ "P(" ++ show n ++ ", " ++ show r ++ ") = " ++ show (p n r)

        -- (b) For the arrangements of part(a), how many have all three A's together?
        let n = 6
        putStrLn $ "For the arrangements of part(a), how many have all three A's together?"
        putStrLn $ "6! = " ++ show (frac n)



        let n = 5
        let r = 3
        let result1 = p n r
        let result2 = c n r
        putStrLn $ "P(" ++ show n ++ ", " ++ show r ++ ") = " ++ show result1
        putStrLn $ "C(" ++ show n ++ ", " ++ show r ++ ") = " ++ show result2
