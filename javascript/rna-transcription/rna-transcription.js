var mapping = {
  G: 'C',
  C: 'G',
  T: 'A',
  A: 'U'
};

var DnaTranscriber = function DnaTranscriber(dna) {
  this.strand = dna;
};

function translate(nucleotide) {
  return mapping[nucleotide];
}

DnaTranscriber.prototype.toRna = function toRNA(strand) {
  if (/[^GCTA]+/m.test(strand)) {
    throw new Error("Invalid input");
  };
  var strandArray = strand.split('');
  var dnaArray = strandArray.map( nucleotide => translate(nucleotide) )
  return dnaArray.join('');
};

module.exports = DnaTranscriber;
