class BoardAdvancer
  def initialize(board)
    @board = board
  end

  def advance
    new_board = Board.new(@board.size, Cell)

    (0...@board.size).each do |i|
      (0...@board.size).each do |j|
        count = neighbors_count(i, j)

        if count == 3 || (@board.cells[i][j].alive? && count == 2)
          new_board.cells[i][j].spawn
        end
      end
    end

    @board = new_board
  end

  private

  def neighbors_count(i, j)
    count = 0

    # NW, N, NE
    [-1, 0, 1].each do |x|
        count += 1 if cell_alive?(i - 1, j - x)
    end

    # W, E
    count += 1 if cell_alive?(i, j - 1)
    count += 1 if cell_alive?(i, j + 1)

    # SW, S, SE
    [-1, 0, 1].each do |x|
        count += 1 if cell_alive?(i + 1, j - x)
    end

    count
  end

  def cell_alive?(i, j)
    i >= 0 && i < @board.size &&
    j >= 0 && j < @board.size &&
    @board.cells[i][j].alive?
  end
end
