import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure KhinchinConstant (A : AdmissibleClass) where
  constantValue : ℝ
  almostEverywhereConvergence : Prop
  geometricMeanLimit : ℝ

def KhinchinConstantClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem khinchin_constant_closed (A : AdmissibleClass) :
    KhinchinConstantClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse