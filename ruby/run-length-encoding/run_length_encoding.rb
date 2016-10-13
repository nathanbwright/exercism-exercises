class RunLengthEncoding
  def self.encode(input)
    sets = input.split("").slice_when { |first,second| first != second }.to_a
    output = ""
    sets.each do |set|
      output << encode_set(set)
    end
    output
  end

  def self.decode(input)
    sets = input.split(/([1-9]+.|.)/).select {|i| !i.empty? }
    output = ""
    sets.each do |set|
      output << decode_set(set)
    end
    output
  end

  def self.encode_set(set)
    if set.size > 1
      "#{set.size}#{set.first}"
    else
      "#{set.first}"
    end
  end

  def self.decode_set(set)
    if set.size > 1
      count = set[0, set.length-1].to_i
      str = set[-1] * count
      str
    else
      set
    end
  end

end

module BookKeeping
  VERSION = 2
end
