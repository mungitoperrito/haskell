-- To run: stack runhaskell Helper.hs

module Helper where

-- Use if expression to define function
repeatStringIf :: Int -> String -> String
repeatStringIf n str = repeatHelpIf n str ""

repeatHelpIf :: Int -> String -> String -> String
repeatHelpIf n str result = if (n == 0)
                          then result
                          else repeatHelpIf (n-1) str (result ++ str)


-- Use pattern match to define function
repeatStringPattern :: Int -> String -> String
repeatStringPattern n str = repeatHelpPattern n str ""

repeatHelpPattern :: Int -> String -> String -> String
repeatHelpPattern 0 str result = result
repeatHelpPattern n str result = repeatHelpPattern (n-1) str (result ++ str)


-- Fibonacci sequence
fibonacci :: Integer -> Integer
fibonacci n = fibonacciHelp 0 1 n

fibonacciHelp :: Integer -> Integer -> Integer -> Integer
fibonacciHelp a b 1 = b
fibonacciHelp a b n = fibonacciHelp b (a+b) (n-1)


main = do
    print (repeatStringIf 3 "OoO")
    print (repeatStringPattern 3 "OoO")
    print (fibonacci 3)
    print (fibonacci 4)
    print (fibonacci 5)
    print (fibonacci 10)
