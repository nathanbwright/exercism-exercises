class Squares
  VERSION = 1

  def initialize(num)
    @num = num
  end

  def square_of_sums
    (1..@num).inject(:+) ** 2
  end

  def sum_of_squares
    (1..@num).inject { |sum, number| sum + number**2 }
  end

  def difference
    square_of_sums - sum_of_squares
  end

end
