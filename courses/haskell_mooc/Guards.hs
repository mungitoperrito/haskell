-- To run: stack runhaskell Guards.hs

module Guards where

-- Accounts for negative numbers
factorial :: Integer -> Integer
factorial n
  | n < 0       = -1
  | n == 0      = 1
  | otherwise = n * factorial (n-1)


main = do
    print (factorial 3)
    print (factorial 0)
    print (factorial (-3))   -- Negative numbers require ()