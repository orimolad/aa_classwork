require_relative "./skeleton/lib/00_tree_node.rb"

class KnightPathFinder
  attr_reader :considered_positions
  def initialize(final_pos)
    @root_node = PolyTreeNode.new([0, 0])
    @considered_positions = [0, 0]
  end

  def self.valid_moves(pos)
    x, y = pos
    valid_moves = []
    valid_moves << [x - 2, y - 1]
    valid_moves << [x + 2, y - 1]
    valid_moves << [x - 1, y - 2]
    valid_moves << [x + 1, y - 2]
    valid_moves << [x + 2, y + 1]
    valid_moves << [x - 2, y + 1]
    valid_moves << [x + 1, y + 2]
    valid_moves << [x - 1, y + 2]
    valid_moves
  end

  def new_move_positions(pos)
    new_moves = self.valid_moves(pos).reject {|ele| self.considered_positions.include?(ele)}
    self.considered_positions += new_moves
    return new_moves
  end


end