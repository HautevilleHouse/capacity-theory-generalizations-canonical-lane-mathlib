import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure PopulationGeneticsPackage where
  alleleFrequencyTrajectory : Type u
  selectionCoefficient : ℝ
  effectivePopulationSize : ℕ
  fixProbability : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CapacityWitnessClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedPopulationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_population_endgame (A : AdmissibleClass) :
    ConstrainedPopulationClosure A := by
  exact And.intro (by
    exact A.object.conclusion)
    (by
    exact A.gateWitness)

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse