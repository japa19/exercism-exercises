class IsbnVerifier

  VALID_NUMBER = /[0-9]{9}[0-9X]/
  
  def self.valid?(number)
    return false unless number.gsub(/-/, "").length == 10
    number = number.gsub(/[^0-9X]/, "")
    return false unless number[VALID_NUMBER] 

    sum = 0
    count = 10
    number.chars  do |char|
      digit = (char == "X" ? 10 : char.to_i)
      sum += digit * count
      count -= 1
    end

    sum % 11 == 0

  end

end
