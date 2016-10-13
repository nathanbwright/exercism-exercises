class Hamming
  VERSION = 1
  def self.compute(strand_1, strand_2)
    fail ArgumentError, "Strands must be of equal length" unless strand_1.length == strand_2.length
    strand_1, strand_2 = strand_1.split(""), strand_2.split("")
    strand_1.select.with_index { |item, index| item != strand_2[index] }.length
  end
end
