require_relative 'board'
require_relative 'pieces/nul_piece'
 require 'colorize'
 require_relative 'cursorable.rb'

class Display
  include Cursorable

  attr_reader :cursor_pos

  def initialize(board)
    @cursor_pos = [0,0]
    @selected      #true / false
    @board = board
  end

  def render
    system("clear")
    background_toggle = true

    @board.grid.each_with_index do |row, i|
      background_toggle = !background_toggle

      row.each_with_index do |piece, j|
        if [i,j] == @cursor_pos
          print piece.icon.colorize(:color => :white, :background => :black)
        elsif background_toggle
          print piece.icon.colorize(:color => :white, :background => :red)
        else
          print piece.icon.colorize(:color => :white, :background => :blue)
        end
        background_toggle = !background_toggle

      end
      puts

    end
    nil

  end

end
