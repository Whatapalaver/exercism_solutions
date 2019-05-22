class Grains
  LOCATIONS = 1..64
  MULTIPLIER = 2

  class << self
    def square(location)
      unless valid?(location)
        raise ArgumentError, "BoardLocationError: Must be between #{LOCATIONS.min} and #{LOCATIONS.max}"
      end
      position_total(location - 1)
    end

    def total
      position_total(LOCATIONS.max) - 1
    end

    private

    def valid?(location)
      LOCATIONS.include?(location)
    end

    def position_total(index)
      MULTIPLIER.pow(index)
    end
  end
end
