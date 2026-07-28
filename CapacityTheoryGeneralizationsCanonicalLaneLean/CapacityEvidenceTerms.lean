import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CapacityTheoryGeneralizationsCanonicalLaneLean.HardyWeinbergEquilibrium

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure HardyWeinbergAnalyticEvidenceTerms (H : HardyWeinbergEquilibriumPackage) where
  equilibriumCondition : H.equilibriumCondition
  genotypeDistribution : H.genotypeDistribution
  chiSquaredTest : H.chiSquaredTest
  hwClosed : HardyWeinbergEquilibriumClosed H

def HardyWeinbergEquilibriumPackage.evidenceTerms
    (H : HardyWeinbergEquilibriumPackage) (E : HardyWeinbergEquilibriumEvidence H) :
    HardyWeinbergAnalyticEvidenceTerms H := {
  equilibriumCondition := E.equilibriumConditionClosed
  genotypeDistribution := E.genotypeDistributionClosed
  chiSquaredTest := E.chiSquaredTestClosed
  hwClosed := hardy_weinberg_equilibrium_closed_from_evidence H E
}

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse