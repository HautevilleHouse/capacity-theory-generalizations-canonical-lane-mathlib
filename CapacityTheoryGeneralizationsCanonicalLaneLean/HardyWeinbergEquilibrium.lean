import HautevilleHouse.CapacityTheoryGeneralizationsCanonicalLaneLean.CoreLemmas

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure HardyWeinbergPackage where
  populationGenotypeFrequencies : Prop
  alleleFrequenciesStable : Prop
  randomMatingAssumption : Prop
  noEvolutionaryForces : Prop
  equilibriumReached : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  populationGenotypeFrequenciesClosed : H.populationGenotypeFrequencies
  alleleFrequenciesStableClosed : H.alleleFrequenciesStable
  randomMatingAssumptionClosed : H.randomMatingAssumption
  noEvolutionaryForcesClosed : H.noEvolutionaryForces
  equilibriumReachedClosed : H.equilibriumReached

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.populationGenotypeFrequencies ∧ H.alleleFrequenciesStable ∧
  H.randomMatingAssumption ∧ H.noEvolutionaryForces ∧ H.equilibriumReached

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage)
    (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.populationGenotypeFrequenciesClosed
    (And.intro E.alleleFrequenciesStableClosed
      (And.intro E.randomMatingAssumptionClosed
        (And.intro E.noEvolutionaryForcesClosed E.equilibriumReachedClosed)))

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse