import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CapacityTheoryGeneralizationsCanonicalLaneLean.HardyWeinbergEquilibrium
import HautevilleHouse.CapacityTheoryGeneralizationsCanonicalLaneLean.LinkageAnalysisModel
import HautevilleHouse.CapacityTheoryGeneralizationsCanonicalLaneLean.SequenceAlignmentModel
import HautevilleHouse.CapacityTheoryGeneralizationsCanonicalLaneLean.PhylogeneticTreeModel

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure CapacityGeneralizationsFoundation where
  hardyWeinberg : HardyWeinbergPackage
  hardyWeinbergEvidence : HardyWeinbergEvidence hardyWeinberg
  linkageAnalysis : LinkageAnalysisPackage
  linkageAnalysisEvidence : LinkageAnalysisEvidence linkageAnalysis
  sequenceAlignment : SequenceAlignmentPackage
  sequenceAlignmentEvidence : SequenceAlignmentEvidence sequenceAlignment
  phylogenetics : PhylogeneticTreePackage
  phylogeneticsEvidence : PhylogeneticTreeEvidence phylogenetics

def CapacityGeneralizationsFoundationClosed (F : CapacityGeneralizationsFoundation) : Prop :=
  HardyWeinbergClosed F.hardyWeinberg ∧ LinkageAnalysisClosed F.linkageAnalysis ∧
  SequenceAlignmentClosed F.sequenceAlignment ∧ PhylogeneticTreeClosed F.phylogenetics

theorem capacity_generalizations_foundation_closed_from_evidence (F : CapacityGeneralizationsFoundation) :
    CapacityGeneralizationsFoundationClosed F := by
  exact And.intro (hardy_weinberg_closed_from_evidence F.hardyWeinberg F.hardyWeinbergEvidence)
    (And.intro (linkage_analysis_closed_from_evidence F.linkageAnalysis F.linkageAnalysisEvidence)
      (And.intro (sequence_alignment_closed_from_evidence F.sequenceAlignment F.sequenceAlignmentEvidence)
        (phylogenetic_tree_closed_from_evidence F.phylogenetics F.phylogeneticsEvidence)))

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse