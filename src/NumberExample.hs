module NumberExample (
    computeNumberExample,
) where

import Endl (endl)

-- 4.1 Show that, for every pair of add integers, the product is odd.
--
-- Proof:
--
-- Let m and n be arbitrary odd integers.
-- So m = 2k + 1 and n = 2l + 1 for some integers k, l ∈ Z.
-- Hense,
-- mn = (2k + 1)(2l + 1) = 4kl + 2k + 2l + 1 = 2(2kl + k + l) + 1.
-- Since 2kl + k + l is an integer, the form displayed on the right-hand side above show that mn is odd.
prove1 :: IO ()
prove1 = do
    putStrLn "4.1 Show that, for every pair of add integers, the product is odd."
    putStrLn ""
    putStrLn "Proof:"
    putStrLn ""
    putStrLn "Let m and n be arbitrary odd integers."
    putStrLn "So m = 2k + 1 and n = 2l + 1 for some integers k, l ∈ Z."
    putStrLn "Hense,"
    putStrLn "mn = (2k + 1)(2l + 1) = 4kl + 2k + 2l + 1 = 2(2kl + k + l) + 1."
    putStrLn "Since 2kl + k + l is an integer, the form displayed on the right-hand side above show that mn is odd."
    endl
    let posibleK = [1, 2, 3, 4, 5]
    let posibleL = [1, 2, 3, 4, 5]
    -- for each k and l, show that mn is odd
    mapM_ (\k -> mapM_ (\l -> putStrLn $ "k = " ++ show k ++ ", l = " ++ show l ++ ", mn = " ++ show (2 * (2 * k * l + k + l) + 1)) posibleL) posibleK


computeNumberExample :: IO ()
computeNumberExample = do
    putStrLn "=============================="
    putStrLn "Number Example"
    putStrLn "=============================="
    endl

    prove1
    endl
