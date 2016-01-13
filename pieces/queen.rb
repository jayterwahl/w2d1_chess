require_relative 'piece.rb'

class Queen < Piece

  def initialize(color)
    super(color)
    @icon = " ♛ "
    @slider = true

  end

  def moves(current_pos)
    moves = []
    (-7..7).each do |i|
      (-7..7).each do |j|

        if i.abs == j.abs
          moves << [(current_pos[0] + i),(current_pos[1] + j)]
        end
      end
    end
    (0..7).each do |i|
      (0..7).each do |j|
        if current_pos[0] == i
          moves << [i,j]
        elsif current_pos[1] == j
          moves << [i,j]
        end
      end
    end

    moves
  end


  # def valid_moves(board,current_pos)
  #   all_moves = moves(current_pos)
  #
  #
  # end


end
