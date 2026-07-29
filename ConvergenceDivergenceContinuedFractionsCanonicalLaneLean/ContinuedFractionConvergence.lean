import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure ContinuedFractionExpansion (A : AdmissibleClass) where
  partialQuotients : List ℕ
  limitPoint : ℝ
  convergenceRate : ℝ
  divergenceCondition : Prop

def ContinuedFractionConvergenceClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem continued_fraction_convergence_closed (A : AdmissibleClass) :
    ContinuedFractionConvergenceClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse