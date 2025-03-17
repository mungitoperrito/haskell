{-# OPTIONS_GHC -Wno-x-partial -Wno-unrecognised-warning-flags #-}
-- Supresses the ghc warnings

module Ch02_lists where


-- List operations on Strings
-- NOTE: The String type is really a list of chars:
--       "abc" :: [Char]

stringList = "Johnny, Joey, Dee Dee, Tommy"



main = do
    -- First element, last element
    print (head stringList)         -- ghc complains about this
    print (last stringList)

    -- All but first, all but last
    print (tail stringList)         -- ghc complains about this
    print (init stringList)

    -- First n elements, all but first n elements
    print (take 5 stringList)
    print (drop 5 stringList)

    -- Get the index
    print (stringList !! 2)       --  0 indexed

    -- Use ranges
    print (['a'..'f'])
