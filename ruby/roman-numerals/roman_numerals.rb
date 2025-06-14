# frozen_string_literal: true

class Integer
  def to_roman
    value = self
    roman_numerals = {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }
    roman = ''
    roman_numerals.each do |num, numeral|
      while value >= num
        roman += numeral
        value -= num
      end
    end
    roman
  end
end
