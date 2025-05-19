class Pangram
  
  def self.pangram?(phrase)
    letters = phrase.downcase
                  .scan(/[a-z]/)
                  .uniq
    letters.length == 26
  end
end