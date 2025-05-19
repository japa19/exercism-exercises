class Crypto
  
  def initialize(plaintext)
    @plaintext = plaintext.downcase.gsub(/[[:space:][:punct:]]/, '')
  end

  def ciphertext
    return @plaintext if @plaintext == ""
    c = Math.sqrt(@plaintext.length).ceil
    r = (c - 1..c).find { |rows| rows * c >= @plaintext.length }
    rectangle = @plaintext.chars.each_slice(c).map(&:join)
    cipher = []
    (0..c-1).each do |i|
      cipher[i] = ''
      (0..r-1).each do |j|
        cipher[i] += rectangle[j][i].nil? ? ' ' : rectangle[j][i]
      end
    end
    cipher.join(' ')
  end

end