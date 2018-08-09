class Year

  def self.leap?(year)
    if (year % 400).zero?
      then true
    elsif (year % 100).zero?
      then false
    elsif (year % 4).zero?
      then true
    else false
    end
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
