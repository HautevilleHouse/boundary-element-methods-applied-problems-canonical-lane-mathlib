import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure AdaptiveMeshingPackage where
  refinementCriterion : Prop
  meshRegularity : Prop
  hangingNodes : Prop
  iterationConvergence : Prop
  optimalComplexity : Prop

structure AdaptiveMeshingEvidence (P : AdaptiveMeshingPackage) where
  refinementCriterionClosed : P.refinementCriterion
  meshRegularityClosed : P.meshRegularity
  hangingNodesClosed : P.hangingNodes
  iterationConvergenceClosed : P.iterationConvergence
  optimalComplexityClosed : P.optimalComplexity

def AdaptiveMeshingClosed (P : AdaptiveMeshingPackage) : Prop :=
  P.refinementCriterion ∧ P.meshRegularity ∧ P.hangingNodes ∧ P.iterationConvergence ∧ P.optimalComplexity

theorem adaptive_meshing_closed_from_evidence
    (P : AdaptiveMeshingPackage) (E : AdaptiveMeshingEvidence P) :
    AdaptiveMeshingClosed P := by
  exact And.intro E.refinementCriterionClosed (And.intro E.meshRegularityClosed (And.intro E.hangingNodesClosed (And.intro E.iterationConvergenceClosed E.optimalComplexityClosed)))

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse