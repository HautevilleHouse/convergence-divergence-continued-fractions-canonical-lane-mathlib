import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure DivergencePackage (C : ContinuedFractionExpansion) where
  partialQuotientsUnbounded : Prop
  denominatorGrowthSlow : Prop
  oscillationCondition : Prop
  limitDoesNotExist : Prop

theorem divergence_closed (C : ContinuedFractionExpansion) : Prop :=
  C.denominatorGrowth ∨ C.partialQuotientsUnbounded

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse