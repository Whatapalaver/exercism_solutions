class Grains
  MAX = 64
  MIN = 1
  MULTIPLIER = 2

  class << self
    def square(number)
      unless valid_position(number)
        raise ArgumentError, "Must be between #{MIN} and #{MAX}"
      end

      position_total(number)
    end

    def total
      (MIN..MAX).inject(0) { |result, number| result + position_total(number) }
    end

    private

    def valid_position(number)
      number.between?(MIN, MAX)
    end

    def position_total(number)
      MULTIPLIER.pow(number - 1)
    end
  end
end
