class Raindrops

  def self.convert(number)
    raindrop = pling(number) + plang(number) + plong(number)
    if raindrop == '' then number.to_s
    else raindrop
    end
  end

  def self.pling(number)
    (number % 3).zero? ? 'Pling' : ''
  end

  def self.plang(number)
    (number % 5).zero? ? 'Plang' : ''
  end

  def self.plong(number)
    (number % 7).zero? ? 'Plong' : ''
  end

  end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
