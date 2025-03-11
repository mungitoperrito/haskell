-- To run: stack runhaskell Gold.hs

-- Limit to one module per file
module Gold where

-- Golden ratio
-- Define a constant, phi. The type annotation is optional
phi :: Double
phi = (sqrt 5 + 1) / 2

-- Define a function. Left side requires a parameter
polynomial :: Double -> Double
polynomial x = x^2 - x - 1

f x = polynomial (polynomial x)

main = do
    print (polynomial phi)
    print (f phi)