module Space
  EMPTY = 0
  X = 1
  O = 2
end

class Board

  attr_accessor :board_array

  WINNING_CELLS = [[0, 1, 2], [0, 3, 6], [0, 4, 8], [1, 4, 7], [2, 5, 8], [2, 4, 6], [3, 4, 5], [6, 7, 8]]

  def initialize
    @board_array = Array.new(9, Space::EMPTY)
  end

  def print_board

    @board_array.each_slice(3) do |tile_group|
      print "#{tile_group.inspect}\n"
    end

  end

  def print_key
    puts 'Key:'

    (1..9).each_slice(3) do |tile_group|
        puts "#{tile_group[0]} | #{tile_group[1]} | #{tile_group[2]}"
        if tile_group[0] < 7
          puts '--|---|--'
        end
    end

    puts "\n"
  end

end

class Game

  attr_accessor :player1, :player2, :board

  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
  end

end

class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

g = Game.new(Player.new('Josh'), Player.new('Tiffany'), Board.new)

g.board.print_key
g.board.print_board
