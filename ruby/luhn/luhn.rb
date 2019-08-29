class Luhn
  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number
  end

  def self.valid?(number)
    new(number).valid?
  end

  def valid?
    valid_input? && valid_luhn_sum?
  end

  def valid_input?
    return false unless card_number.is_a?(String)

    number_string = card_number.delete(' ')
    number_string !~ /\D/ && number_string.length > 1
  end

  def valid_luhn_sum?
    (luhn_algorithm.sum % 10).zero?
  end

  private

  def luhn_algorithm
    card_number
      .delete(' ')
      .reverse
      .chars
      .map.with_index do | digit, index |
        luhn_doubling(digit.to_i, index)
      end
  end

  def luhn_doubling(integer, index)
    product = index.odd? ? integer * 2 : integer
    product > 9 ? product - 9 : product
  end
end
