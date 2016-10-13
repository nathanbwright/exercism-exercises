class Binary
  VERSION = 1

  def initialize(binary_string)
    fail ArgumentError, "Input must contain only 1 and 0's" unless check_valid_input(binary_string)
    @binary = binary_string
  end

  def to_decimal
    result = []
    @binary.each_char.reverse_each.with_index do |item, index|
      item = item.to_i
      result << binary_converter(item, index)
    end
    result.inject(:+)
  end

  def binary_converter(num, index)
    num*(2**index)
  end

  def check_valid_input(binary_string)
    binary_string.scan(/[^01]/).empty?
  end

end
