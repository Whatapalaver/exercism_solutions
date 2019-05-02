class Complement
  def self.of_dna(dna_strand)
    pairs = { 'A' => 'U', 'G' => 'C', 'T' => 'A', 'C' => 'G' }
    complement = []
    dna_strand.each_char { |nucleotide| complement << pairs.fetch(nucleotide, '') }
    complement.join('')
  end
end
