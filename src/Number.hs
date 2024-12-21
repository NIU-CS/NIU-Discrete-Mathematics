module Number (
    computeNumber,
) where

-- Modular Exponentiation: Calculates (base^exp) mod modulus
modularExponentiation :: Integer -> Integer -> Integer -> Integer
modularExponentiation base exp modulus
    | exp == 0 = 1
    | odd exp = (base * modularExponentiation base (exp - 1) modulus) `mod` modulus
    | otherwise =
        let half = modularExponentiation base (exp `div` 2) modulus
         in (half * half) `mod` modulus

computeNumber :: IO ()
computeNumber = do
    -- 1. For all a, b, c ∈ Z
    -- a | b => a | bx for all x ∈ Z
    --
    -- Proof:
    -- a | b means b = a * n for some n ∈ Z
    -- Multiply both sides by any x ∈ Z
    -- x * b = a * n * x, where (n * x) is also an integer.
    -- Thus, a | bx
    putStrLn "1. For all a, b, c ∈ Z"
    putStrLn "a | b => a | bx for all x ∈ Z"

    -- 2. Prove Theorem 4.5 (a).
    -- Let a_1, a_2, b_1, b_2, and n be integers with n > 1.
    -- If a_1 ≡ a_2 (mod n) and b_1 ≡ b_2 (mod n), then
    -- (a) a_1 + b_1 ≡ a_2 + b_2 (mod n), and
    --
    -- Proof: a_1 ≡ a_2 (mod n) and b_1 ≡ b_2 (mod n)
    -- Mean n | (a_1 - a_2) and n | (b_1 - b_2).
    -- By Theorem 4.1 (e) we have
    --     n | (a_1 - a_2) + (b_1 - b_2)
    --  => n | (a_1 + b_1) - (a_2 + b_2)
    -- Thus, a_1 + b_1 ≡ a_2 + b_2 (mod n)

    putStrLn "2. Prove Theorem 4.5 (a)."
    putStrLn "Let a_1, a_2, b_1, b_2, and n be integers with n > 1."
    putStrLn "If a_1 ≡ a_2 (mod n) and b_1 ≡ b_2 (mod n), then"
    putStrLn "(a) a_1 + b_1 ≡ a_2 + b_2 (mod n), and"

    -- prove with code
    let a1 = 5
    let a2 = 3
    let b1 = 7
    let b2 = 2
    let n = 4
    let result1 = (a1 + b1) `mod` n
    let result2 = (a2 + b2) `mod` n
    putStrLn $ "a_1 + b_1 ≡ a_2 + b_2 (mod n) => " ++ show result1 ++ " ≡ " ++ show result2 ++ " (mod " ++ show n ++ ")"
    putStrLn $ "a_1 + b_1 ≡ a_2 + b_2 (mod n) => " ++ show (result1 == result2)

    -- 3. Compute 3^21 mod 53

    putStrLn "3. Compute 3^21 mod 53"
    let base = 3
    let exp = 21
    let modulus = 53
    let result = modularExponentiation base exp modulus
    putStrLn $ "3^21 mod 53 = " ++ show result

    -- 3^2 (mod 53) = 9
    -- 3^4 (mod 53) = 9^2 (mod 53) = 81 (mod 53) = 28
    -- 3^8 (mod 53) = 28^2 (mod 53) = 784 (mod 53) = 42
    -- 3^16 (mod 53) = 42^2 (mod 53) = 1764 (mod 53) = 15
    -- => 3^21 (mod 53) = 3^16 * 3^4 * 3 (mod 53) = 15 * 28 * 3 (mod 53) = 1260 (mod 53) = 41

    -- 4. What are the solutions of the linear congruence 3x ≡ 4 (mod 7)?
    -- 5 * 3x ≡ 5 * 4 (mod 7)
    -- 5 * 3 ≡ 15 ≡ 1 (mod 7)
    -- 5 * 4 ≡ 20 ≡ 6 (mod 7)
    -- it follows that if x is a solution, then x ≡ 6 (mod 7)
    -- So, solutions are 6, 13, 20, ..., and -1, -8, -15, ... etc.

    putStrLn "4. What are the solutions of the linear congruence 3x ≡ 4 (mod 7)?"
    putStrLn "5 * 3x ≡ 5 * 4 (mod 7)"
    putStrLn "5 * 3 ≡ 15 ≡ 1 (mod 7)"
    putStrLn "5 * 4 ≡ 20 ≡ 6 (mod 7)"
    putStrLn "it follows that if x is a solution, then x ≡ 6 (mod 7)"
    putStrLn "So, solutions are 6, 13, 20, ..., and -1, -8, -15, ... etc."

    -- prove with code
    let solutions = [x | x <- [-100..100], (3 * x) `mod` 7 == 4]
    putStrLn $ "Solutions: " ++ show solutions

    -- 5. Let S = 42. Finding S^(-1), where S^(-1) * S ≡ 1 (mod 101)
    -- 101 mod 42 = 17 => 101 - 2 * 42 = 17
    -- 42 mod 17 = 8 => 42 - 2 * 17 = 8
    -- 17 mod 8 = 1 => 17 - 2 * 8 = 1
    --
    -- 42 - 2 * 17 = 8 => 42 - 2 * (101 - 2 * 42) = 8
    --                    5 * 42 - 2 * 101 = 8
    --
    -- 17 - 2 * 8 = 1 => (101 - 2 * 42) - 2 * (5 * 42 - 2 * 101) = 1
    --                   5 * 101 - 12 * 42 = 1
    --
    -- S^(-1) = -12

    putStrLn "5. Let S = 42. Finding S^(-1), where S^(-1) * S ≡ 1 (mod 101)"
    putStrLn "101 mod 42 = 17 => 101 - 2 * 42 = 17"
    putStrLn "42 mod 17 = 8 => 42 - 2 * 17 = 8"
    putStrLn "17 mod 8 = 1 => 17 - 2 * 8 = 1"
    putStrLn ""
    putStrLn "42 - 2 * 17 = 8 => 42 - 2 * (101 - 2 * 42) = 8"
    putStrLn "                   5 * 42 - 2 * 101 = 8"
    putStrLn ""
    putStrLn "17 - 2 * 8 = 1 => (101 - 2 * 42) - 2 * (5 * 42 - 2 * 101) = 1"
    putStrLn "                   5 * 101 - 12 * 42 = 1"
    putStrLn ""
    putStrLn "S^(-1) = -12"
    putStrLn "S^(-1) * S ≡ 1 (mod 101) => -12 * 42 ≡ 1 (mod 101)"

    -- prove with code
    let s = 42
    let sInverse = -12
    let result = (s * sInverse) `mod` 101
    putStrLn $ "S^(-1) * S ≡ 1 (mod 101) => " ++ show result ++ " ≡ 1 (mod 101)"
    putStrLn $ "S^(-1) = " ++ show sInverse

    -- Number Suggested Exercises

    -- 1. If n ∈ Z^+, and n is odd, prove that 8 | (n^2 - 1).

    putStrLn "1. If n ∈ Z^+, and n is odd, prove that 8 | (n^2 - 1)."

    -- Proof:
    -- Let n = 2k + 1, k >= 0 & k ∈ Z^+
    -- n^2 - 1
    -- = (2k + 1)^2 - 1
    -- = 4k^2 + 4k
    -- = 4k(k + 1)
    --
    -- Since one of k, k + 1 must be even, say it is 2m for some m ∈ Z^+
    -- therefore, n^2 - 1 = 4 * 2m = 8m. It follows that 8 | (n^2 - 1).

    -- prove with code

    let possibleNs = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
    let results = [8 | n <- possibleNs, let k = (n - 1) `div` 2, let result = 4 * k * (k + 1)]
    putStrLn $ "Possible n: " ++ show possibleNs
    putStrLn $ "Results: " ++ show results
