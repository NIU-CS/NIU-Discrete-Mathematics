module Main (main) where

import ModularArithmetic (computeModularExponentiation)
import SetOperations (cartesianProduct, powerSetSize, a, b)
import Counting (c, p, frac, computeCounting)
import Logic (computeLogic)

main :: IO ()
main = do
  -- 計算 A x B
  let axb = cartesianProduct a b
  let sizeOfAxB = length axb
  let sizeOfPowerSet = powerSetSize sizeOfAxB

  -- 輸出結果
  putStrLn $ "Size of A x B: " ++ show sizeOfAxB
  putStrLn $ "Size of P(A x B): " ++ show sizeOfPowerSet

  -- 計算 3^21 mod 53
  computeModularExponentiation

  -- 計算 P(5, 3) 和 C(5, 3)
  computeCounting
