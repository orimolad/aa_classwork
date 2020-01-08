class Board

  attr_reader 

  def initialize
    @board = Array.new(8) { Array.new(8, _) }
  end

end

b = Board.new