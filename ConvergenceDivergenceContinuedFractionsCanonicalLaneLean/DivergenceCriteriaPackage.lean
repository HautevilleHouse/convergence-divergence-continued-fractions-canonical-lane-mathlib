import ConvergenceDivergenceContinuedFractionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure DivergenceCriteriaPackage (A : AdmissibleClass) where
  growthCondition : Prop
  divergenceTest : Prop
  classificationResult : Prop

structure DivergenceCriteriaEvidence (A : AdmissibleClass) (D : DivergenceCriteriaPackage A) where
  growthConditionClosed : D.growthCondition
  divergenceTestClosed : D.divergenceTest
  classificationResultClosed : D.classificationResult

def DivergenceCriteriaClosed (A : AdmissibleClass) (D : DivergenceCriteriaPackage A) : Prop :=
  D.growthCondition ∧ D.divergenceTest ∧ D.classificationResult

theorem divergence_criteria_closed_from_evidence
    (A : AdmissibleClass) (D : DivergenceCriteriaPackage A) (E : DivergenceCriteriaEvidence A D) :
    DivergenceCriteriaClosed A D := by
  exact And.intro E.growthConditionClosed
    (And.intro E.divergenceTestClosed E.classificationResultClosed)

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse
