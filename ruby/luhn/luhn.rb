module Luhn

  def self.valid?(number)
    number = number.delete(' ')
    return false if number.length <= 1 || number !~ /^\d+$/
    sum = 0
    number.reverse.each_char.with_index do |digit, index|
      if index.even?
        sum += digit.to_i
      else
        double = digit.to_i * 2
        sum += double > 9 ? double - 9 : double
      end
    end
    sum % 10 == 0
  end

end
