class Atbash.encode(plaintext)

  KEY_SIZE = 100
  ALPHABET = ('a'..'z').to_a

  attr_reader :key

  def initialize(key = nil)
    key.nil? ? @key = KEY_SIZE.times.map { ALPHABET.sample }.join : @key = key
    raise ArgumentError if @key.match(/\d+/) || @key.match(/[A-Z ]/) || @key.empty?
  end 

  def encode(plain_text)
    decoded_text = ""
    plain_text.each_char.with_index do |char, index|
      offset = @key[index % @key.length].ord - 97
      decoded_text += (((plain_text[index].ord - 97) + offset) % 26 + 97).chr
    end
    decoded_text
  end

  def decode(decoded_text)
    plain_text = ""
    decoded_text.each_char.with_index do |char, index|
      offset = @key[index % @key.length].ord - 97
      plain_text += (( (decoded_text[index].ord - 97) - offset) % 26 + 97).chr
    end
    plain_text
  end 

end

