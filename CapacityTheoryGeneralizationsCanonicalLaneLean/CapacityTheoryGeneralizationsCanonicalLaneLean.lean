import canonicalLaneMathlib.AdmissibleClass
import CapacityTheoryGeneralizationsCanonicalLaneLean.HardyWeinbergEquilibrium
import CapacityTheoryGeneralizationsCanonicalLaneLean.LinkageAnalysis
import CapacityTheoryGeneralizationsCanonicalLaneLean.SequenceAlignment
import CapacityTheoryGeneralizationsCanonicalLaneLean.Phylogenetics
import CapacityTheoryGeneralizationsCanonicalLaneLean.PopulationGenetics

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

-- Root module for Capacity Theory Generalizations Canonical Lane Lean

def CapacityWitnessClosed (O : CapacityAdmittedObject) : Prop :=
  O.invariant

structure CapacityAdmittedObject where
  data : Type u
  invariant : Prop
  conclusion : invariant

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse