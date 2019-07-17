class Anagram

  def initialize(word)
    @downcased_word = word.downcase
    @alphabetised_word = @downcased_word.chars.sort(&:casecmp).join
  end

  def match(dictionary)
    alphabetised_dictionary = dictionary.map { |word| word.downcase.chars.sort(&:casecmp).join }
    matching_indeces = alphabetised_dictionary.each_index.select do |index|
      alphabetised_dictionary[index] == @alphabetised_word
    end
    temp_result_inc_direct_match = dictionary.values_at(*matching_indeces)
    temp_result_inc_direct_match.delete_if { |word| word.downcase == @downcased_word}
  end

end