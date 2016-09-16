import System.IO
import Boardgame.Mech

main :: IO()
main = do
	board <- readFile "../input.txt"
	print $ board
	print $ moves 7 'R' board
--	print $ movePawn 'R' board
--	print $ pawnPosition 'R' board
--	print $ whereToPawn 'R' board


--move :: String -> Char-> String
--move board pawn =
--	firstIndChar pawn board
