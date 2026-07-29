import ConvergenceDivergenceContinuedFractionsCanonicalLaneLean.LyapunovExponentPackage

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure KhinchinLevyPackage (A : AdmissibleClass) where
  khinchinConstant : Prop
  levyConstant : Prop
  partialQuotientDistribution : Prop
  metricTheoryResult : A.object.convergenceProperty → Prop
  geometricMeanResult : Prop

def KhinchinLevyClosed (K : KhinchinLevyPackage) : Prop :=
  K.khinchinConstant ∧ K.levyConstant ∧ K.partialQuotientDistribution ∧ K.geometricMeanResult

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse