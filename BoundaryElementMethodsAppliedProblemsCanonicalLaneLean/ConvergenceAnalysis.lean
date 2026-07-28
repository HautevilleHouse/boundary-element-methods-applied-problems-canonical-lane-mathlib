import HautevilleHouse.BoundaryElementMethodsAppliedProblemsCanonicalLaneLean.PotentialTheoryOperators

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure ConvergencePackage {G : IntegralEquationPackage} {D : DiscretizationPackage G} {P : PotentialOperatorsPackage G D} where
  errorEstimate : Prop
  asymptoticRate : Prop
  adaptivity : Prop
  hpConvergence : Prop

structure ConvergenceEvidence {G : IntegralEquationPackage} {D : DiscretizationPackage G} {P : PotentialOperatorsPackage G D} (C : ConvergencePackage G D P) where
  errorEstimateClosed : C.errorEstimate
  asymptoticRateClosed : C.asymptoticRate
  adaptivityClosed : C.adaptivity
  hpConvergenceClosed : C.hpConvergence

def ConvergenceClosed {G : IntegralEquationPackage} {D : DiscretizationPackage G} {P : PotentialOperatorsPackage G D} (C : ConvergencePackage G D P) : Prop :=
  C.errorEstimate ∧ C.asymptoticRate ∧ C.adaptivity ∧ C.hpConvergence

theorem convergence_closed_from_evidence {G : IntegralEquationPackage} {D : DiscretizationPackage G} {P : PotentialOperatorsPackage G D} (C : ConvergencePackage G D P) (E : ConvergenceEvidence C) :
    ConvergenceClosed C := by
  exact And.intro E.errorEstimateClosed (And.intro E.asymptoticRateClosed (And.intro E.adaptivityClosed E.hpConvergenceClosed))

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse