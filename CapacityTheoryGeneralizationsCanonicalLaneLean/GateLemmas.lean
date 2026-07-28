import CapacityTheoryGeneralizationsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse