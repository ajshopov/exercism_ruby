class Complement
  CONVERTER = {'G'=>'C','C'=>'G','A'=>'U','T'=>'A'}
  def self.of_dna(original)
    raise ArgumentError if original.match(/[^GCAT]/)
    original.split("").map { |letter| CONVERTER[letter] }.join
  end
end
