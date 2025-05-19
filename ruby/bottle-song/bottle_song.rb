module BottleSong
  
  def self.digit_to_name(digit)
    digit_names = {
      0 => "no",
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten"
    }
    digit_names[digit]
  end

  def self.verse(bottles)
    <<~VERSE
      #{digit_to_name(bottles).capitalize} green bottle#{bottles == 1 ? '' : 's'} hanging on the wall,
      #{digit_to_name(bottles).capitalize} green bottle#{bottles == 1 ? '' : 's'} hanging on the wall,
      And if one green bottle should accidentally fall,
      There'll be #{digit_to_name(bottles - 1)} green bottle#{bottles - 1 == 1 ? '' : 's'} hanging on the wall.
    VERSE
  end

  def self.recite(start_bottles, verse_count)
    output = ""
    start_bottles.downto(start_bottles - verse_count + 1) do |i|
      output << verse(i)
    end
    output
  end

end

