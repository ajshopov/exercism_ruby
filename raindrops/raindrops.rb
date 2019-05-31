class Raindrops
  RAINDROPS = {3=> "Pling", 5=> "Plang", 7=> "Plong"}
  def self.convert(number)
    conversion = ""
    RAINDROPS.select{|prime, word| conversion += word if number % prime == 0}
    conversion << number.to_s if conversion == ""
    conversion
  end
end
