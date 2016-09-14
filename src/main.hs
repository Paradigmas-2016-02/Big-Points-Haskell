import System.IO
import Boardgame.Mech

main :: IO()
main = do
	input_string <- readFile "../input.txt"
	print $ movePawn 'R' input_string
	print input_string

--move :: String -> Char-> String
--move board pawn =
--	firstIndChar pawn board
