module TILEABLE
  TILES = {
    ENGLISH: {
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
    }
  }.freeze
end

class Scrabble
  attr_reader :tiles, :word, :valid_letters_regex

  def initialize(word, tiles = TILEABLE::TILES[:ENGLISH])
    @tiles = tiles
    @word = word.to_s.upcase
    @valid_letters_regex = tiles.keys.join
  end

  def self.score(word)
    new(word).score
  end

  def score
    letters.sum { |letter| tiles[letter] }
  end

  private

  def letters
    word.scan(/[#{valid_letters_regex}]/)
  end
end
