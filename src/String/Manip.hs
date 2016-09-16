module String.Manip
( firstIndChar, listIndChar, replaceNth ) where

import qualified Data.ByteString.Char8 as C

firstIndChar :: Char -> String -> Int
firstIndChar char string =
	head $ listIndChar char string

listIndChar :: Char -> String -> [Int]
listIndChar char string =
	C.elemIndices char (C.pack string)


replaceNth :: Int -> Char -> [Char] -> [Char]
replaceNth n newVal (x:xs)
	| n == 0 = newVal:xs
	| otherwise = x:replaceNth (n-1) newVal xs
