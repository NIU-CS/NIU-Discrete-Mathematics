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
        -- 0. (a) In how many ways can the letters in DATAGRAM be arranged?
        let n = 8
        let r = 5
        putStrLn $ "In how many ways can the letters in DATAGRAM be arranged?"
        putStrLn $ "P(" ++ show n ++ ", " ++ show r ++ ") = " ++ show (p n r)

        -- 0. (b) For the arrangements of part(a), how many have all three A's together?
        let n = 6
        putStrLn $ "For the arrangements of part(a), how many have all three A's together?"
        putStrLn $ "6! = " ++ show (frac n)

        --   A B   |   G H   |   F G
        -- H     C | F     A | E     H
        -- G     D | E     B | D     A
        --   F E   |   D C   |   C B
        -- (a)     | (b)     | (c)

        -- 1. (a) In how many ways can eight people, denoted A, B, ..., H, be seated about the square table, where situations (a) and (b) are considered the same, but are distinct from (c).
        putStrLn $ "In how many ways can eight people, denoted A, B, ..., H, be seated about the square table, where situations (a) and (b) are considered the same, but are distinct from (c)."
        -- 2 * 7! = 10080
        putStrLn $ "P(" ++ show n ++ ", " ++ show r ++ ") = " ++ show (2 * frac 7)

        -- 1. (b) If two of the eight people, say A and B, do not get along well, how many different seatings are possible with A and B not sitting next to each other?
        let n = 7
        let r = 7
        putStrLn $ "If two of the eight people, say A and B, do not get along well, how many different seatings are possible with A and B not sitting next to each other?"
        -- 10080 - 4 * 6! = 7200
        putStrLn $ show 10080 ++ " - 4 * 6! = " ++ show (10080 - 4 * frac 6)

        -- let n = 5
        -- let r = 3
        -- let result1 = p n r
        -- let result2 = c n r
        -- putStrLn $ "P(" ++ show n ++ ", " ++ show r ++ ") = " ++ show result1
        -- putStrLn $ "C(" ++ show n ++ ", " ++ show r ++ ") = " ++ show result2
