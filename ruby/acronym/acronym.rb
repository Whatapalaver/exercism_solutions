class Acronym
  def self.abbreviate(phrase)
    array = phrase.split(/\W+/)
    array.map { |word| word[0].upcase }.join
  end
end
