import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblems

structure BEMAdmittedObject where
  problemDomain : Type u
  boundaryData : Type v
  integralOperator : Type w
  solutionExists : Prop
  errorBounds : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : BEMAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundaryElementMethodsAppliedProblems
end HautevilleHouse