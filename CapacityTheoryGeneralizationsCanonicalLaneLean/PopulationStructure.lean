import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure PopulationStructurePackage where
  fStatistics : Type u
  admixtureProportions : Type v
  populationSubdivision : Prop
  geneFlowModel : Prop

def PopulationStructureClosed (P : PopulationStructurePackage) : Prop :=
  P.populationSubdivision ∧ P.geneFlowModel

structure PopulationStructureEvidence (P : PopulationStructurePackage) where
  populationSubdivisionClosed : P.populationSubdivision
  geneFlowModelClosed : P.geneFlowModel

theorem population_structure_closed_from_evidence (P : PopulationStructurePackage) (E : PopulationStructureEvidence P) : PopulationStructureClosed P :=
  And.intro E.populationSubdivisionClosed E.geneFlowModelClosed

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse
