class Isogram

  def self.isogram?(string)
    return true unless split(string).detect{ |e| split(string).count(e) > 1 }
  end

  def self.split(string)
    string
      .downcase
      .gsub(/[-\s]+/, "")
      .split('')
      .sort
  end
end