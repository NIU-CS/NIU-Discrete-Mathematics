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
        putStrLn $ "If two of the eight people, say A and B, do not get along well, how many different seatings are possible with A and B not sitting next to each other?"
        -- 10080 - 4 * 6! = 7200
        putStrLn $ show 10080 ++ " - 4 * 6! = " ++ show (10080 - 4 * frac 6)

        -- 2. Find the coefficient of w^2 x^2 y^2 z^2 in the expansion of (2w - x + 3y + z - 2)^12
        putStrLn $ "Find the coefficient of w^2 x^2 y^2 z^2 in the expansion of (2w - x + 3y + z - 2)^12"
        -- 12! / (2! * 2! * 2! * 2! * 4!) * 2^2 * (-1)^2 * 3^2 * 1^2 * (-2)^4 = 718502400
        putStrLn $ "12! / (2! * 2! * 2! * 2! * 4!) * 2^2 * (-1)^2 * 3^2 * 1^2 * (-2)^4 = " ++ show (frac 12 `div` (frac 2 * frac 2 * frac 2 * frac 2 * frac 4) * 2^2 * (-1)^2 * 3^2 * 1^2 * (-2)^4)

        -- 3. In how many ways can a teacher distribute eight chocolate donuts and seven jelly donuts among three students helpers if each helper wants at least one donut of each kind?
        putStrLn $ "In how many ways can a teacher distribute eight chocolate donuts and seven jelly donuts among three students helpers if each helper wants at least one donut of each kind?"
        -- Chocolate donuts: ((5 + 3 - 1)! / 5!) = 21
        -- Jelly donuts: ((4 + 3 - 1)! / 4!) = 15
        -- By the rule of product, there are 21 * 15 = 315 ways
        putStrLn $ "((5 + 3 - 1)! / 5!) * ((4 + 3 - 1)! / 4!) = " ++ show (21 * 15)


        -- let n = 5
        -- let r = 3
        -- let result1 = p n r
        -- let result2 = c n r
        -- putStrLn $ "P(" ++ show n ++ ", " ++ show r ++ ") = " ++ show result1
        -- putStrLn $ "C(" ++ show n ++ ", " ++ show r ++ ") = " ++ show result2
