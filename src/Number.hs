module Number (
    computeNumber,
) where

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

    -- 3. Compute 3^21 mod 53

    putStrLn "3. Compute 3^21 mod 53"
    let result = 3 ^ 21 `mod` 53
    putStrLn $ "3^21 mod 53 = " ++ show result
