class Grains
  LOCATIONS = (1..64).freeze
  MULTIPLIER = 2

  def initialize(location)
    @location = location
  end

  def self.square(location)
    new(location).square
  end

  def self.total
    new(LOCATIONS.min).total
  end

  def square
    unless valid?(@location)
      raise ArgumentError, "BoardLocationError: Must be between #{LOCATIONS.min} and #{LOCATIONS.max}"
    end

    position_total(@location - 1)
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