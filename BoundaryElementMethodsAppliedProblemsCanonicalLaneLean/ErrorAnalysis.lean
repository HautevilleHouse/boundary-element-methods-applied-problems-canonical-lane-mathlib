import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure ErrorAnalysisPackage where
  discretizationError : Prop
  quadratureError : Prop
  stabilityError : Prop
  convergenceRate : Prop
  adaptiveErrorIndicator : Prop

structure ErrorAnalysisEvidence (P : ErrorAnalysisPackage) where
  discretizationErrorClosed : P.discretizationError
  quadratureErrorClosed : P.quadratureError
  stabilityErrorClosed : P.stabilityError
  convergenceRateClosed : P.convergenceRate
  adaptiveErrorIndicatorClosed : P.adaptiveErrorIndicator

def ErrorAnalysisClosed (P : ErrorAnalysisPackage) : Prop :=
  P.discretizationError ∧ P.quadratureError ∧ P.stabilityError ∧ P.convergenceRate ∧ P.adaptiveErrorIndicator

theorem error_analysis_closed_from_evidence
    (P : ErrorAnalysisPackage) (E : ErrorAnalysisEvidence P) :
    ErrorAnalysisClosed P := by
  exact And.intro E.discretizationErrorClosed (And.intro E.quadratureErrorClosed (And.intro E.stabilityErrorClosed (And.intro E.convergenceRateClosed E.adaptiveErrorIndicatorClosed)))

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse