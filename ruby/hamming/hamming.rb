class Hamming

  def self.compute(seq1, seq2)
    raise ArgumentError, 'Strings not equal length' if seq1.length != seq2.length
    a_seq1 = seq1.chars
    a_seq2 = seq2.chars
    a_seq1.zip(a_seq2).count { |a, b| a != b }
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
