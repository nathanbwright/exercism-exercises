class SumOfMultiples

  def initialize(*factors)
    @factors = factors
  end

  def to(max)
    multiples = @factors.flat_map do |num|
      get_multiples(num, max)
    end
    sum_uniq(multiples)
  end

  def sum_uniq(multiples)
    multiples.uniq.reduce(:+)
  end

  def get_multiples(count_by, max)
    (0...max).step(count_by).map do |number|
      number
    end
  end

end

