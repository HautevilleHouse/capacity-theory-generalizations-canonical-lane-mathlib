import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure PhylogeneticsPackage where
  treeStructure : Type u
  evolutionModel : Type v
  likelihoodMaximized : Prop
  bootstrapSupport : Prop

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.likelihoodMaximized ∧ P.bootstrapSupport

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  likelihoodMaximizedClosed : P.likelihoodMaximized
  bootstrapSupportClosed : P.bootstrapSupport

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P :=
  And.intro E.likelihoodMaximizedClosed E.bootstrapSupportClosed

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse
