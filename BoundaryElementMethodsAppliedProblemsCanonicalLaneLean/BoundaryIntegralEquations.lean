import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure BoundaryIntegralEquationsPackage where
  equationType : Type u
  wellPosedness : Prop
  equivalenceToPDE : Prop
  stability : Prop
  conditioning : Prop

structure BoundaryIntegralEquationsEvidence (P : BoundaryIntegralEquationsPackage) where
  equationTypeClosed : Type u
  wellPosednessClosed : P.wellPosedness
  equivalenceToPDEClosed : P.equivalenceToPDE
  stabilityClosed : P.stability
  conditioningClosed : P.conditioning

def BoundaryIntegralEquationsClosed (P : BoundaryIntegralEquationsPackage) : Prop :=
  P.wellPosedness ∧ P.equivalenceToPDE ∧ P.stability ∧ P.conditioning

theorem boundary_integral_equations_closed_from_evidence
    (P : BoundaryIntegralEquationsPackage) (E : BoundaryIntegralEquationsEvidence P) :
    BoundaryIntegralEquationsClosed P := by
  exact And.intro E.wellPosednessClosed (And.intro E.equivalenceToPDEClosed (And.intro E.stabilityClosed E.conditioningClosed))

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse