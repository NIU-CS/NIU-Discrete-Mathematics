module Main (main) where

import Counting (computeCounting)
import Logic (computeLogic)
import Set (computeSet)
import Number (computeNumber)
import ReflectionAndFunction (computeReflectionAndFunction)
import Graph (computeGraph)

main :: IO ()
main = do
    computeCounting

    computeLogic

    computeSet

    computeNumber

    computeReflectionAndFunction

    computeGraph
