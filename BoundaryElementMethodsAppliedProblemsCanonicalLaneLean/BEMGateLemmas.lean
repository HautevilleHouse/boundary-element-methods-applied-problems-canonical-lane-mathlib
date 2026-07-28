import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryElementMethodsAppliedProblems.BEMBridgeLemmas

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblems

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BoundaryElementMethodsAppliedProblems
end HautevilleHouse