# frozen_string_literal: true

class Scrabble
  def initialize(word)
    @word = word.upcase
  end

  def score
    sum = 0
    @word.chars.each do |char|
      case char
      when 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'
        sum += 1
      when 'D', 'G'
        sum += 2
      when 'B', 'C', 'M', 'P'
        sum += 3
      when 'F', 'H', 'V', 'W', 'Y'
        sum += 4
      when 'K'
        sum += 5
      when 'J', 'X'
        sum += 8
      when 'Q', 'Z'
        sum += 10
      end
    end
    sum
  end
end
