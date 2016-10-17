class Prime

  def self.nth(n)
    fail ArgumentError, "There is no zeroth prime number" if n == 0
    primes = []
    num = 1
    while primes.size <= n do
      primes << num if is_prime?(num)
      num += 1
    end
    primes.last
  end

  def self.is_prime?(x)
    number_of_factors = (1..x).select {|n| x % n == 0 }.size
    number_of_factors < 3
  end

end

module BookKeeping
    VERSION = 1
end
