import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure ApplicationsPackage where
  problemDomain : Type u
  bemFormulation : Prop
  numericalResults : Prop
  validation : Prop
  performance : Prop

structure ApplicationsEvidence (P : ApplicationsPackage) where
  problemDomainClosed : Type u
  bemFormulationClosed : P.bemFormulation
  numericalResultsClosed : P.numericalResults
  validationClosed : P.validation
  performanceClosed : P.performance

def ApplicationsClosed (P : ApplicationsPackage) : Prop :=
  P.bemFormulation ∧ P.numericalResults ∧ P.validation ∧ P.performance

theorem applications_closed_from_evidence
    (P : ApplicationsPackage) (E : ApplicationsEvidence P) :
    ApplicationsClosed P := by
  exact And.intro E.bemFormulationClosed (And.intro E.numericalResultsClosed (And.intro E.validationClosed E.performanceClosed))

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse