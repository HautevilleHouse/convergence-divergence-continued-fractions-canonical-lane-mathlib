import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure KhintchinConstantPackage where
  constant : ℝ
  convergenceInMeasure : Prop
  aeConvergence : Prop
  meanValue : Prop

structure KhintchinConstantEvidence (K : KhintchinConstantPackage) where
  convergenceInMeasureClosed : K.convergenceInMeasure
  aeConvergenceClosed : K.aeConvergence
  meanValueClosed : K.meanValue

def KhintchinConstantClosed (K : KhintchinConstantPackage) : Prop :=
  K.convergenceInMeasure ∧ K.aeConvergence ∧ K.meanValue

theorem khintchin_constant_closed_from_evidence (K : KhintchinConstantPackage) (E : KhintchinConstantEvidence K) : KhintchinConstantClosed K :=
  And.intro E.convergenceInMeasureClosed (And.intro E.aeConvergenceClosed E.meanValueClosed)

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse