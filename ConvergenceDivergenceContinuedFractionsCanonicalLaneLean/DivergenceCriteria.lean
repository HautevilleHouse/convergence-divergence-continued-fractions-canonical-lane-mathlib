import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure DivergenceCriterion where
  termNotZero : Prop
  growthCondition : Prop
  denominatorCondition : Prop
  oscilationCondition : Prop

structure DivergenceCriterionEvidence (D : DivergenceCriterion) where
  termNotZeroClosed : D.termNotZero
  growthConditionClosed : D.growthCondition
  denominatorConditionClosed : D.denominatorCondition
  oscilationConditionClosed : D.oscilationCondition

def DivergenceCriterionClosed (D : DivergenceCriterion) : Prop :=
  D.termNotZero ∧ D.growthCondition ∧ D.denominatorCondition ∧ D.oscilationCondition

theorem divergence_criterion_closed_from_evidence (D : DivergenceCriterion) (E : DivergenceCriterionEvidence D) : DivergenceCriterionClosed D :=
  And.intro E.termNotZeroClosed (And.intro E.growthConditionClosed (And.intro E.denominatorConditionClosed E.oscilationConditionClosed))

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse