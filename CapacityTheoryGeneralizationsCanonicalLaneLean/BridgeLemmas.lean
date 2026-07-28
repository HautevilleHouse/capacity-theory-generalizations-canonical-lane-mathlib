import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CapacityTheoryGeneralizationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.equilibriumReached ∧ A.object.inferenceConverged

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse
