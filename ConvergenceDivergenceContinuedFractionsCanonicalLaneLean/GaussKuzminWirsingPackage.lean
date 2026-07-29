import ConvergenceDivergenceContinuedFractionsCanonicalLaneLean.ConvergenceDivergencePackage

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure GaussKuzminWirsingPackage (A : AdmissibleClass) where
  gaussMap : Type u
  invariantMeasure : Type v
  entropy : Prop
  mixingProperty : Prop
  stationaryDistribution : Prop
  ergodicityResult : Prop

def GaussKuzminWirsingClosed (G : GaussKuzminWirsingPackage) : Prop :=
  G.entropy ∧ G.mixingProperty ∧ G.stationaryDistribution ∧ G.ergodicityResult

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse