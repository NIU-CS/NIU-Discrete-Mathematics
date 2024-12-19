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

    -- 2.
