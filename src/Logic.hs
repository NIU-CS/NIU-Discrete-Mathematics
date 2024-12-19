module Logic (
    computeLogic,
) where

-- 1. Determine whether each of the following sentences is a statement. If a sentence is a statement, determine whether it is true or false. If a sentence is a statement.
-- a) In 2023 George W. Bush was the president of the United States.
-- b) x + 3 is a positive interger.
-- c) Fifteen is an even number.
-- d) If Jennifer is late for the party, then her cousin Zachary will be quite angry.
-- e) What time is it?
-- f) As of June 30, 2003, Christine Marie Evert had won the French Open a record seven times.

computeLogic :: IO ()
computeLogic = do
    putStrLn $ "1. Determine whether each of the following sentences is a statement. If a sentence is a statement, determine whether it is true or false. If a sentence is a statement."
    putStrLn $ "a) In 2023 George W. Bush was the president of the United States."
    putStrLn $ "Statement: False"
    putStrLn $ "b) x + 3 is a positive interger."
    putStrLn $ "Statement: False"
    putStrLn $ "c) Fifteen is an even number."
    putStrLn $ "Statement: False"
    putStrLn $ "d) If Jennifer is late for the party, then her cousin Zachary will be quite angry."
    putStrLn $ "Statement: True"
    putStrLn $ "e) What time is it?"
    putStrLn $ "Statement: False"
    putStrLn $ "f) As of June 30, 2003, Christine Marie Evert had won the French Open a record seven times."
    putStrLn $ "Statement: True"
