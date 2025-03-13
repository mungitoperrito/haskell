-- To run: stack runhaskell Collatz.hs

module Collatz where

-- One step in the sequence
step :: Integer -. Integer

-- Indent is 4 spaces, except where is 2
step x = if even x then stepDown else StepUp
  where stepDown = div x 2
        stepUp = 3 * x + 1

-- Count the number of steps
collataz :: Integer -> Integer
collataz 1 = 0
collataz x = 1 + collataz (step x)

-- Longest sequence between 0 and upperBound
longestSequence :: Integer -> Integer
longestSequence upperBound = longestSequence' 0 0 upperBound

-- Helper function
longestSequence' :: Integer -> Integer -> Integer -> Integer
-- Base case
longestSequence' number _ 0 = number
-- Recursion step
longestSequence' number maxLength n =
  if len > maxLength
  then longestSequence' n len (n-1)
  else longestSequence' number maxLength (n-1)
  where len = collataz n