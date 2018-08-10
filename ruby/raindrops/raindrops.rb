class Raindrops

  # - If the number has 3 as a factor, output 'Pling'.
  # - If the number has 5 as a factor, output 'Plang'.
  # - If the number has 7 as a factor, output 'Plong'.
  # - If the number does not have 3, 5, or 7 as a factor, return number.

  def self.convert(number)
    raindrop = pling(number) + plang(number) + plong(number)
    raindrop == '' ? number.to_s : raindrop

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
