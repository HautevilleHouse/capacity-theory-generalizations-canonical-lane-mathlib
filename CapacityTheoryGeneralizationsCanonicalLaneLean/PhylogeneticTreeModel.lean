import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxonSet : Type u
  branchLengths : taxonSet → taxonSet → ℝ
  treeTopology : Prop
  rootLocation : Prop
  rateHeterogeneityModel : Prop
  likelihoodComputed : Prop
  bootstrapSupport : ℝ

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  treeTopologyClosed : P.treeTopology
  rootLocationClosed : P.rootLocation
  rateHeterogeneityModelClosed : P.rateHeterogeneityModel
  likelihoodComputedClosed : P.likelihoodComputed

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.treeTopology ∧ P.rootLocation ∧ P.rateHeterogeneityModel ∧ P.likelihoodComputed

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.treeTopologyClosed
    (And.intro E.rootLocationClosed
      (And.intro E.rateHeterogeneityModelClosed E.likelihoodComputedClosed))

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse