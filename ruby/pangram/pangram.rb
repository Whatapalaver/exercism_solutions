class Pangram
  class << self
    def pangram?(sentence)
      sentence.downcase.scan(/[a-z]/).uniq.count == 26
    end
  end
end
