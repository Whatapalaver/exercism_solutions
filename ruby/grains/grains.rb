class Grains
  MAX = 64
  MIN = 1
  MULTIPLIER = 2

  class << self
    def square(square)
      unless valid_square(square)
        raise ArgumentError, "Must be between #{MIN} and #{MAX}"
      end

      square_total(square)
    end

    def total
      (MIN..MAX).inject(0) { |res, sq| res + square_total(sq) }
    end

    private

    def valid_square(num)
      num.between?(MIN, MAX)
    end

    def square_total(square)
      MULTIPLIER.pow(square - 1)
    end
  end
end
