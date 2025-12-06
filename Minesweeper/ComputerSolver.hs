-- | A 'Solver' playing automatically using artificial inteligence.
module Minesweeper.ComputerSolver (computerSolver) where

import System.Random (newStdGen, randomR)
import Minesweeper.Board

-- | Autimatically determine next move.
computerSolver :: Solver
computerSolver board = do
    randomPos <- selectRandom (boardPositions board)
    return (OpenTile randomPos)

selectRandom :: [a] -> IO a
selectRandom xs = do
    g <- newStdGen
    let (i, _) = randomR (0, length xs - 1) g
    return (xs !! i)
