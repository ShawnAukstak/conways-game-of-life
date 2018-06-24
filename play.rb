require_relative 'lib/game'

BOARD_SIZE =  30

game = Game.new(Board.new(BOARD_SIZE, Cell))

loop  {
  system 'clear'
  game.print_board
  game.advance
  sleep(0.1)
}
