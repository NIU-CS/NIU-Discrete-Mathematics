{-# LANGUAGE GADTs #-}

module Logic (
    computeLogic,
) where

import Endl (endl)

data Prop a where
    And          :: Prop Bool -> Prop Bool -> Prop Bool
    Nand         :: Prop Bool -> Prop Bool -> Prop Bool
    Or           :: Prop Bool -> Prop Bool -> Prop Bool
    Nor          :: Prop Bool -> Prop Bool -> Prop Bool
    Implies      :: (Bool -> Bool) -> Prop Bool -> Prop Bool
    Not          :: Prop Bool -> Prop Bool
    ExclusiveOr  :: Prop Bool -> Prop Bool -> Prop Bool
    Iff          :: Prop Bool -> Prop Bool -> Prop Bool
    ExclusiveNor :: Prop Bool -> Prop Bool -> Prop Bool

-- 1. Determine whether each of the following sentences is a statement. If a sentence is a statement, determine whether it is true or false. If a sentence is a statement.
judgeIsStatement :: IO ()
judgeIsStatement = do
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
identifyPrimitiveStatements :: IO ()
identifyPrimitiveStatements = do
    putStrLn $ "2. Identify the primitive statements in Exercise 1."
    putStrLn $ "a) George W. Bush was the president of the United States in 2023."
    putStrLn $ "b) x + 3 is a positive interger."
    putStrLn $ "c) Fifteen is an even number."
    putStrLn $ "d) Jennifer is late for the party."
    putStrLn $ "e) Zachary will be quite angry."
    putStrLn $ "f) Christine Marie Evert had won the French Open a record seven times as of June 30, 2003."

-- 3. Let p, q, r, s denote the following statements:
writeStatementSybolic :: IO ()
writeStatementSybolic = do
    putStrLn $ "3. Let p, q, r, s denote the following statements:"
    putStrLn $ "p: I finish writing my computer program before lunch."
    putStrLn $ "q: I shall play tenis in the afternoon."
    putStrLn $ "r: The sun is shining."
    putStrLn $ "s: The humidity is low."

    putStrLn $ "Write the following in symbolic form."
    putStrLn $ "a) If the sun is shining, I shall play tennis this afternoon."
    putStrLn $ "b) Finishing the writing of my computer program before lunch is necessary for my playing tennis this afternoon."
    putStrLn $ "c) Low humidity and sunshine are sufficient for me to play tennis this afternoon."

-- 4.

computeLogic :: IO ()
computeLogic = do
    putStrLn "=============================="
    putStrLn "Logic"
    putStrLn "=============================="
    endl

    judgeIsStatement
    endl
    identifyPrimitiveStatements
    endl
    writeStatementSybolic
    endl
