class Phrase
  attr_reader :phrase
  
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words.each_with_object(Hash.new(0)) do |word, hash|
      hash[word] += 1
    end
  end

  private

  def words
    phrase
      .downcase
      .scan(/[\w']+/)
      .map { |word| unquote(word) }
  end

  def unquote(word)
    word.gsub(/['"]$|^['"]/, '')
  end
end
