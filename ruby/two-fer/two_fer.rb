# frozen_string_literal: true

class TwoFer
  def self.two_fer(name = 'you')
    "One for #{name}, one for me."
  end
end

p TwoFer.two_fer('Bob')
p TwoFer.two_fer
