class Fixnum
  VERSION = 1

  CONVERSION = [
    ["M", 1000],
    ["CM", 900], ["D", 500], ["CD", 400], ["C",  100],
    ["XC",  90], ["L",  50], ["XL",  40], ["X",   10],
    ["IX",   9], ["V",   5], ["IV",   4], ["I",    1]
  ]

  def to_roman
    value = self
    CONVERSION.inject('') do |glyph, element|
      while value >= element[1]
        glyph << element[0]
        value -= element[1]
      end
      glyph
    end
  end

end

