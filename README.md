Minesweeper
===========

A simple command-line minesweeper game project.

Project uses [Cabal][] for build and dependency management. First you need to
refresh the package index:

    cabal update

Now you can build the project:

    cabal build

To run the game, use:

    cabal run minesweeper

There is also an integrated benchmark for computer player that runs multiple
random games and computes success rate:

    cabal run minesweeper benchmark 5

The last argument is the number of random games.


Happy hacking!


[Cabal]: https://www.haskell.org/cabal/
