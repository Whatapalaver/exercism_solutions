class Luhn
  attr_reader :reverse_string

  def self.valid?(number)
    @reverse_string = number.reverse.gsub(' ','')
    valid_input? && divisible_by_10?
  end

  def self.valid_input?
    @reverse_string.scan(/\D/).empty? && @reverse_string.length > 1
  end

  def self.divisible_by_10?
    process.sum % 10 === 0
  end

  def self.process
    @reverse_string.chars.map.with_index do | digit, index |
      product(digit.to_i, index)
    end
  end

  def self.product(integer, index)
    product = index.odd? ? integer * 2 : integer
    product > 9 ? product - 9 : product
  end
end
