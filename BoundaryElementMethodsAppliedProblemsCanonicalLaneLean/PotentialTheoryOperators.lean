import HautevilleHouse.BoundaryElementMethodsAppliedProblemsCanonicalLaneLean.BoundaryElementDiscretization

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure PotentialOperatorsPackage {G : IntegralEquationPackage} {D : DiscretizationPackage G} where
  singleLayer : Type
  doubleLayer : Type
  hypersingular : Type
  mappingProperties : Prop
  jumpRelations : Prop

structure PotentialOperatorsEvidence {G : IntegralEquationPackage} {D : DiscretizationPackage G} (P : PotentialOperatorsPackage G D) where
  mappingPropertiesClosed : P.mappingProperties
  jumpRelationsClosed : P.jumpRelations

def PotentialOperatorsClosed {G : IntegralEquationPackage} {D : DiscretizationPackage G} (P : PotentialOperatorsPackage G D) : Prop :=
  P.mappingProperties ∧ P.jumpRelations

theorem potential_operators_closed_from_evidence {G : IntegralEquationPackage} {D : DiscretizationPackage G} (P : PotentialOperatorsPackage G D) (E : PotentialOperatorsEvidence P) :
    PotentialOperatorsClosed P := by
  exact And.intro E.mappingPropertiesClosed E.jumpRelationsClosed

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse