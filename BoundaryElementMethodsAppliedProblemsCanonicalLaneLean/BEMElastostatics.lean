import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure BEMElastostaticsPackage where
  kelvinSolution : Prop
  stressBIE : Prop
  regularizedIntegral : Prop
  applicationExamples : Prop

structure BEMElastostaticsEvidence (P : BEMElastostaticsPackage) where
  kelvinSolutionClosed : P.kelvinSolution
  stressBIEClosed : P.stressBIE
  regularizedIntegralClosed : P.regularizedIntegral
  applicationExamplesClosed : P.applicationExamples

def BEMElastostaticsClosed (P : BEMElastostaticsPackage) : Prop :=
  P.kelvinSolution ∧ P.stressBIE ∧ P.regularizedIntegral ∧ P.applicationExamples

theorem bem_elastostatics_closed_from_evidence (P : BEMElastostaticsPackage) (E : BEMElastostaticsEvidence P) :
    BEMElastostaticsClosed P := by
  exact And.intro E.kelvinSolutionClosed
    (And.intro E.stressBIEClosed
      (And.intro E.regularizedIntegralClosed E.applicationExamplesClosed))

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse