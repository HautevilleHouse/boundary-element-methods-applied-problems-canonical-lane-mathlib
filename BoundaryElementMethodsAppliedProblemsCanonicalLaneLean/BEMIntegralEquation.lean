import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryElementMethodsAppliedProblems.BEMAdmissibleObject

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblems

structure BEMIntegralEquationPackage where
  fundamentalSolution : Type u
  boundaryIntegralOperator : Type v
  potentialTheory : Prop
  uniquenessConditions : Prop
  regularityProperties : Prop

structure BEMIntegralEquationEvidence (P : BEMIntegralEquationPackage) where
  potentialTheoryClosed : P.potentialTheory
  uniquenessConditionsClosed : P.uniquenessConditions
  regularityPropertiesClosed : P.regularityProperties

def BEMIntegralEquationClosed (P : BEMIntegralEquationPackage) : Prop :=
  P.potentialTheory ∧ P.uniquenessConditions ∧ P.regularityProperties

theorem bem_integral_equation_closed_from_evidence
    (P : BEMIntegralEquationPackage) (E : BEMIntegralEquationEvidence P) :
    BEMIntegralEquationClosed P := by
  exact And.intro E.potentialTheoryClosed
    (And.intro E.uniquenessConditionsClosed E.regularityPropertiesClosed)

end BoundaryElementMethodsAppliedProblems
end HautevilleHouse