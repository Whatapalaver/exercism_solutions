class Prime
  def self.nth(position)
    raise ArgumentError if position < 1
    primes = [2, 3] # starting with fist 2 primes
    counter = 3
    while primes.length <= position
      counter += 1
      primes << counter if prime?(counter)
    end
    primes[position - 1]
  end

  def self.prime?(number)
    return false if number < 2 || number.even?

    2.upto(number - 1) do |n|
      return false if (number % n).zero?
    end
    true
  end
end
