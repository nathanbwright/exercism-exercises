class Complement
  VERSION = 2
  DNA = { "C" => "G", "G" => "C", "T" => "A", "A" => "U" }
  RNA = DNA.invert

  def self.transcribe(strand, type)
    validate_strand(strand, type)

    strand.each_char.inject("") do |result, char|
      result << type[char]
    end
  end

  def self.validate_strand(strand, type)
    fail ArgumentError, "#{strand} contains invalid input" unless strand.each_char.all? { |char| type.has_key?(char) }
  end

  def self.of_dna(dna)
    transcribe(dna, DNA)
  end

  def self.of_rna(rna)
    transcribe(rna, RNA)
  end
end
