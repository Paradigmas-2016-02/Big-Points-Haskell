module String.Manip
( firstIndChar ) where

import qualified Data.ByteString.Char8 as C

firstIndChar :: Char -> String -> Int
firstIndChar char string =
	head $ C.elemIndices char (C.pack string)
