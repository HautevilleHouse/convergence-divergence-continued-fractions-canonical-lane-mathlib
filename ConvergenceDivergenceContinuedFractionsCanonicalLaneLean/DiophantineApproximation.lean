import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure DiophantineApproximation (A : AdmissibleClass) where
  irrationalMeasure : ℝ
  continuedFractionConvergent : ℚ
  approximationRate : ℝ

def DiophantineApproximationClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem diophantine_approximation_closed (A : AdmissibleClass) :
    DiophantineApproximationClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse