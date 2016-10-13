module BookKeeping
  VERSION = 2
end

class Pangram
  ALPHABET = ("a".."z")

  def self.is_pangram?(str)
    lowercase_string = str.downcase
    ALPHABET.all? { |letter| lowercase_string.include?(letter) }
  end

end
