class Series
  attr_reader :size
  def initialize(series)
    @series = series.split('')
  end

  def slices(size)
    unless valid?(size)
      raise ArgumentError, 'Slice size cannot be longer than the series'
    end

    @series.each_cons(size).map(&:join)
  end

  private

  def valid?(size)
    size <= @series.length
  end
end
