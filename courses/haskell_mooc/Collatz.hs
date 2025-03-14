-- To run interactively: stack ghci
--                       ghci> :load Collatz.hs

module Collatz where

-- One step in the sequence
step :: Integer -> Integer

-- Indent is 4 spaces, except where is 2
step x = if even x then stepDown else stepUp
  where stepDown = div x 2
        stepUp = 3 * x + 1

-- Count the number of steps
collatz :: Integer -> Integer
collatz 1 = 0
collatz x = 1 + collatz (step x)

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
  where len = collatz n