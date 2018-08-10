// Codon                 | Protein
// :---                  | :---
// AUG                   | Methionine
// UUU, UUC              | Phenylalanine
// UUA, UUG              | Leucine
// UCU, UCC, UCA, UCG    | Serine
// UAU, UAC              | Tyrosine
// UGU, UGC              | Cysteine
// UGG                   | Tryptophan
// UAA, UAG, UGA         | STOP


function translate(rna) {
  var rnaArray = [];
  if (rna == null) {return rnaArray;}
  rnaArray.push(rna);
  return rnaArray;
}

module.exports = translate;