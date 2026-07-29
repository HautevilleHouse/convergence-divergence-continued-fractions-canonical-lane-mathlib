import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure LyapunovExponent (A : AdmissibleClass) where
  exponentValue : ℝ
  positivityCondition : Prop
  convergenceRateRelation : Prop

def LyapunovExponentClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem lyapunov_exponent_closed (A : AdmissibleClass) :
    LyapunovExponentClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse