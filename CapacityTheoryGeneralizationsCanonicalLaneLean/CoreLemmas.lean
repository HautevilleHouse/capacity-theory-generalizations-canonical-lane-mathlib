import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure AdmissibleClass where
  object : CapacityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure CapacityAdmittedObject where
  populationType : Type
  lociModel : Prop
  equilibriumCondition : Prop
  conclusion : equilibriumCondition

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.equilibriumCondition

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse