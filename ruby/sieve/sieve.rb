class Sieve
  attr_reader :max_num

  def initialize(max_num)
    @max_num = max_num
  end

  def primes
    range = (2..max_num).to_a
    range.each { |n| n.upto(max_num) { |x| range.delete(x * n) } }
  end
end
