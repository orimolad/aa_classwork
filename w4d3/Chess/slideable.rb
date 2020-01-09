module Slideable

  def horizontal_dirs
      HORIZONTAL_DIRS
  end

  def diagonal_dirs
      DIAGONAL_DIRS
  end

  def moves
      possible_moves = []
      move_dirs.each do |dir|
        moves_in_dir = grow_unblocked_moves_in_dir(dir)
        possible_moves += moves_in_dir
      end
      possible_moves
  end

  def grow_unblocked_moves_in_dir(dir)
      
  end

  def move_dirs
    raise NotImplemented
  end

  private
  HORIZONTAL_DIRS = [[0,1], [1,0], [0, -1], [-1, 0]]
  DIAGONAL_DIRS = [[1,1],[-1,1],[1,-1],[-1,-1]]
  
end
