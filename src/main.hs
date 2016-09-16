import System.IO
import Boardgame.Mech

main :: IO()
main = do
	board <- readFile "../input.txt"
	print $ board
	print $ moves 1 'R' board
	print $ moves 2 'G' board
	print $ moves 3 'Y' board
	print $ moves 4 'B' board
	print $ moves 5 'P' board
--	print $ movePawn 'R' board
--	print $ pawnPosition 'R' board
--	print $ whereToPawn 'R' board


--move :: String -> Char-> String
--move board pawn =
--	firstIndChar pawn board
