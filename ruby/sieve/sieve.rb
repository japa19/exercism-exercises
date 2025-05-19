class Sieve

  def initialize(n)
    n > 1 ? @numbers = (2..n).to_a : @numbers = []
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
