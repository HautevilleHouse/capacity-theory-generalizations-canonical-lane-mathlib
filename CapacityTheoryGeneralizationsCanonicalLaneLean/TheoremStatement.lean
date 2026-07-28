import CapacityTheoryGeneralizationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CapacityTheoryGeneralizationsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  capacityConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := "capacity-theory-generalizations-canonical-lane"
    theoremName := "Capacity Theory Generalizations"
    theoremObject := "Hardy-Weinberg equilibrium, linkage analysis, sequence alignment, phylogenetics"
    classicalBoundary := "Unrestricted classical closure remains carried"
    capacityConstrainedStatement := "Constrained theorem certificate internalized through bridge and gate"
    certificateLane := "capacity_constrained"
    carriedRemainder := "Classical source boundary carried by formalization"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "capacity-theory-generalizations-canonical-lane" :=
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "capacity_constrained" :=
  rfl

end CapacityTheoryGeneralizationsCanonicalLaneLean
end HautevilleHouse