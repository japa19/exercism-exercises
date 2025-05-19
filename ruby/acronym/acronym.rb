class Acronym
  
  def self.abbreviate(phrase)
    phrase.scan(/\b\w/).join.upcase
    # phrase.gsub(/[!.,?]/, "")
    #       .split(/[\s-]/)
    #       .map{ |word| word[0].upcase unless word.empty? }.compact
    #       .join
  end

end
