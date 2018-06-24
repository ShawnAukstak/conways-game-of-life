class Cell
  ALIVE_CELL_LABEL = '*'.freeze
  DEAD_CELL_LABEL = ' '.freeze

  def initialize
    @alive = false
  end

  def alive?
    @alive
  end

  def dead?
    !@alive
  end

  def to_s
    if @alive
      ALIVE_CELL_LABEL
    else
      DEAD_CELL_LABEL
    end
  end

  def die
    @alive = false
  end

  def spawn
    @alive = true
  end
end
