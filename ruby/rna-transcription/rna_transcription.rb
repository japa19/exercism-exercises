class Complement

  def self.of_dna(nucleotide)
    nucleotide.tr("GTCA","CGAU")
  end

end

 p Complement.of_dna('A')
 p Complement.of_dna('ACGTGGTCTTAA')