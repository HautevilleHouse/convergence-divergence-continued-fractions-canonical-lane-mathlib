import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure ContinuedFractionExpansion where
  partialQuotients : ℕ → ℚ
  convergents : ℕ → ℚ
  denominatorGrowth : Prop

structure ConvergencePackage (C : ContinuedFractionExpansion) where
  limitExists : Prop
  limitValue : ℚ
  rateConvergence : Prop
  tailEstimate : Prop
  errorBound : Prop

theorem convergence_closed (C : ContinuedFractionExpansion) : Prop :=
  C.denominatorGrowth

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse