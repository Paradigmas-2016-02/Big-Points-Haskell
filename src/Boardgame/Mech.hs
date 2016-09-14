module Boardgame.Mech
( movePawn ) where

import String.Manip

movePawn :: Char -> String -> Int
movePawn pawn board =
	firstIndChar pawn board 
