class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    phrase_unquote = @phrase.gsub(/'\s|\s'/, ' ')
    word_array = phrase_unquote.downcase.scan(/[\w']+/)
    word_array.each_with_object(Hash.new(0)) do |word, hash|
      hash[word] += 1
    end
  end
end
