class Phrase

  VERSION = 1

  def initialize(phrase)
    @words = clean_string(phrase).downcase.split(' ')
  end

  def word_count
    count = Hash.new { |h,k| h[k] = 0 }
    @words.each do |word|
      count[word] += 1
    end
    count
  end

  def clean_string(string)
    string.gsub(/[^[:alnum:][:space:]']|\s\B'|\b'\s/, ' ')
  end

end
