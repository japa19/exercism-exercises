# frozen_string_literal: true

class Atbash
  ALPHABET = ('a'..'z').to_a.join

  def self.encode(plaintext)
    plaintext.downcase.gsub(/\W/, '').tr(ALPHABET, ALPHABET.reverse).scan(/.{1,5}/).join(' ')
  end

  def self.decode(ciphertext)
    ciphertext.gsub(/\W/, '').tr(ALPHABET, ALPHABET.reverse)
  end
end
