import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CFAdmittedObject where
  continuedFraction : Type
  sequence : List ℚ
  convergence : Prop
  divergence : Prop
  endpointClaim : Prop
  conclusion : convergence ∨ divergence

structure AdmissibleClass where
  object : CFAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.convergence ∨ A.object.divergence) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse
