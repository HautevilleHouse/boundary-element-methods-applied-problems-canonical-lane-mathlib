import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure BEMErrorPackage where
  aPrioriEstimate : Prop
  aPosterioriEstimate : Prop
  convergenceRate : Prop
  stability : Prop

structure BEMErrorEvidence (P : BEMErrorPackage) where
  aPrioriEstimateClosed : P.aPrioriEstimate
  aPosterioriEstimateClosed : P.aPosterioriEstimate
  convergenceRateClosed : P.convergenceRate
  stabilityClosed : P.stability

def BEMErrorClosed (P : BEMErrorPackage) : Prop :=
  P.aPrioriEstimate ∧ P.aPosterioriEstimate ∧ P.convergenceRate ∧ P.stability

theorem bem_error_closed_from_evidence (P : BEMErrorPackage) (E : BEMErrorEvidence P) :
    BEMErrorClosed P := by
  exact And.intro E.aPrioriEstimateClosed
    (And.intro E.aPosterioriEstimateClosed
      (And.intro E.convergenceRateClosed E.stabilityClosed))

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse