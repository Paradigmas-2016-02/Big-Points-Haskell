module Boardgame.Mech
( movePawn, whereToPawn, pawnPosition, moves) where

import String.Manip

moves :: Int -> Char -> String -> String
moves 0 _ board = board
moves n pawn board =
	moves (n-1) pawn (movePawn pawn board)

movePawn :: Char -> String -> String
movePawn pawn board = new_board
	where
		pawn_pos = pawnPosition pawn board
		disc_pos = whereToPawn pawn board
		tmp_board = replaceNth pawn_pos (isThereDisc pawn_pos pawn) board
		new_board = replaceNth disc_pos pawn tmp_board

isThereDisc :: Int -> Char -> Char
isThereDisc pawn_pos pawn
	| pawn_pos < 5 = ' '
	| otherwise = (whichDisc pawn)

pawnPosition :: Char -> String -> Int
pawnPosition pawn board =
	firstIndChar pawn board

whereToPawn :: Char -> String -> Int
whereToPawn pawn board = head $ disc_pos
	where
		pawn_pos = pawnPosition pawn board
		disc = whichDisc pawn
		listOfDiscs = listIndChar disc board
		disc_pos = filter (> pawn_pos) (listOfDiscs)

whichDisc :: Char -> Char
whichDisc pawn
	| pawn == 'R' = '1'
	| pawn == 'G' = '2'
	| pawn == 'B' = '3'
	| pawn == 'Y' = '4'
	| pawn == 'P' = '5'
	| otherwise = '0'

--	head $ listIndChar disc board
