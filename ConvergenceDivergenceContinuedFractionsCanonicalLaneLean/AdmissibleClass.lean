import HautevilleHouse.ConvergenceDivergenceContinuedFractionsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure AdmissibleClass where
  object : ConvergentAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConvergentWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse