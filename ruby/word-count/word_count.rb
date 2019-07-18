class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    phrase_unquote = @phrase.gsub(/['"]\s|\s['"]/, ' ')
    split(phrase_unquote).each_with_object(Hash.new(0)) do |word, hash|
      hash[word] += 1
    end
  end

  private

  def split(phrase)
    phrase.downcase.scan(/[\w']+/)
  end
end
