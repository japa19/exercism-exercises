# frozen_string_literal: true

class RotationalCipher
  def self.rotate(plain, rotation)
    encrypted = []

    plain.chars.each do |char|
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
