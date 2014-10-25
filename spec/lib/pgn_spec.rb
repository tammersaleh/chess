require "pgn"
require "array_extensions"

describe PGN do
  {
    "a1" => [0, 7],
    "a2" => [0, 6],
    "a3" => [0, 5],
    "b4" => [1, 4],
    "h6" => [7, 2],
    "h7" => [7, 1],
    "h8" => [7, 0],
  }.each do |label, coordinates|
    it("converts #{label} to #{coordinates.inspect}") do
      expect(PGN.new(label).column).to eq(coordinates.first)
      expect(PGN.new(label).row).to    eq(coordinates.second)
    end
  end
end
