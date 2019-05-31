class Integer
  def to_roman
    arabic = self

    units = ['','I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']
    tens = ['','X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
    hundreds = ['','C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM']
    thousands = ['','M', 'MM', 'MMM', 'MMMM', 'MMMMM', 'MMMMMM', 'MMMMMMM', 'MMMMMMMM', 'MMMMMMMMMM']

    digits = arabic.to_s.split('').map{|t| t.to_i}
      while (digits.length < 4) do
        digits.unshift(0)
      end
    thousands[digits[0]] + hundreds[digits[1]] + tens[digits[2]] + units[digits[3]]
  end
end