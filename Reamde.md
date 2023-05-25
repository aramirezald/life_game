Game of Life

This is a Ruby implementation of the Game of Life, a cellular automaton devised by mathematician John Horton Conway. The Game of Life is played on a grid of cells, where each cell can be either alive or dead. The state of the cells evolves based on a set of rules, creating fascinating patterns and behaviors.
Rules of the Game

The Game of Life follows these simple rules:

    Any live cell with fewer than two live neighbors dies, as if by underpopulation.
    Any live cell with two or three live neighbors survives to the next generation.
    Any live cell with more than three live neighbors dies, as if by overpopulation.
    Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

Features

    Random generation of initial live cells.
    Calculation of the next generation based on the rules.
    Displaying the grid and the live cells count.

Usage

To run the Game of Life, follow these steps:

    Make sure you have Ruby installed on your system.
    Clone this repository to your local machine.
    Open a terminal and navigate to the repository's directory.
    Run the following command to start the game: