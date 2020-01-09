require_relative "board"

class Piece

  attr_reader :symbol, :board, :pos

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  # def initialize(color, pos)
  #   @color = color
  #   @pos = pos
  # end

  def to_s
    self.symbol
  end

  def empty?
      self.board.board.is_a?(NullPiece)
  end

  def valid_moves
    self.moves
  end

  def pos=(val)
    
  end

  def move_into_check?(end_pos)
      
  end

end


