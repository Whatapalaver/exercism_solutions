module TILEABLE
  TILES = Hash.new(0).merge(
      'A' => 1, 'I' => 1, 'Q' => 10,
      'B' => 3, 'J' => 8, 'R' => 1,
      'C' => 3, 'K' => 5, 'S' => 1,
      'D' => 2, 'L' => 1, 'T' => 1,
      'E' => 1, 'M' => 3, 'U' => 1,
      'F' => 4, 'N' => 1, 'V' => 4,
      'G' => 2, 'O' => 1, 'W' => 4,
      'H' => 4, 'P' => 3, 'X' => 8,
      'Y' => 4,
      'Z' => 10
    )
end

class Scrabble
  TILES = { 'A' => 1, 'E' => 1, 'I' => 1, 'O' => 1, 'U' => 1,
            'L' => 1, 'N' => 1, 'R' => 1, 'S' => 1, 'T' => 1,
            'D' => 2, 'G' => 2,
            'B' => 3, 'C' => 3, 'M' => 3, 'P' => 3,
            'F' => 4, 'H' => 4, 'V' => 4, 'W' => 4, 'Y' => 4,
            'K' => 5,
            'J' => 8, 'X' => 8,
            'Q' => 10, 'Z' => 10 }.freeze

  def initialize(word)
    @word_tiles = create_tiles(word)
  end

  def self.score(word)
    new(word).score
  end

  def score
    @word_tiles.sum { |value| TILES[value] }
  end

  private

  def create_tiles(word)
    word.to_s.upcase.scan(/[#{TILES.keys}]/)
  end
end
