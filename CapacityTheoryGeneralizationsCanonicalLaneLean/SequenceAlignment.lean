import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure SequenceAlignmentPackage where
  substitutionMatrix : Type u
  gapPenalty : Type v
  alignmentScore : Type w
  optimalAlignmentFound : Prop
  scoreSignificant : Prop

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.optimalAlignmentFound ∧ S.scoreSignificant

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  optimalAlignmentFoundClosed : S.optimalAlignmentFound
  scoreSignificantClosed : S.scoreSignificant

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S :=
  And.intro E.optimalAlignmentFoundClosed E.scoreSignificantClosed

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse
