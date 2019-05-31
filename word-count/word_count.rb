class Phrase

  def initialize(phrase)
    @phrase = phrase.downcase.scan(/\b[a-z0-9']+\b/)
  end

  def word_count
    tally = Hash.new()
    @phrase.each {|word|
      tally.key?(word) ? tally[word] += 1 : tally[word] = 1
    }
    return tally
  end

end