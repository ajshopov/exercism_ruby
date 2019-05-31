class Gigasecond

  @@gigasecond = 1000000000
  
  def self.from(birth_time)
    birth_time + @@gigasecond
  end

end