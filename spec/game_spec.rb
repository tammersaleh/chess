require "game"

class String
  def strip_leading_whitespace
    self.gsub(%r{^\s*}, "")
  end
end

describe "the game" do
  let(:game) { Game.new }

  it "displays correctly" do
    expect(game.to_s).to eq(<<-EOS.strip_leading_whitespace)
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

  describe "after the first move" do
    before do
      game.move("d2", "d3")
    end

    it "displays correctly" do
      expect(game.to_s).to eq(<<-EOS.strip_leading_whitespace)
        . a b c d e f g h
        8 r n b q k b n r
        7 p p p p p p p p
        6 . . . . . . . .
        5 . . . . . . . .
        4 . . . . . . . .
        3 . . . P . . . .
        2 P P P . P P P P
        1 R N B K Q B N R
      EOS
    end

  end
end
