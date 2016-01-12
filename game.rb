require './display.rb'
require './player.rb'

class Game
  include Cursorable

  attr_reader :cursor_pos

  def initialize
    @board = Board.new
    @display = Display.new(@board)
    @cursor_pos = [0,0]
    @player_black = Player.new(@board)
    @player_white = Player.new(@board)


  end


  def play
    good_input = false
    until game_over?

      until good_input
        @display.render
        get_input
        pos = @player_white.move
        pos2 = @player_white.move
        return pos, pos2
      end

    end

  end

  def game_over?
    false
  end



end
