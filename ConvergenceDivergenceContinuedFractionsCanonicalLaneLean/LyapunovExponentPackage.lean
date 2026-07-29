import ConvergenceDivergenceContinuedFractionsCanonicalLaneLean.GaussKuzminWirsingPackage

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure LyapunovExponentPackage (A : AdmissibleClass) where
  lyapunovExponent : Prop
  positivityCriterion : Prop
  negatitivityCriterion : Prop
  relationToConvergence : A.object.convergenceProperty → Prop
  relationToDivergence : A.object.divergenceProperty → Prop
  exponentComputed : lyapunovExponent

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.lyapunovExponent ∧ L.positivityCriterion ∧ L.negatitivityCriterion

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse