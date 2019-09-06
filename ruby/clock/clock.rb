class Clock
  DAY_MINUTES = 1440
  attr_accessor :total_minutes

  def initialize(hour: 0, minute: 0)
    @total_minutes = (hour * 60 + minute) % DAY_MINUTES
  end

  def to_s
    format('%02d:%02d', hour, minute)
  end

  def +(other_clock)
    # total_minutes += other_clock.total_minutes
    Clock.new(minute: total_minutes + other_clock.total_minutes)
  end

  def -(other_clock)
    Clock.new(minute: total_minutes - other_clock.total_minutes)
  end

  def ==(other_clock)
    total_minutes == other_clock.total_minutes
  end

  private

  def hour
    total_minutes / 60 % 24
  end

  def minute
    total_minutes % 60
  end

end
