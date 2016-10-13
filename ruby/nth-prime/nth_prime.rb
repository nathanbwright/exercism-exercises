class Prime

  def self.nth(n)
    fail ArgumentError, "There is no zeroth prime number" if n == 0
    last_prime, prime_counter = 0, 0
    num = 1
    while prime_counter <= n do
      if factor_counter(num) <= 2
        last_prime = num
        prime_counter += 1
        num += 1
      else
        num += 1
      end
    end
    last_prime
  end

  def self.factor_counter(x)
    factor_count = 0
    (1..x).each do |num|
      break if factor_count > 3
      if x % num == 0
        factor_count += 1
      end
    end
    factor_count
  end

end