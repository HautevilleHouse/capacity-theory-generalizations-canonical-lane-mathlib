import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure GeneticSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedGeneticObject where
  space : GeneticSpace
  hardyWeinbergEquilibrium : Prop
  linkageEquilibrium : Prop
  sequenceAlignmentScore : Prop
  capacityAchieved : Prop
  conclusion : capacityAchieved

structure GeneticEndgameState where
  object : AdmittedGeneticObject

def GeneticWitnessClosed (O : AdmittedGeneticObject) : Prop :=
  O.capacityAchieved

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse