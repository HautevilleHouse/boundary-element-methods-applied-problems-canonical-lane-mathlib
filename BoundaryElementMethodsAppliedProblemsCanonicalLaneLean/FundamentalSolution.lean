import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure FundamentalSolutionPackage where
  dimension : ℕ
  pdeType : String
  fundamentalSolutionExists : Prop
  singularityType : String
  fundamentalSolutionRegular : Prop

structure FundamentalSolutionEvidence (F : FundamentalSolutionPackage) where
  fundamentalSolutionExistsClosed : F.fundamentalSolutionExists
  fundamentalSolutionRegularClosed : F.fundamentalSolutionRegular

def FundamentalSolutionClosed (F : FundamentalSolutionPackage) : Prop :=
  F.fundamentalSolutionExists ∧ F.fundamentalSolutionRegular

theorem fundamental_solution_closed_from_evidence (F : FundamentalSolutionPackage) (E : FundamentalSolutionEvidence F) : FundamentalSolutionClosed F := by
  exact And.intro E.fundamentalSolutionExistsClosed E.fundamentalSolutionRegularClosed

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse