class SumOfMultiples
  attr_reader :factors

  def initialize(*factors)
    @factors = factors
  end

  def to(max_multiple)
    multiples = []
    factors.each do |factor| 
      current_state = factor
      while current_state < max_multiple
        multiples << current_state
        current_state += factor
      end
    end
    multiples.uniq.sum
  end
end
