module Main (main) where

import SetOperations (cartesianProduct, powerSetSize, a, b)
import Counting (c, p, frac, computeCounting)
import Logic (computeLogic)
import Number (computeNumber)

main :: IO ()
main = do
    -- 計算 A x B
    let axb = cartesianProduct a b
    let sizeOfAxB = length axb
    let sizeOfPowerSet = powerSetSize sizeOfAxB

    -- 輸出結果
    putStrLn $ "Size of A x B: " ++ show sizeOfAxB
    putStrLn $ "Size of P(A x B): " ++ show sizeOfPowerSet

    computeCounting

    computeLogic

    computeNumber
