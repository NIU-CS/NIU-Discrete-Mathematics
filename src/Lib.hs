module Lib
    ( modd
    ) where

    modExp :: Integer -> Integer -> Integer -> Integer
    modExp base exp modulus
      | exp == 0  = 1
      | odd exp   = (base * modExp base (exp - 1) modulus) `mod` modulus
      | otherwise = let half = modExp base (exp `div` 2) modulus
                    in (half * half) `mod` modulus

    modd :: IO ()
    modd = do
      let base = 3
      let exp = 21
      let modulus = 53
      let result = modExp base exp modulus
      putStrLn $ "3^21 mod 53 = " ++ show result
