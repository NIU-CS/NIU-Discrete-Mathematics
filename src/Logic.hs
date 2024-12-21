module Logic (
    computeLogic,
) where

computeLogic :: IO ()
computeLogic = do
    putStrLn "=============================="
    putStrLn "Logic"
    putStrLn "=============================="
    putStrLn ""
    -- 1. Determine whether each of the following sentences is a statement. If a sentence is a statement, determine whether it is true or false. If a sentence is a statement.
    -- a) In 2023 George W. Bush was the president of the United States.
    -- b) x + 3 is a positive interger.
    -- c) Fifteen is an even number.
    -- d) If Jennifer is late for the party, then her cousin Zachary will be quite angry.
    -- e) What time is it?
    -- f) As of June 30, 2003, Christine Marie Evert had won the French Open a record seven times.

    putStrLn $ "1. Determine whether each of the following sentences is a statement. If a sentence is a statement, determine whether it is true or false. If a sentence is a statement."
    putStrLn $ "a) In 2023 George W. Bush was the president of the United States."
    putStrLn $ "Statement: True"
    putStrLn $ "b) x + 3 is a positive interger."
    putStrLn $ "Statement: False"
    putStrLn $ "c) Fifteen is an even number."
    putStrLn $ "Statement: True"
    putStrLn $ "d) If Jennifer is late for the party, then her cousin Zachary will be quite angry."
    putStrLn $ "Statement: True"
    putStrLn $ "e) What time is it?"
    putStrLn $ "Statement: False"
    putStrLn $ "f) As of June 30, 2003, Christine Marie Evert had won the French Open a record seven times."
    putStrLn $ "Statement: True"

    -- 2. Identify the primitive statements in Exercise 1.
    -- a) George W. Bush was the president of the United States in 2023.
    -- b) x + 3 is a positive interger.
    -- c) Fifteen is an even number.
    -- d) Jennifer is late for the party.
    -- e) Zachary will be quite angry.
    -- f) Christine Marie Evert had won the French Open a record seven times as of June 30, 2003.


    -- 3. Let p, q, r, s denote the following statements:
    -- p: I finish writing my computer program before lunch.
    -- q: I shall play tenis in the afternoon.
    -- r: The sun is shining.
    -- s: The humidity is low.

    -- Write the following in symbolic form.
    -- a) If the sun is shining, I shall play tennis this afternoon.
    -- b) Finishing the writing of my computer program before lunch is necessary for my playing tennis this afternoon.
    -- c) Low humidity and sunshine are sufficient for me to play tennis this afternoon.

    -- a) r -> q
    -- b) q -> p
    -- c) (s ^ r) -> q

    -- 4.
