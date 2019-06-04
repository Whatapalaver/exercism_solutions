class Series
  def initialize(series)
    @series = series
  end

  def slices(size)
    raise ArgumentError, 'Slice size cannot be longer than the series' unless valid?(size)

    @series.split('').each_cons(size).map(&:join)
  end

  private

  def valid?(size)
    size <= @series.length
  end
end
