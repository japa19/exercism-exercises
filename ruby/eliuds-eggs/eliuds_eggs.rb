# frozen_string_literal: true

class EliudsEggs
  def self.egg_count(number)
    number.to_s(2).gsub(/0/, '').length
  end
end
