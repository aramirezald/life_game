class GameOfLife
  attr_reader :live_cells_count

  def initialize(rows, cols)
    @rows = rows
    @cols = cols
    @grid = Array.new(rows) { Array.new(cols, 0) }
    generate_random_cells(0.3) 
    @live_cells_count = count_live_cells
  end

  def set_cell(row, col, value)
    @grid[row][col] = value
  end

  def next_generation
    next_grid = Array.new(@rows) { Array.new(@cols, 0) }

    (0...@rows).each do |row|
      (0...@cols).each do |col|
        live_neighbors = count_live_neighbors(row, col)

        next_grid[row][col] = if @grid[row][col] == 1
                                if live_neighbors < 2 || live_neighbors > 3
                                  0 
                                else
                                  1 
                                end
                              elsif live_neighbors == 3
                                1
                              else
                                0 
                              end
      end
    end

    @grid = next_grid
    @live_cells_count = count_live_cells
  end

  def count_live_neighbors(row, col)
    live_neighbors = 0

    (row - 1..row + 1).each do |r|
      (col - 1..col + 1).each do |c|
        next if r == row && c == col # Skip the current cell

        live_neighbors += 1 if r >= 0 && r < @rows && c >= 0 && c < @cols && @grid[r][c] == 1
      end
    end

    live_neighbors
  end

  def generate_random_cells(probability)
    (0...@rows).each do |row|
      (0...@cols).each do |col|
        @grid[row][col] = rand < probability ? 1 : 0
      end
    end
  end

  def count_live_cells
    live_cells = 0

    @grid.each do |row|
      live_cells += row.count(1)
    end

    live_cells
  end

  def display
    @grid.each do |row|
      row.each do |cell|
        print cell == 1 ? '■ ' : '□ '
      end
      puts
    end

    puts "Living cells: #{@live_cells_count}"
  end
end

game = GameOfLife.new(20, 20)

puts 'Initial generation:'
game.display

puts 'Press Enter for view next generation...'
gets

100.times do |generation|
  system('clear') || system('cls')
  game.next_generation
  puts "Generation #{generation + 1}:"
  game.display
  sleep(0.5)
end
