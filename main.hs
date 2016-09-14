import System.IO
import String.Manip

main :: IO()
main = do
	input_string <- readFile "input.txt"
	print $ firstIndChar 'R' input_string
	print input_string

--move :: String -> Char-> String
--move board pawn =
--	firstIndChar pawn board
