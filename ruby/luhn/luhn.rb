class Luhn

  def self.valid?(number)
    new(number).valid?
  end

  def initialize(card_number)
    @card_number = card_number.delete(' ')
  end

  def valid?
    return unless valid_input?

    (luhn_algorithm % 10).zero?
  end

  private

  attr_reader :card_number

  def valid_input?
    card_number !~ /\D/ && card_number.length > 1
  end

  def luhn_algorithm
    card_number
      .to_i
      .digits
      .each_slice(2)
      .sum do |digit1, digit2 = 0|
        digit1 + luhn_doubling(digit2)
      end
  end

  def luhn_doubling(integer)
    product = integer * 2
    product < 10 ? product : product - 9
  end
end
