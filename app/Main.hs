module Main (main) where

import Set (computeSet)
import Counting (computeCounting)
import Logic (computeLogic)
import Number (computeNumber)

main :: IO ()
main = do
    computeCounting

    computeLogic

    computeSet

    computeNumber
