class Grains
  MAX_SQUARES = 64
  MIN_SQUARES = 1
  class << self
    def square(square)
      raise ArgumentError, 'Must be between 1 and 64' unless valid_square(square)

      doubling_grains(square).last
    end

    def total
      doubling_grains(MAX_SQUARES).sum
    end

    private

    def valid_square(num)
      num >= MIN_SQUARES && num <= MAX_SQUARES
    end

    def doubling_grains(total_squares)
      (0..total_squares - 1).map { |index| 2.pow(index) }
    end
  end
end
