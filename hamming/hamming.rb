class Hamming
  def self.compute(dna, dnb)

    raise ArgumentError if dna.length != dnb.length

    combined_dna = dna.chars.zip(dnb.chars)
    combined_dna.select { |a,b| a != b }.count

  end
end