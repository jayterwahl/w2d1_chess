require_relative 'pieces/nul_piece'

class Board
  attr_accessor :grid
  def initialize
    @grid = Array.new(8){Array.new(8){Nul_piece.new}}
  end

end
