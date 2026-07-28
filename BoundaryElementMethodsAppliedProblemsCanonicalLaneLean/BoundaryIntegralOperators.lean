import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure BoundaryIntegralPackage where
  singleLayerOperator : Prop
  doubleLayerOperator : Prop
  adjointDoubleLayerOperator : Prop
  hypersingularOperator : Prop

structure BoundaryIntegralEvidence (P : BoundaryIntegralPackage) where
  singleLayerOperatorClosed : P.singleLayerOperator
  doubleLayerOperatorClosed : P.doubleLayerOperator
  adjointDoubleLayerOperatorClosed : P.adjointDoubleLayerOperator
  hypersingularOperatorClosed : P.hypersingularOperator

def BoundaryIntegralClosed (P : BoundaryIntegralPackage) : Prop :=
  P.singleLayerOperator ∧ P.doubleLayerOperator ∧ P.adjointDoubleLayerOperator ∧ P.hypersingularOperator

theorem boundary_integral_closed_from_evidence (P : BoundaryIntegralPackage) (E : BoundaryIntegralEvidence P) :
    BoundaryIntegralClosed P := by
  exact And.intro E.singleLayerOperatorClosed
    (And.intro E.doubleLayerOperatorClosed
      (And.intro E.adjointDoubleLayerOperatorClosed E.hypersingularOperatorClosed))

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse