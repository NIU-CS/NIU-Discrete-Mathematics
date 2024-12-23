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

-- 1. For all a, b, c ∈ Z
proof1 :: IO ()
proof1 = do
    putStrLn "1. For all a, b, c ∈ Z"
    putStrLn "a | b => a | bx for all x ∈ Z"

    -- Proof:
    -- a | b means b = a * n for some n ∈ Z
    -- Multiply both sides by any x ∈ Z
    -- x * b = a * n * x, where (n * x) is also an integer.
    -- Thus, a | bx

    let a = 3
    let b = 6
    let x = 2
    let result = a `mod` b == 0 && a `mod` (b * x) == 0
    putStrLn $ "a = " ++ show a ++ ", b = " ++ show b ++ ", x = " ++ show x
    putStrLn $ "a | b => a | bx for all x ∈ Z => " ++ show result

-- 2. Prove Theorem 4.5 (a).
proof2 :: IO ()
proof2 = do
    putStrLn "2. Prove Theorem 4.5 (a)."
    putStrLn "Let a_1, a_2, b_1, b_2, and n be integers with n > 1."
    putStrLn "If a_1 ≡ a_2 (mod n) and b_1 ≡ b_2 (mod n), then"
    putStrLn "(a) a_1 + b_1 ≡ a_2 + b_2 (mod n), and"

    -- Proof:
    -- a_1 ≡ a_2 (mod n) and b_1 ≡ b_2 (mod n)
    -- Mean n | (a_1 - a_2) and n | (b_1 - b_2).
    -- By Theorem 4.1 (e) we have
    --     n | (a_1 - a_2) + (b_1 - b_2)
    --  => n | (a_1 + b_1) - (a_2 + b_2)
    -- Thus, a_1 + b_1 ≡ a_2 + b_2 (mod n)

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
compute3Power21Mod53 :: IO ()
compute3Power21Mod53 = do
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
sameMod7 :: IO()
sameMod7 = do
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
findSInverse :: IO ()
findSInverse = do
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
prove3:: IO ()
prove3 = do
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

-- 2. Let a, b, c ∈ Z^+ with gcd(a, b) = 1. If a | c and b | c, prove that ab | c.
prove4:: IO ()
prove4 = do
    -- Does the result  hold if gcd(a, b) ≠ 1?
    --
    -- Proof:
    -- gcd(a, b) = 1 => ax + by = 1 for some x, y ∈ Z.
    -- Then, c = acx + bcy.
    -- a | c => c = ad, b | c => c = be, for some d, e ∈ Z.
    -- so c = acx + bcy
    -- = a(be)x + b(ad)y
    -- = ab(ex + dy) => ab | c because (ex + dy) ∈ Z.
    -- The result is false if gcd(a, b) ≠ 1.
    -- For example, let a = 12, b = 18, c = 36. Then a | c, b | c, but (ab) | c.

    putStrLn "2. Let a, b, c ∈ Z^+ with gcd(a, b) = 1. If a | c and b | c, prove that ab | c."
    putStrLn "Does the result  hold if gcd(a, b) ≠ 1?"
    putStrLn ""

    -- Proof with code
    let a = 12
    let b = 18
    let c = 36
    let x = 1
    let y = -1
    let d = 3
    let e = 2
    let result = a * b * (e * x + d * y)
    putStrLn $ "a = " ++ show a ++ ", b = " ++ show b ++ ", c = " ++ show c
    putStrLn $ "gcd(a, b) = 1 => ax + by = 1 for some x, y ∈ Z."
    putStrLn $ "Then, c = acx + bcy."
    putStrLn $ "a | c => c = ad, b | c => c = be, for some d, e ∈ Z."
    putStrLn $ "so c = acx + bcy"
    putStrLn $ "= a(be)x + b(ad)y"
    putStrLn $ "= ab(ex + dy) => ab | c because (ex + dy) ∈ Z."
    putStrLn $ "The result is false if gcd(a, b) ≠ 1."
    putStrLn $ "For example, let a = 12, b = 18, c = 36. Then a | c, b | c, but (ab) | c."
    putStrLn $ "ab | c => " ++ show result ++ " | " ++ show c

-- 3. Use Euclid's Algorithm to calculate the Greatest Common Divisor of 140 and 1099.
gcdEuclid :: IO ()
gcdEuclid = do
    putStrLn "3. Use Euclid's Algorithm to calculate the Greatest Common Divisor of 140 and 1099."

    -- Proof:
    -- 1099 = 140 * 7 + 99
    -- 140 = 119 * 1 + 41
    -- 119 = 5 * 21 + 14
    -- 21 = 1 * 14 + 7
    -- 14 = 2 * 7 + 0
    -- gcd(140, 1099) = 7

    let a = 140
    let b = 1099
    let result = gcd a b
    putStrLn $ "gcd(" ++ show a ++ ", " ++ show b ++ ") = " ++ show result

    where
        gcd :: Int -> Int -> Int
        gcd a 0 = a
        gcd a b = gcd b (a `mod` b)

-- 4. Morpheus cipher.
morpheusCipher :: IO ()
morpheusCipher = do
    -- The Cipher works as follows:
    -- Morpheus Cipher:
    --
    -- 1) You will need a plaintext, along with two integers a and b.
    -- 2) Convert your plaintext to numeric vector P.
    -- 3) Devide P into pairs*. For each pair, (P_1, P_2), create the cipher pair (C_1, C_2) using
    --   C_1 ≡ a * P_1 + b * P_2 (mod 26)
    --   C_2 ≡ a * P_2 + b * P_1 (mod 26)
    -- 4) Recombine the cipher pairs to create the full cipher vector C.
    -- 5) Once all C entries have been found, convert your vector back to text.
    --
    -- implement later
    putStrLn "4. Morpheus cipher."

computeNumber :: IO ()
computeNumber = do
    putStrLn "=============================="
    putStrLn "Number Theory"
    putStrLn "=============================="
    putStrLn ""

    proof1
    proof2
    compute3Power21Mod53
    sameMod7
    findSInverse

    -- Number Suggested Exercises

    prove3
    prove4
    gcdEuclid
    morpheusCipher
