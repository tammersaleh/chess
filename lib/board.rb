class Board
  def initialize
    @spaces = [
      %w(r n b q k b n r),
      %w(p p p p p p p p),
      %w(. . . . . . . .),
      %w(. . . . . . . .),
      %w(. . . . . . . .),
      %w(. . . . . . . .),
      %w(P P P P P P P P),
      %w(R N B K Q B N R),
    ]
  end

  def to_s
    string = "  a b c d e f g h\n"
    @spaces.each_with_index do |row, row_index|
      row_string = row.join(" ")
      string << "#{8 - row_index} #{row_string}\n"
    end
    return string
  end

  def move(from, to)
    piece = @spaces[from.row][from.column]
    @spaces[to.row][to.column] = piece
    @spaces[from.row][from.column] = "."
  end
end
