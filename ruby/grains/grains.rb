class Grains
  def self.square(position)
    (1..position).inject { |sum, n| sum + sum }
  end

  def self.total
    result = (1..64).inject { |sum, n| sum + sum }
    result * 2 - 1
  end
end
