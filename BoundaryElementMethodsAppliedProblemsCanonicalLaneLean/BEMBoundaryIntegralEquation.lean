import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryElementMethodsAppliedProblemsCanonicalLaneLean.BEMAdmissibleObject

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure BoundaryIntegralEquationPackage (P : BEMProblem) where
  wellPosed : Prop
  coercivity : Prop
  compactness : Prop
  galerkinWellPosed : Prop

structure BoundaryIntegralEquationEvidence (P : BEMProblem) (B : BoundaryIntegralEquationPackage P) where
  wellPosedClosed : B.wellPosed
  coercivityClosed : B.coercivity
  compactnessClosed : B.compactness
  galerkinWellPosedClosed : B.galerkinWellPosed

def BoundaryIntegralEquationClosed (P : BEMProblem) (B : BoundaryIntegralEquationPackage P) : Prop :=
  B.wellPosed ∧ B.coercivity ∧ B.compactness ∧ B.galerkinWellPosed

theorem boundary_integral_equation_closed_from_evidence (P : BEMProblem) (B : BoundaryIntegralEquationPackage P)
    (E : BoundaryIntegralEquationEvidence P B) : BoundaryIntegralEquationClosed P B := by
  exact And.intro E.wellPosedClosed (And.intro E.coercivityClosed (And.intro E.compactnessClosed E.galerkinWellPosedClosed))

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse