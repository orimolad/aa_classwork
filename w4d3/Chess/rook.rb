require_relative "pieces"
require_relative "slideable"

class Rook < Piece

  include Slideable

  def symbol
    "R"
  end

  def move_dirs
    horizontal_dirs
  end

end

r = Rook.new("red", [1,1])

r.valid_moves