import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure AdmittedObject where
  formulation : Type
  discretization : Type
  operator : Type
  convergenceProp : Prop
  conclusion : convergenceProp

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse