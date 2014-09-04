class Game
  def initialize
    self.board = Board.new
  end

  def to_s
<<-EOS
. a b c d e f g h
8 r n b q k b n r
7 p p p p p p p p
6 . . . . . . . .
5 . . . . . . . .
4 . . . . . . . .
3 . . . . . . . .
2 P P P P P P P P
1 R N B K Q B N R
EOS
  end

  def move(from, to)
    fuckyou
  end
end
