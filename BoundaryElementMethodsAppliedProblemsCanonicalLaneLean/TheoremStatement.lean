import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsAppliedProblemsCanonicalLaneLean

structure BoundaryElementTheoremStatement where
  problemKey : String
  method : String
  domainDimension : Nat
  errorEstimate : Prop
  boundaryElementClosure : Prop

end BoundaryElementMethodsAppliedProblemsCanonicalLaneLean
end HautevilleHouse