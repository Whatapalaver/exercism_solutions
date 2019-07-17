class Anagram

  def initialize(word)
    @anagram_chars = character_splitter(word)
  end

  def match(dictionary)
    dictionary.select do |word|
      valid_anagram?(character_splitter(word))
    end
  end

  private

  def valid_anagram?(character_array)
    @anagram_chars.sort == character_array.sort && @anagram_chars != character_array
  end

  def character_splitter(word)
    word.downcase.chars
  end
end
