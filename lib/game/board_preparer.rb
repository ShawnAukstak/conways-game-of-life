class BoardPreparer
  attr_reader :board

  def initialize(board)
    @board = board
  end

  def prepare
    kill_board

    @board.cells.flatten.each do |cell|
      attempt_spawn(cell)
    end
  end

  private

  def kill_board
    @board.cells.flatten.each(&:die)
  end

  def attempt_spawn(cell)
    if rand(2) == 1
      cell.spawn
    end
  end
end
