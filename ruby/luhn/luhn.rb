class Luhn
  attr_reader :card_number, :card_numbers

  def initialize(card_number)
    @card_number = card_number.delete(' ')
    @card_numbers = @card_number.chars.map(&:to_i)
  end

  def self.valid?(number)
    new(number).valid?
  end

  def valid?
    valid_input? && valid_luhn_sum?
  end

  def valid_input?
    card_number !~ /\D/ && card_number.length > 1
  end

  private

  def luhn_algorithm
    card_numbers
      .reverse
      .each_slice(2)
      .sum do |digit1, digit2 = 0|
        digit1 + luhn_doubling(digit2)
      end
  end

  def valid_luhn_sum?
    (luhn_algorithm % 10).zero?
  end

  def luhn_doubling(integer)
    product = integer * 2
    product > 9 ? product - 9 : product
  end
end
