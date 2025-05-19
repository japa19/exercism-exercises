module Grains
  def self.square(n)
    raise ArgumentError, "Input must be between 1 and 64" if n < 1 || n > 64
    2**(n-1)
  end

  def self.total = 2**64 - 1

end