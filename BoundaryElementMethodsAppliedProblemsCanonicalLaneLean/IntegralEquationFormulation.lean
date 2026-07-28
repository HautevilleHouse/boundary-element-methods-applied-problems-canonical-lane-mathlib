import HautevilleHouse.BoundaryElementMethodsAppliedProblemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure IntegralEquationPackage where
  boundaryDomain : Type
  kernel : Type
  integralOperator : Type
  wellPosedness : Prop
  uniqueSolvability : Prop

structure IntegralEquationEvidence (P : IntegralEquationPackage) where
  wellPosednessClosed : P.wellPosedness
  uniqueSolvabilityClosed : P.uniqueSolvability

def IntegralEquationClosed (P : IntegralEquationPackage) : Prop :=
  P.wellPosedness ∧ P.uniqueSolvability

theorem integral_equation_closed_from_evidence (P : IntegralEquationPackage) (E : IntegralEquationEvidence P) :
    IntegralEquationClosed P := by
  exact And.intro E.wellPosednessClosed E.uniqueSolvabilityClosed

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse