import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure ConvergenceCriterion where
  partialSumConverges : Prop
  ratioTestPasses : Prop
  rootTestPasses : Prop
  cauchyCriterion : Prop

structure ConvergenceCriterionEvidence (C : ConvergenceCriterion) where
  partialSumConvergesClosed : C.partialSumConverges
  ratioTestPassesClosed : C.ratioTestPasses
  rootTestPassesClosed : C.rootTestPasses
  cauchyCriterionClosed : C.cauchyCriterion

def ConvergenceCriterionClosed (C : ConvergenceCriterion) : Prop :=
  C.partialSumConverges ∧ C.ratioTestPasses ∧ C.rootTestPasses ∧ C.cauchyCriterion

theorem convergence_criterion_closed_from_evidence (C : ConvergenceCriterion) (E : ConvergenceCriterionEvidence C) : ConvergenceCriterionClosed C :=
  And.intro E.partialSumConvergesClosed (And.intro E.ratioTestPassesClosed (And.intro E.rootTestPassesClosed E.cauchyCriterionClosed))

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse