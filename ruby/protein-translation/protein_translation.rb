# frozen_string_literal: true

class InvalidCodonError < StandardError; end

module Translation
  CODON = {
    'AUG' => 'Methionine',
    'UUU' => 'Phenylalanine',
    'UUC' => 'Phenylalanine',
    'UUA' => 'Leucine',
    'UUG' => 'Leucine',
    'UCU' => 'Serine',
    'UCC' => 'Serine',
    'UCA' => 'Serine',
    'UCG' => 'Serine',
    'UAU' => 'Tyrosine',
    'UAC' => 'Tyrosine',
    'UGU' => 'Cysteine',
    'UGC' => 'Cysteine',
    'UGG' => 'Tryptophan',
    'UAA' => 'STOP',
    'UAG' => 'STOP',
    'UGA' => 'STOP'
  }.freeze

  def self.of_rna(strand = [])
    c = strand.scan(/.{1,3}/)
    c.take_while { |codon| CODON[codon] != 'STOP' }
     .map { |codon| CODON[codon].nil? ? (raise InvalidCodonError, 'InvalidCodonError') : CODON[codon] }
  end
end
