=begin
Any live cell with fewer than two live neighbors dies, as if by under population.
Any live cell with two or three live neighbors lives on to the next generation.
Any live cell with more than three live neighbors dies, as if by overpopulation.
Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.
=end

require_relative 'game/cell'
require_relative 'game/board'
require_relative 'game/board_preparer'
require_relative 'game/board_advancer'

class Game
  def initialize(board)
    @board = board
    BoardPreparer.new(@board).prepare
  end

  def print_board
    @board.print
  end

  def advance
    @board = BoardAdvancer.new(@board).advance
  end
end

