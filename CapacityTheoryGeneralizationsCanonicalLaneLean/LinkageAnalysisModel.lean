import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure LinkageAnalysisPackage where
  markerSet : Type u
  recombinationFraction : markerSet → markerSet → ℝ
  lodScoreThreshold : ℝ
  linkagePresent : Prop
  genotypeDataAvailable : Prop
  familyStructureDefined : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  linkagePresentClosed : L.linkagePresent
  genotypeDataAvailableClosed : L.genotypeDataAvailable
  familyStructureDefinedClosed : L.familyStructureDefined

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.linkagePresent ∧ L.genotypeDataAvailable ∧ L.familyStructureDefined

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) :
    LinkageAnalysisClosed L := by
  exact And.intro E.linkagePresentClosed
    (And.intro E.genotypeDataAvailableClosed E.familyStructureDefinedClosed)

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse