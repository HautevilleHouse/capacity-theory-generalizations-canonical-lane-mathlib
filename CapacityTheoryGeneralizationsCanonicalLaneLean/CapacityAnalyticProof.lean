import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CapacityTheoryGeneralizationsCanonicalLaneLean.HardyWeinbergEquilibrium

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure HardyWeinbergAnalyticCertificate (H : HardyWeinbergEquilibriumPackage) where
  alleleFrequencies : Prop
  expectedGenotypeFrequencies : Prop
  chiSquaredStatistic : Prop
  pValue : Prop
  equilibriumAssumption : Prop
  alleleFrequenciesClosed : alleleFrequencies
  expectedGenotypeFrequenciesClosed : expectedGenotypeFrequencies
  chiSquaredStatisticClosed : chiSquaredStatistic
  pValueClosed : pValue
  equilibriumAssumptionClosed : equilibriumAssumption
  hwEvidence : HardyWeinbergEquilibriumEvidence H

def HardyWeinbergAnalyticCertificateClosed {H : HardyWeinbergEquilibriumPackage}
    (C : HardyWeinbergAnalyticCertificate H) : Prop :=
  C.alleleFrequencies ∧ C.expectedGenotypeFrequencies ∧ C.chiSquaredStatistic ∧
  C.pValue ∧ C.equilibriumAssumption ∧ HardyWeinbergEquilibriumClosed H

theorem hardy_weinberg_analytic_certificate_closed
    {H : HardyWeinbergEquilibriumPackage} (C : HardyWeinbergAnalyticCertificate H) :
    HardyWeinbergAnalyticCertificateClosed C := by
  exact And.intro C.alleleFrequenciesClosed
    (And.intro C.expectedGenotypeFrequenciesClosed
      (And.intro C.chiSquaredStatisticClosed
        (And.intro C.pValueClosed
          (And.intro C.equilibriumAssumptionClosed
            (hardy_weinberg_equilibrium_closed_from_evidence H C.hwEvidence)))))

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse