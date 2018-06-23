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

    # Up
    if i - 1 >= 0
      #Top
      if @board.cells[i-1][j].alive?
        count += 1
      end

      #Top left
      if j - 1 >= 0
        if @board.cells[i-1][j-1].alive?
          count += 1
        end
      end

      #Top right
      if j + 1 < @board.size
        if @board.cells[i-1][j+1].alive?
          count += 1
        end
      end
    end

    #Left
    if j - 1 >= 0
      if @board.cells[i][j-1].alive?
        count += 1
      end
    end

    #right
    if j + 1 < @board.size
      if @board.cells[i][j+1].alive?
        count += 1
      end
    end

    #down
    if i + 1 < @board.size
      if @board.cells[i+1][j].alive?
        count += 1
      end

      #left
      if j - 1 >= 0
        if @board.cells[i+1][j-1].alive?
          count += 1
        end
      end

      #right
      if j + 1 < @board.size
        if @board.cells[i+1][j+1].alive?
          count += 1
        end
      end
    end

    count
  end
end
