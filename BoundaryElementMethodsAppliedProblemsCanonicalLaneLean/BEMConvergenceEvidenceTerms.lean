import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryElementMethodsAppliedProblemsCanonicalLaneLean.BEMSolutionExistence

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure CoercivityEevidenceTerms {P : BEMProblem} {B : BoundaryIntegralEquationPackage P}
    (C : CoercivityCertificate B) where
  coercivityConstantPositive : C.coercivityConstant > 0
  bilinearFormCoerciveClosed : C.bilinearFormCoercive

def CoercivityCertificate.evidenceTerms {P : BEMProblem} {B : BoundaryIntegralEquationPackage P}
    (C : CoercivityCertificate B) : CoercivityEevidenceTerms C := {
  coercivityConstantPositive := C.positivityProof
  bilinearFormCoerciveClosed := C.coercivityClosed
}

structure CompactnessEvidenceTerms {P : BEMProblem} {B : BoundaryIntegralEquationPackage P}
    (C : CompactnessCertificate B) where
  compactEmbeddingClosed : C.compactEmbedding

def CompactnessCertificate.evidenceTerms {P : BEMProblem} {B : BoundaryIntegralEquationPackage P}
    (C : CompactnessCertificate B) : CompactnessEvidenceTerms C := {
  compactEmbeddingClosed := C.compactnessClosed
}

structure SolutionExistenceEvidenceTerms {P : BEMProblem} {B : BoundaryIntegralEquationPackage P}
    (C : SolutionExistenceCertificate B) where
  existenceAndUniquenessClosed : C.existenceAndUniqueness
  solutionExistenceCertificateClosed : SolutionExistenceCertificateClosed C

def SolutionExistenceCertificate.evidenceTerms {P : BEMProblem} {B : BoundaryIntegralEquationPackage P}
    (C : SolutionExistenceCertificate B) : SolutionExistenceEvidenceTerms C := {
  existenceAndUniquenessClosed := C.existenceClosed
  solutionExistenceCertificateClosed := solution_existence_certificate_closed C
}

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse