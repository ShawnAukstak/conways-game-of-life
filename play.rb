require_relative 'lib/game'

BOARD_SIZE =  40

game = Game.new(Board.new(BOARD_SIZE, Cell))

10_000.times {
  puts "\n" * 10
  game.print_board
  game.advance
  sleep(0.25)
}
