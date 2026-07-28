import HautevilleHouse.CapacityTheoryGeneralizationsCanonicalLaneLean.CoreLemmas

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure LinkageAnalysisPackage where
  recombinationFraction : Prop
  lodScoreSignificant : Prop
  markerOrderKnown : Prop
  linkagePhaseConsistent : Prop
  geneticMapConstructed : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  recombinationFractionClosed : L.recombinationFraction
  lodScoreSignificantClosed : L.lodScoreSignificant
  markerOrderKnownClosed : L.markerOrderKnown
  linkagePhaseConsistentClosed : L.linkagePhaseConsistent
  geneticMapConstructedClosed : L.geneticMapConstructed

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.recombinationFraction ∧ L.lodScoreSignificant ∧
  L.markerOrderKnown ∧ L.linkagePhaseConsistent ∧ L.geneticMapConstructed

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.recombinationFractionClosed
    (And.intro E.lodScoreSignificantClosed
      (And.intro E.markerOrderKnownClosed
        (And.intro E.linkagePhaseConsistentClosed E.geneticMapConstructedClosed)))

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse