require './display.rb'

class Game
  include Cursorable

  attr_reader :cursor_pos

  def initialize
    @board = Board.new
    @display = Display.new(@board)
    @cursor_pos = [0,0]

  end


  def play
    good_input = false
    until game_over?

      until good_input
        @display.render
        get_input
      end

    end

  end

  def game_over?
    false
  end



end
