import ConvergenceDivergenceContinuedFractionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure ConvergenceCriteriaPackage (A : AdmissibleClass) where
  partialDenominatorsBounded : Prop
  continuedFractionRatio : Prop
  convergenceTest : Prop
  classificationResult : Prop

structure ConvergenceCriteriaEvidence (A : AdmissibleClass) (C : ConvergenceCriteriaPackage A) where
  partialDenominatorsBoundedClosed : C.partialDenominatorsBounded
  continuedFractionRatioClosed : C.continuedFractionRatio
  convergenceTestClosed : C.convergenceTest
  classificationResultClosed : C.classificationResult

def ConvergenceCriteriaClosed (A : AdmissibleClass) (C : ConvergenceCriteriaPackage A) : Prop :=
  C.partialDenominatorsBounded ∧ C.continuedFractionRatio ∧
  C.convergenceTest ∧ C.classificationResult

theorem convergence_criteria_closed_from_evidence
    (A : AdmissibleClass) (C : ConvergenceCriteriaPackage A) (E : ConvergenceCriteriaEvidence A C) :
    ConvergenceCriteriaClosed A C := by
  exact And.intro E.partialDenominatorsBoundedClosed
    (And.intro E.continuedFractionRatioClosed
      (And.intro E.convergenceTestClosed E.classificationResultClosed))

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse
