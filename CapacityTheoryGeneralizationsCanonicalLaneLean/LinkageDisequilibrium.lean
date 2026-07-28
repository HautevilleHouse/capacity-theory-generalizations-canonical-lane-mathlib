import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure LinkageDisequilibriumPackage where
  loci : Nat
  haplotypeFrequencies : Array Float
  dPrime : Float
  rSquared : Float
  significantLD : Prop

structure LinkageDisequilibriumEvidence (L : LinkageDisequilibriumPackage) where
  dPrimeThreshold : Prop
  rSquaredThreshold : Prop
  significantLDClosed : L.significantLD

def LinkageDisequilibriumClosed (L : LinkageDisequilibriumPackage) : Prop :=
  L.significantLD

theorem linkage_disequilibrium_closed_from_evidence (L : LinkageDisequilibriumPackage) (E : LinkageDisequilibriumEvidence L) : LinkageDisequilibriumClosed L :=
  E.significantLDClosed

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse