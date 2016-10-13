class Sieve
  def initialize(limit)
    @limit = limit
    @range = (2..limit).to_a
  end

  def primes
    @range.each do |num|
      if prime?(num)
        remove_multiples(num)
      end
    end
  end

  def prime?(num)
    true if factors(num) < 3
  end

  def remove_multiples(num)
    multiplier = num
    until (multiplier * num) > @limit do
      result = multiplier * num
      @range.delete(result) unless result > @limit
      multiplier += 1
    end
  end

  def factors(num)
    count = 1
    (2..num).each do |x|
      if num % x == 0
        count += 1
      end
    end
    count
  end

end
