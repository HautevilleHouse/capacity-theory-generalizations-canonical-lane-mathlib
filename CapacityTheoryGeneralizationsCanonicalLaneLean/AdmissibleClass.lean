import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure CapacityAdmittedObject where
  object : Type u
  equilibriumReached : Prop
  inferenceConverged : Prop
  conclusion : equilibriumReached ∧ inferenceConverged

structure AdmissibleClass where
  object : CapacityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.equilibriumReached ∧ A.object.inferenceConverged) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse
