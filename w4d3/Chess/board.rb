class Board

  attr_reader :board

  def initialize
    @board = Array.new(8) { Array.new(8)} #{ NullPiece.instance }}
  end

  def populate_board
    
    (0...@board.length).each do |row|
      (0...@board.length).each do |col|
        pos = [row,col]
        if row == 0 || row == 1   
          color = "white"  
          Piece.new(color, self, self[pos])
        elsif row == 6 || row == 7
          color = "black"
          Piece.new(color, self, self[pos])
        end
      end
    end
      
  end

  def [](pos)
    row,col = pos
    @board[row][col] 
  end

  def []=(pos, val)
    row,col = pos
    @board[row][col] = val
  end

  # def move_piece(start_pos, end_pos)
  #   raise "invalid move" if self[start_pos].include?(NullPiece.new) || 
    
  # end

  def valid_pos?(pos)
    indices = []
    @board.each do |row|
      row.each do |col|
        indices << [row, col]
      end
    end
    indices.include?(pos)
  end
end

p b = Board.new
b.populate_board