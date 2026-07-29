import ConvergenceDivergenceContinuedFractionsCanonicalLaneLean.KhinchinLevyPackage

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure BorelBernsteinPackage (A : AdmissibleClass) where
  borelMeasure : Prop
  bernsteinPolynomials : Type u
  approximationRate : Prop
  divergenceMeasure : Prop
  almostEverywhereConvergence : A.object.convergenceProperty → Prop
  exceptionalSet : Prop

def BorelBernsteinClosed (B : BorelBernsteinPackage) : Prop :=
  B.borelMeasure ∧ B.approximationRate ∧ B.divergenceMeasure ∧ B.almostEverywhereConvergence ∧ B.exceptionalSet

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse