import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure IntegralOperatorsPackage where
  boundaryIntegralOperator : Type u
  fredholmProperties : Prop
  compactness : Prop
  coercivity : Prop
  spectrum : Prop

structure IntegralOperatorsEvidence (P : IntegralOperatorsPackage) where
  boundaryIntegralOperatorClosed : Type u
  fredholmPropertiesClosed : P.fredholmProperties
  compactnessClosed : P.compactness
  coercivityClosed : P.coercivity
  spectrumClosed : P.spectrum

def IntegralOperatorsClosed (P : IntegralOperatorsPackage) : Prop :=
  P.fredholmProperties ∧ P.compactness ∧ P.coercivity ∧ P.spectrum

theorem integral_operators_closed_from_evidence
    (P : IntegralOperatorsPackage) (E : IntegralOperatorsEvidence P) :
    IntegralOperatorsClosed P := by
  exact And.intro E.fredholmPropertiesClosed (And.intro E.compactnessClosed (And.intro E.coercivityClosed E.spectrumClosed))

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse