-- To run: stack runhaskell Patterns.hs

-- Limit to one module per file
module Patterns where

-- Match on input
greet :: String -> String -> String
greet "Finland" name = "Hei " ++ name
greet "Italy" name = "Ciao " ++ name
greet "England" name = "Hello " ++ name
greet _ name = "Hi " ++ name


main = do
    print (greet "Italy" "AnnaLaura")
    print (greet "Finland" "Juha")
    print (greet "Russia" "Vlad")
    print (greet "England" "Graham")
