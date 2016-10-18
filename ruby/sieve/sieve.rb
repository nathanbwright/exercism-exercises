class Sieve
  def initialize(limit)
    @limit = limit
    @range = (2..limit).to_a
  end

  def primes
    @range.each do |num|
      remove_multiples(num) if prime?(num)
    end
  end

  def prime?(num)
    factors(num) < 3
  end

  def remove_multiples(num)
    multiplier = num
    while (result = multiplier * num) <= @limit do
      @range.delete(result) unless result > @limit
      multiplier += 1
    end
  end

  def factors(num)
    (1..num).select {|x| num % x == 0 }.size
  end

end
