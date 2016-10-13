class PhoneNumber
  def initialize(number)
    @number = ProcessedPhoneNumber.new(number).process
  end

  def number
    @number
  end

  def area_code
    @number[0,3]
  end

  def prefix
    @number[3,3]
  end

  def line_number
    @number[6,4]
  end

  def to_s
    "(#{area_code}) #{prefix}-#{line_number}"
  end
end


class ProcessedPhoneNumber

  def initialize(number)
    @number = number
  end

  def process
    strip_punctuation!
    strip_whitespace!
    if illegal?
      invalidate_number!
    else
      ensure_correct_length!
    end
  end

  def illegal?
    contains_letters? || invalid_length? || invalid_prefix?
  end

  def contains_letters?
    @number.match(/[[:alpha:]]/)
  end

  def invalid_length?
    @number.length > 11 || @number.length < 10
  end

  def invalid_prefix?
    @number.length == 11 && @number[0] != "1"
  end

  def strip_punctuation!
    @number.gsub!(/[[:punct:]]/, "")
  end

  def strip_whitespace!
    @number.gsub!(/[[:space:]]/, "")
  end

  def invalidate_number!
    @number = "0000000000"
  end

  def ensure_correct_length!
    if @number.length == 10
      @number
    else
      @number.slice!(0)
      @number
    end
  end

end
