class RotationalCipher
  
  def self.rotate(plain, rotation)
    encrypted = []

    for char in plain.chars
      if char =~ /[a-zA-Z]/
       base = char.ord < 91 ? 'A'.ord : 'a'.ord
       encrypted << ((char.ord - base + rotation) % 26 + base).chr
      else
        encrypted << char
      end
    end
    encrypted.join
  end

end