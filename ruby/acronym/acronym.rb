class Acronym
  def self.abbreviate(phrase)
    array = phrase.scan(/\b\w/)
    array.map { |word| word[0] }.join.upcase
  end
end
