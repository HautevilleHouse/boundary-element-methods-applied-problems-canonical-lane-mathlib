import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure BoundaryElementMethodPackage where
  domain : Type u
  boundary : Type v
  trialSpace : Type w
  testSpace : Type x
  formulation : Prop
  discretization : Prop
  solver : Prop

structure BoundaryElementMethodEvidence (P : BoundaryElementMethodPackage) where
  formulationClosed : P.formulation
  discretizationClosed : P.discretization
  solverClosed : P.solver

def BoundaryElementMethodClosed (P : BoundaryElementMethodPackage) : Prop :=
  P.formulation ∧ P.discretization ∧ P.solver

theorem boundary_element_method_closed_from_evidence
    (P : BoundaryElementMethodPackage) (E : BoundaryElementMethodEvidence P) :
    BoundaryElementMethodClosed P := by
  exact And.intro E.formulationClosed (And.intro E.discretizationClosed E.solverClosed)

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse