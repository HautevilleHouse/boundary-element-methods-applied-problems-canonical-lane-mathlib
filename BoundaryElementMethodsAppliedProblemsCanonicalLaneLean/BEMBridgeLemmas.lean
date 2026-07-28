import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryElementMethodsAppliedProblems.BEMAdmissibleObject

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblems

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BoundaryElementMethodsAppliedProblems
end HautevilleHouse