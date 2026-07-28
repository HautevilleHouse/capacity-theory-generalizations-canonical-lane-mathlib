import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure PhylogeneticsPackage where
  sequenceData : Type u
  substitutionModel : Type v
  treeTopology : Type w
  maximumLikelihood : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CapacityWitnessClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedPhylogeneticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_phylogenetics_endgame (A : AdmissibleClass) :
    ConstrainedPhylogeneticsClosure A := by
  exact And.intro (by
    exact A.object.conclusion)
    (by
    exact A.gateWitness)

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse