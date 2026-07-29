import ConvergenceDivergenceContinuedFractionsCanonicalLaneLean.ContinuedFractionAdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure ConvergenceDivergencePackage (A : AdmissibleClass) where
  partialConvergents : Type u
  limitPoint : Type v
  convergenceCriterion : Prop
  divergenceCriterion : Prop
  rateOfConvergence : Prop
  classificationResult : A.object.convergenceProperty ∨ A.object.divergenceProperty

def ConvergenceDivergenceClosed (P : ConvergenceDivergencePackage) : Prop :=
  P.convergenceCriterion ∧ P.divergenceCriterion ∧ P.rateOfConvergence ∧ P.classificationResult

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse