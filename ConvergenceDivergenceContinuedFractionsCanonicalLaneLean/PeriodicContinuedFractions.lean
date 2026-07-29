import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure PeriodicContinuedFractionPackage where
  periodLength : ℕ
  quadraticIrrational : Prop
  purelyPeriodic : Prop
  galoisConjugate : Prop

structure PeriodicContinuedFractionEvidence (P : PeriodicContinuedFractionPackage) where
  quadraticIrrationalClosed : P.quadraticIrrational
  purelyPeriodicClosed : P.purelyPeriodic
  galoisConjugateClosed : P.galoisConjugate

def PeriodicContinuedFractionClosed (P : PeriodicContinuedFractionPackage) : Prop :=
  P.quadraticIrrational ∧ P.purelyPeriodic ∧ P.galoisConjugate

theorem periodic_continued_fraction_closed_from_evidence (P : PeriodicContinuedFractionPackage) (E : PeriodicContinuedFractionEvidence P) : PeriodicContinuedFractionClosed P :=
  And.intro E.quadraticIrrationalClosed (And.intro E.purelyPeriodicClosed E.galoisConjugateClosed)

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse