import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryElementMethodsAppliedProblemsCanonicalLaneLean.BEMBoundaryIntegralEquation

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure CoercivityCertificate {P : BEMProblem} (B : BoundaryIntegralEquationPackage P) where
  coercivityConstant : ℝ
  positivityProof : coercivityConstant > 0
  bilinearFormCoercive : Prop
  coercivityClosed : bilinearFormCoercive

structure CompactnessCertificate {P : BEMProblem} (B : BoundaryIntegralEquationPackage P) where
  compactEmbedding : Prop
  compactnessClosed : compactEmbedding

structure SolutionExistenceCertificate {P : BEMProblem} (B : BoundaryIntegralEquationPackage P) where
  coercivity : CoercivityCertificate B
  compactness : CompactnessCertificate B
  existenceAndUniqueness : Prop
  existenceClosed : existenceAndUniqueness

def SolutionExistenceCertificateClosed {P : BEMProblem} {B : BoundaryIntegralEquationPackage P}
    (C : SolutionExistenceCertificate B) : Prop :=
  C.coercivity.bilinearFormCoercive ∧ C.compactness.compactEmbedding ∧ C.existenceAndUniqueness

theorem solution_existence_certificate_closed {P : BEMProblem} {B : BoundaryIntegralEquationPackage P}
    (C : SolutionExistenceCertificate B) : SolutionExistenceCertificateClosed C := by
  exact And.intro C.coercivity.coercivityClosed (And.intro C.compactness.compactnessClosed C.existenceClosed)

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse