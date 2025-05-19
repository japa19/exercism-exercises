# frozen_string_literal: true

class Sieve
  def initialize(n)
    @numbers = n > 1 ? (2..n).to_a : []
  end

  def primes
    @numbers.each do |e|
      c = 2
      while e * c <= @numbers.max
        @numbers.delete(e * c)
        c += 1
      end
    end
  end
end
