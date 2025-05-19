class  Affine
  
  M = 26

  def initialize(a, b)
    @a = a 
    @b = b
    raise ArgumentError unless a.gcd(M) == 1 && @a.is_a?(Integer) && @b.is_a?(Integer)
    @mmi = mmi
  end 

  def encode(text)
    text.downcase
        .gsub(/\W/, '')
        .scan(/[a-z0-9]/).map { |c| c.match(/[a-z]/) ? encrypt_char(c) : c }.join
        .scan(/.{1,5}/).join(' ')
  end

  def encrypt_char(c)
    # E(x) = (ai + b) mod m
    ((((@a * (c.ord - 97)) + @b) % M) + 97).chr
  end

  def decode(text)
    text.gsub(/\W/, '')
        .scan(/[a-z0-9]/).map { |c| c.match(/[a-z]/) ? decrypt_char(c) : c }.join
  end

  def decrypt_char(c)
    # D(y) = (a^-1)(y - b) mod m
    (((@mmi * ((c.ord - 97) - @b)) % M) +97).chr
  end
  
  def mmi
    (0..M).find { |number| return number if @a * number % M == 1 }
  end

end
