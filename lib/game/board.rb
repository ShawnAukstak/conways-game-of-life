class Board
  attr_accessor :cells
  attr_reader :size

  def initialize(size, cell_factory)
    @size = size
    @cells = Array.new(size) { Array.new(size) { cell_factory.new } }
  end

  def print
    (0...@size).each do |i|
      puts @cells[i].join(' ')
    end
  end
end
