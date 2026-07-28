import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure BEMFastMultipolePackage where
  treeConstruction : Prop
  multipoleExpansion : Prop
  localExpansion : Prop
  farFieldEvaluation : Prop

structure BEMFastMultipoleEvidence (P : BEMFastMultipolePackage) where
  treeConstructionClosed : P.treeConstruction
  multipoleExpansionClosed : P.multipoleExpansion
  localExpansionClosed : P.localExpansion
  farFieldEvaluationClosed : P.farFieldEvaluation

def BEMFastMultipoleClosed (P : BEMFastMultipolePackage) : Prop :=
  P.treeConstruction ∧ P.multipoleExpansion ∧ P.localExpansion ∧ P.farFieldEvaluation

theorem bem_fast_multipole_closed_from_evidence (P : BEMFastMultipolePackage) (E : BEMFastMultipoleEvidence P) :
    BEMFastMultipoleClosed P := by
  exact And.intro E.treeConstructionClosed
    (And.intro E.multipoleExpansionClosed
      (And.intro E.localExpansionClosed E.farFieldEvaluationClosed))

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse