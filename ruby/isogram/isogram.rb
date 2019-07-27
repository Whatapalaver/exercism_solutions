class Isogram

  def self.isogram?(string)
    stripped_chars = split(string)
    stripped_chars.length == stripped_chars.uniq.length
  end

  def self.split(string)
    string
      .downcase
      .scan(/[a-z]/)
  end
end