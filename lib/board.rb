class Board
  attr_reader :board
  def initialize
    @board = []
  end

  def place(ship)
    @board.push(ship)
  end
end
