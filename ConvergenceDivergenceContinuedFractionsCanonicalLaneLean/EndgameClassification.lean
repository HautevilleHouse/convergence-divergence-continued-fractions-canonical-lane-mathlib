import ConvergenceDivergenceContinuedFractionsCanonicalLaneLean.ConvergenceCriteriaPackage
import ConvergenceDivergenceContinuedFractionsCanonicalLaneLean.DivergenceCriteriaPackage

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure EndgameClassificationPackage (A : AdmissibleClass) where
  convergenceCriteria : ConvergenceCriteriaPackage A
  divergenceCriteria : DivergenceCriteriaPackage A
  classificationDoubleCheck : Prop
  conclusion : Prop

structure EndgameClassificationEvidence (A : AdmissibleClass) (E : EndgameClassificationPackage A) where
  convergenceCriteriaClosed : ConvergenceCriteriaClosed A E.convergenceCriteria
  divergenceCriteriaClosed : DivergenceCriteriaClosed A E.divergenceCriteria
  classificationDoubleCheckClosed : E.classificationDoubleCheck
  conclusionClosed : E.conclusion

def EndgameClassificationClosed (A : AdmissibleClass) (E : EndgameClassificationPackage A) : Prop :=
  ConvergenceCriteriaClosed A E.convergenceCriteria ∧
  DivergenceCriteriaClosed A E.divergenceCriteria ∧
  E.classificationDoubleCheck ∧ E.conclusion

theorem endgame_classification_closed_from_evidence
    (A : AdmissibleClass) (Epkg : EndgameClassificationPackage A)
    (E : EndgameClassificationEvidence A Epkg) :
    EndgameClassificationClosed A Epkg := by
  exact And.intro E.convergenceCriteriaClosed
    (And.intro E.divergenceCriteriaClosed
      (And.intro E.classificationDoubleCheckClosed E.conclusionClosed))

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse
