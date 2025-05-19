module TwelveDays

  PRESENTS = [
    "Partridge in a Pear Tree.",
    "Turtle Doves, ",
    "French Hens, ",
    "Calling Birds, ",
    "Gold Rings, ",
    "Geese-a-Laying, ",
    "Swans-a-Swimming, ",
    "Maids-a-Milking, ",
    "Ladies Dancing, ",
    "Lords-a-Leaping, ",
    "Pipers Piping, ",
    "Drummers Drumming, "
  ]

  def self.song
    output = ""
    PRESENTS.each_with_index do |present, i|
      output += "On the #{number_to_ordinal(i+1)} day of Christmas my true love gave to me: #{some_presents(i)}"
      output += (i == PRESENTS.size - 1) ? "\n" : "\n\n"
    end
    output

  end

  private

  def self.some_presents(i)
    verse = ""
    i.downto(0) do |j| 
      (j == 0 && j != i) ? verse += 'and ' : ''
      verse +=  "#{number_to_word(j+1)} #{PRESENTS[j]}"
    end
    verse
  end

  def self.number_to_ordinal(number)
    ordinal_words = {
      1 => "first",
      2 => "second",
      3 => "third",
      4 => "fourth",
      5 => "fifth",
      6 => "sixth",
      7 => "seventh",
      8 => "eighth",
      9 => "ninth",
      10 => "tenth",
      11 => "eleventh",
      12 => "twelfth"
    }
    ordinal_words[number]
  end

  def self.number_to_word(number)
    number_words = {
      1 => "a",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten",
      11 => "eleven",
      12 => "twelve"
    }
    number_words[number]
  end

end
