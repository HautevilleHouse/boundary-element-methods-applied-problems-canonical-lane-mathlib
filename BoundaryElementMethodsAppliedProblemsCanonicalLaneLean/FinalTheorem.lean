import HautevilleHouse.BoundaryElementMethodsAppliedProblemsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

def ConstrainedBoundaryElementClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_boundary_element_endgame (A : AdmissibleClass) :
    ConstrainedBoundaryElementClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse