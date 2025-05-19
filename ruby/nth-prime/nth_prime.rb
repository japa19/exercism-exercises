# frozen_string_literal: true

class Prime
  def self.nth(n)
    raise ArgumentError if n < 1

    # Approximate the upper bound for the nth prime using the prime number theorem
    upper_bound = n < 6 ? 15 : (n * Math.log(n) + n * Math.log(Math.log(n))).to_i
    primes = get_primes(upper_bound)
    count_primes(primes, n)
  end

  def self.get_primes(s)
    primes = Array.new(s, 1)
    (2...s).each do |i|
      next unless primes[i] == 1

      (i...s).each do |j|
        break unless i * j < s

        primes[i * j] = 0
      end
    end
    primes
  end

  def self.count_primes(primes, nth)
    # Returns the n-th prime represented by the index of the n-th "1" in the array.
    count = 0
    (2...primes.length).each do |k|
      count += primes[k]
      return k if count == nth
    end
    nil
  end
end
