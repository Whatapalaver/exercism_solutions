class Luhn
  attr_reader :number_string

  def initialize(number_string)
    @number_string = number_string.delete(' ')
  end

  def self.valid?(number)
    new(number).valid?
  end

  def valid?
    valid_input? && valid_luhn_sum?
  end

  def valid_input?
    number_string.scan(/\D/).empty? && number_string.length > 1
  end

  def valid_luhn_sum?
    (process.sum % 10).zero?
  end

  private

  def process
    number_string.reverse.chars.map.with_index do | digit, index |
      product(digit.to_i, index)
    end
  end

  def product(integer, index)
    product = index.odd? ? integer * 2 : integer
    product > 9 ? product - 9 : product
  end
end
