-- To run: stack runhaskell Basics.hs

-- This scoping works. 'Shadowing definitions (variables) like rSquare
--    and pi is considered poor style

-- Limit to one module per file
module Basics where

-- Define a constant. The constant can have sub-definitions.
circleAreaOne :: Double -> Double
circleAreaOne r = pi * rSquare
    where pi = 3.1415926
          rSquare = r * r

-- Define a let expression
circleAreaTwo r = let pi = 3.1415926
                      rSquare = r * r
                  in pi * rSquare

-- Define with a local sub-function
circleAreaThree r = pi * square r
    where pi = 3.1415926
          square x = x * x


main = do
    print (circleAreaOne 1)
    print (circleAreaOne 3)
    print(' ')
    print (circleAreaTwo 1)
    print (circleAreaTwo 3)
    print(' ')
    print (circleAreaThree 1)
    print (circleAreaThree 3)
