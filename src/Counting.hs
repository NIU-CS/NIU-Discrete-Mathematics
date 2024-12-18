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

        -- 4. Triangle ACE is equilateral with AC = 1. If five points are selected from the interior of the triangle, there are at least two whose distance apart is less than 1/2.
        putStrLn $ "Triangle ACE is equilateral with AC = 1. If five points are selected from the interior of the triangle, there are at least two whose distance apart is less than 1/2."
        -- prove by contradiction
        -- 1. Divide the equilateral triangle into 4 smaller equilateral triangles
        -- 2. By the pigeonhole principle, at least one of the smaller triangles contains 2 points
        -- 3. The distance between the 2 points is less than 1/2
        -- 4. Therefore, there are at least two points whose distance apart is less than 1/2
        -- 5. The statement is true
        -- 鴿子 : 5個點
        -- 鴿洞 : 4個三角形如右圖
        -- 因為 5>4，基於鴿洞原理，
        -- 至少有兩個點落於其中一個三角形內，
        -- 因此至少有兩個點之間距離小於 ½。

        -- Counting Suggested Exercises
        -- 1. Determine the number of (staircase) paths in the x-y-plane from (2, 1) to (7, 4), where each such path is made up of individual steps going one unit to the right (R) or one unit upward (U).
        putStrLn $ "Determine the number of (staircase) paths in the x-y-plane from (2, 1) to (7, 4), where each such path is made up of individual steps going one unit to the right (R) or one unit upward (U)."
        putStrLn $ "It needs 5R and 3U, so 8! / (5!3!) = " ++ show (c 8 3)

        -- 2. How many positive intergers n can we form using the digits 3, 4, 4, 5, 5, 6, 7 if we want n to exceed 5,000,000?
        -- Case 1: Leading digit 5______ 6! / 2!
        -- Case 2: Leading digit 6______ 6! / 2!2!
        -- Case 3: Leading digit 7______ 6! / 2!2!
        putStrLn $ "How many positive intergers n can we form using the digits 3, 4, 4, 5, 5, 6, 7 if we want n to exceed 5,000,000?"
        putStrLn $ "Case 1: Leading digit 5______ 6! / 2! = " ++ show (frac 6 `div` frac 2)
        putStrLn $ "Case 2: Leading digit 6______ 6! / 2!2! = " ++ show (frac 6 `div` (frac 2 * frac 2))
        putStrLn $ "Case 3: Leading digit 7______ 6! / 2!2! = " ++ show (frac 6 `div` (frac 2 * frac 2))
        putStrLn $ "Total = " ++ show (frac 6 `div` frac 2 + frac 6 `div` (frac 2 * frac 2) + frac 6 `div` (frac 2 * frac 2))

        -- let n = 5
        -- let r = 3
        -- let result1 = p n r
        -- let result2 = c n r
        -- putStrLn $ "P(" ++ show n ++ ", " ++ show r ++ ") = " ++ show result1
        -- putStrLn $ "C(" ++ show n ++ ", " ++ show r ++ ") = " ++ show result2
