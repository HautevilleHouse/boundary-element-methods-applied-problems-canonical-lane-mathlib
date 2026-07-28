import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure PotentialTheoryPackage where
  fundamentalSolution : Type u
  singleLayerPotential : Type v
  doubleLayerPotential : Type w
  jumpRelations : Prop
  regularity : Prop

structure PotentialTheoryEvidence (P : PotentialTheoryPackage) where
  fundamentalSolutionClosed : Type u
  singleLayerPotentialClosed : Type v
  doubleLayerPotentialClosed : Type w
  jumpRelationsClosed : P.jumpRelations
  regularityClosed : P.regularity

def PotentialTheoryClosed (P : PotentialTheoryPackage) : Prop :=
  P.jumpRelations ∧ P.regularity

theorem potential_theory_closed_from_evidence
    (P : PotentialTheoryPackage) (E : PotentialTheoryEvidence P) :
    PotentialTheoryClosed P := by
  exact And.intro E.jumpRelationsClosed E.regularityClosed

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse