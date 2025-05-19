module ArmstrongNumbers
  def self.include?(number)
    
    digits = number.to_s.chars.map(&:to_i)
    sum = digits.reduce(0) { |sum, digit| sum + digit**digits.length }
    sum == number
  end
end
