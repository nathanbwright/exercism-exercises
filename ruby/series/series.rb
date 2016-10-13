class Series
  def initialize(numbers)
    @numbers = numbers.split("").map {|num| num.to_i}
  end

  def slices(step_size)
    raise ArgumentError if step_size > @numbers.size
    @numbers.each_cons(step_size).map do |numbers|
      numbers
    end
  end
end
