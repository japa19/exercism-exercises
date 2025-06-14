# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'rna_transcription'

class RnaTranscriptionTest < Minitest::Test
  def test_empty_rna_sequence
    # skip
    assert_equal '', Complement.of_dna('')
  end

  def test_rna_complement_of_cytosine_is_guanine
    skip
    assert_equal 'G', Complement.of_dna('C')
  end

  def test_rna_complement_of_guanine_is_cytosine
    skip
    assert_equal 'C', Complement.of_dna('G')
  end

  def test_rna_complement_of_thymine_is_adenine
    skip
    assert_equal 'A', Complement.of_dna('T')
  end

  def test_rna_complement_of_adenine_is_uracil
    skip
    assert_equal 'U', Complement.of_dna('A')
  end

  def test_rna_complement
    skip
    assert_equal 'UGCACCAGAAUU', Complement.of_dna('ACGTGGTCTTAA')
  end
end
