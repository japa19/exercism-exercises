# frozen_string_literal: true

class Phrase
  def initialize(phrase)
    @words = phrase.gsub(/[&@$%^]/, ' ')
                   .scan(/\b[\w']+\b/)
                   .map(&:downcase)
  end

  def word_count
    count = Hash.new(0)
    @words.each do |word|
      count[word] += 1
    end
    count
  end
end

phrase = Phrase.new('word')
p phrase.word_count
