-- Factorial example program
--   The filename should really be Main.hs. This works if :load calls the file
--   directly. The compiler won't find it otherwise.

main = print (fac 3)

fac 0 = 1
fac n = n * fac (n-1)
