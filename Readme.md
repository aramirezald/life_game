# Game of Life

This is a Ruby implementation of the Game of Life, a cellular automaton devised by mathematician John Horton Conway. The Game of Life is played on a grid of cells, where each cell can be either alive or dead. The state of the cells evolves based on a set of rules, creating fascinating patterns and behaviors.
Rules of the Game

The Game of Life follows these simple rules:

 - Any live cell with fewer than two live neighbors dies, as if by underpopulation.
 - Any live cell with two or three live neighbors survives to the next generation.
 - Any live cell with more than three live neighbors dies, as if by overpopulation.
 - Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

## Features

 Random generation of initial live cells.
 Calculation of the next generation based on the rules.
 Displaying the grid and the live cells count.

## Usage

To run the Game of Life, follow these steps:

 -  Make sure you have Ruby installed on your system.
 -  Clone this repository to your local machine.
 -  Open a terminal and navigate to the repository's directory.
 -  Run the following command to start the game:
    
        ruby life.rb
    
 Observe the grid and the live cells as they evolve over generations.
 Press Enter to advance to the next generation.
 Repeat the process until you're satisfied or want to stop the game.
 The initial live cells count will also be calculated:
    
    `game = GameOfLife.new(20, 20)`

## Customize the Game

If you wish to customize the game, you can modify the following parameters in the GameOfLife class:

-  rows: The number of rows in the grid.
-  cols: The number of columns in the grid.
-  probability: The probability of a cell being initially alive.

You can also modify the code to set specific cells as alive using the set_cell method.

## Examples

Here are a few examples of interesting patterns you can observe in the Game of Life:

-   Oscillators: Patterns that oscillate between a few states.
-   Gliders: Patterns that move across the grid.
-   Spaceships: Patterns that move while maintaining their shape.

Feel free to experiment and discover new patterns by adjusting the initial live cells and observing their evolution.

## Credits

This implementation of the Game of Life was created by Angel Ramirez. It is based on the original concept by John Horton Conway.

## License

This project is licensed under the MIT License.

Enjoy playing the Game of Life and exploring the fascinating world of cellular automata!
