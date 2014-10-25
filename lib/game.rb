require "board"
require "pgn"

class Game
  def initialize
    @board = Board.new
  end

  def to_s
    @board.to_s
  end

  def move(from, to)
    @board.move(PGN.new(from), PGN.new(to))
  end
end
