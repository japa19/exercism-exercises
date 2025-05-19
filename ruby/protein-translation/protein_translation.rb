
class InvalidCodonError < StandardError ;  end

module Translation
  
  CODON = {
    "AUG" => "Methionine",
    "UUU" => "Phenylalanine",
    "UUC" => "Phenylalanine",
    "UUA" => "Leucine",
    "UUG" => "Leucine",
    "UCU" => "Serine",
    "UCC" => "Serine",
    "UCA" => "Serine",
    "UCG" => "Serine",
    "UAU" => "Tyrosine",
    "UAC" => "Tyrosine",
    "UGU" => "Cysteine",
    "UGC" => "Cysteine",
    "UGG" => "Tryptophan",
    "UAA" => "STOP",
    "UAG" => "STOP",
    "UGA" => "STOP"
  }

  def self.of_rna(strand = [])
    protein = []
    c = strand.scan(/.{1,3}/)
    protein = c.take_while { |codon| CODON[codon] != "STOP" }
                .map { |codon| CODON[codon].nil? ? (raise InvalidCodonError.new("InvalidCodonError")) : CODON[codon] }
    protein
  end

end
