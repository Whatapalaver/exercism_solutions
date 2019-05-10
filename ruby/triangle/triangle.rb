class Triangle
  attr_reader :sides, :triangle

  def initialize(array_of_sides)
    @sides = array_of_sides
    @triangle = triangle?
  end

  def equilateral?
    triangle && equal_side_count == 3 ? true : false
  end

  def isosceles?
    triangle && equal_side_count >= 2 ? true : false
  end

  def scalene?
    triangle && equal_side_count == 1 ? true : false
  end

  private

  def triangle?
    min_side_length_test && inequality_test
  end

  def equal_side_count
    counts = []
    sides.each { |side| counts << sides.count(side) }
    counts.max
  end

  def min_side_length_test
    sides.min > 0
  end

  def inequality_test
    sides.sum - sides.max > sides.max
  end
end
