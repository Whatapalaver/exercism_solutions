class Clock
  DAY_MINUTES = 1440
  HOUR_MINUTES = 60
  attr_accessor :total_minutes

  def initialize(hour: 0, minute: 0)
    @total_minutes = (hour * HOUR_MINUTES + minute) % DAY_MINUTES
  end

  def to_s
    hours, minutes = total_minutes.divmod(HOUR_MINUTES)
    format('%02d:%02d', hours, minutes)
  end

  def +(other)
    Clock.new(minute: total_minutes + other.total_minutes)
  end

  def -(other)
    Clock.new(minute: total_minutes - other.total_minutes)
  end

  def ==(other)
    total_minutes == other.total_minutes
  end

  def eql?(other)
    self.class == other.class && total_minutes == other.total_minutes
  end

  def hash
    total_minutes.hash
  end

=begin
  # Re-implementing hash and eql?
  # See https://stackoverflow.com/a/54961907/3258059

  # irb test code

  require './clock.rb'
  c1 = Clock.new(minute: 10)
  c2 = Clock.new(minute: 10)
  c1 == c2
  c1.eql?(c2)
  clock_hash = Hash.new
  clock_hash[c1] = '10 mins'
  clock_hash[c2] = '10 mins'
  clock_hash
=end
end
