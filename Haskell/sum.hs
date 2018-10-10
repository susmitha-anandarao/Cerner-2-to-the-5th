import Control.Monad

{-|
	The first line of input will contain an integer (N) that tells how many more lines there are in the input. Each of the subsequent N lines contain 2 integers.
	This program prints the sum of each pair.
	cerner_2^5_2018
-}

main :: IO ()
main = do
    n <- readLn :: IO Int
    str <- replicateM n getLine
    let
        ans = map(sum. map read. words) str
    mapM_ print ans
    