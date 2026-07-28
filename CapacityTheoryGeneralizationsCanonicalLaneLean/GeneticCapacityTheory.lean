import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CapacityTheoryGeneralizationsCanonicalLaneLean.HardyWeinbergEquilibrium
import HautevilleHouse.CapacityTheoryGeneralizationsCanonicalLaneLean.LinkageDisequilibrium
import HautevilleHouse.CapacityTheoryGeneralizationsCanonicalLaneLean.SequenceAlignment
import HautevilleHouse.CapacityTheoryGeneralizationsCanonicalLaneLean.Phylogenetics
import HautevilleHouse.CapacityTheoryGeneralizationsCanonicalLaneLean.PopulationGenetics

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure GeneticCapacityTheoryPackage where
  hardyWeinberg : HardyWeinbergPackage
  linkageDisequilibrium : LinkageDisequilibriumPackage
  sequenceAlignment : SequenceAlignmentPackage
  phylogenetics : PhylogeneticsPackage
  populationGenetics : PopulationGeneticsPackage

structure GeneticCapacityTheoryEvidence (G : GeneticCapacityTheoryPackage) where
  hardyWeinbergEvidence : HardyWeinbergEvidence G.hardyWeinberg
  linkageDisequilibriumEvidence : LinkageDisequilibriumEvidence G.linkageDisequilibrium
  sequenceAlignmentEvidence : SequenceAlignmentEvidence G.sequenceAlignment
  phylogeneticsEvidence : PhylogeneticsEvidence G.phylogenetics
  populationGeneticsEvidence : PopulationGeneticsEvidence G.populationGenetics

def GeneticCapacityTheoryClosed (G : GeneticCapacityTheoryPackage) : Prop :=
  HardyWeinbergClosed G.hardyWeinberg ∧
  LinkageDisequilibriumClosed G.linkageDisequilibrium ∧
  SequenceAlignmentClosed G.sequenceAlignment ∧
  PhylogeneticsClosed G.phylogenetics ∧
  PopulationGeneticsClosed G.populationGenetics

theorem genetic_capacity_theory_closed_from_evidence (G : GeneticCapacityTheoryPackage) (E : GeneticCapacityTheoryEvidence G) : GeneticCapacityTheoryClosed G :=
  And.intro
    (hardy_weinberg_closed_from_evidence G.hardyWeinberg E.hardyWeinbergEvidence)
    (And.intro
      (linkage_disequilibrium_closed_from_evidence G.linkageDisequilibrium E.linkageDisequilibriumEvidence)
      (And.intro
        (sequence_alignment_closed_from_evidence G.sequenceAlignment E.sequenceAlignmentEvidence)
        (And.intro
          (phylogenetics_closed_from_evidence G.phylogenetics E.phylogeneticsEvidence)
          (population_genetics_closed_from_evidence G.populationGenetics E.populationGeneticsEvidence))))

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse