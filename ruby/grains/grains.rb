class Grains
  LOCATIONS = 1..64
  MULTIPLIER = 2

  class << self
    def square(number)
      unless valid_position(number)
        raise ArgumentError, "Must be between #{LOCATIONS.min} and #{LOCATIONS.max}"
      end
      index = number - 1
      position_total(index)
    end

    def total
      position_total(LOCATIONS.max) - 1
    end

    private

    def valid_position(number)
      LOCATIONS.include?(number)
    end

    def position_total(index)
      MULTIPLIER.pow(index)
    end
  end
end
