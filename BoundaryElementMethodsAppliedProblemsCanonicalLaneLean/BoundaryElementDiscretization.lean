import HautevilleHouse.BoundaryElementMethodsAppliedProblemsCanonicalLaneLean.IntegralEquationFormulation

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure DiscretizationPackage {G : IntegralEquationPackage} where
  approximationSpace : Type
  basisFunctions : Type
  collocationPoints : Type
  convergenceOrder : Prop
  stability : Prop

structure DiscretizationEvidence {G : IntegralEquationPackage} (D : DiscretizationPackage G) where
  convergenceOrderClosed : D.convergenceOrder
  stabilityClosed : D.stability

def DiscretizationClosed {G : IntegralEquationPackage} (D : DiscretizationPackage G) : Prop :=
  D.convergenceOrder ∧ D.stability

theorem discretization_closed_from_evidence {G : IntegralEquationPackage} (D : DiscretizationPackage G) (E : DiscretizationEvidence D) :
    DiscretizationClosed D := by
  exact And.intro E.convergenceOrderClosed E.stabilityClosed

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse