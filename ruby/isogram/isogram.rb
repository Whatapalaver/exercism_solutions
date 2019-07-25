class Isogram

  def self.isogram?(string)
    split(string) == split(string).uniq
  end

  def self.split(string)
    string
      .downcase
      .gsub(/[-\s]+/, "")
      .split('')
      .sort
  end
end