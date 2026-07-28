import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure BEMDiscretizationPackage where
  meshType : String
  elementType : String
  discretizationSpace : Type
  approximationProperty : Prop
  errorEstimate : Prop

structure BEMDiscretizationEvidence (D : BEMDiscretizationPackage) where
  approximationPropertyClosed : D.approximationProperty
  errorEstimateClosed : D.errorEstimate

def BEMDiscretizationClosed (D : BEMDiscretizationPackage) : Prop :=
  D.approximationProperty ∧ D.errorEstimate

theorem bem_discretization_closed_from_evidence (D : BEMDiscretizationPackage) (E : BEMDiscretizationEvidence D) : BEMDiscretizationClosed D := by
  exact And.intro E.approximationPropertyClosed E.errorEstimateClosed

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse