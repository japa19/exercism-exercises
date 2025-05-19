# frozen_string_literal: true

class Nucleotide
  def initialize(sequence)
    @sequence = sequence
  end

  def self.from_dna(sequence)
    raise ArgumentError unless sequence.match?(/\A[ATCG]*\z/)

    new(sequence)
  end

  def count(nucleotide)
    @sequence.count(nucleotide)
  end

  def histogram
    h = { 'A' => 0, 'T' => 0, 'G' => 0, 'C' => 0 }
    @sequence.each_char { |c| h[c] += 1 }
    h
  end
end
