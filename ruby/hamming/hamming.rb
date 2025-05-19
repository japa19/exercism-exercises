module Hamming
  
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length

    error = 0
    strand1.chars.zip(strand2.chars).count do |char1, char2|
      if char1 != char2 then 
        error += 1 
      end
    end
    error
  end

end

p Hamming.compute("A", "B")