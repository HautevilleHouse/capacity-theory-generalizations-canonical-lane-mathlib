import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequenceType : Type u
  alignmentScoringMatrix : sequenceType → sequenceType → ℝ
  gapPenalty : ℝ
  optimalAlignmentScore : ℝ
  alignmentComputed : Prop
  evolutionaryModelAssumed : Prop
  gapTreatmentDefined : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  alignmentComputedClosed : S.alignmentComputed
  evolutionaryModelAssumedClosed : S.evolutionaryModelAssumed
  gapTreatmentDefinedClosed : S.gapTreatmentDefined

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.alignmentComputed ∧ S.evolutionaryModelAssumed ∧ S.gapTreatmentDefined

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) :
    SequenceAlignmentClosed S := by
  exact And.intro E.alignmentComputedClosed
    (And.intro E.evolutionaryModelAssumedClosed E.gapTreatmentDefinedClosed)

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse