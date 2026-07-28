import HautevilleHouse.CapacityTheoryGeneralizationsCanonicalLaneLean.CoreLemmas

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

def ConstrainedCapacityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_capacity_endgame (A : AdmissibleClass) :
    ConstrainedCapacityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse