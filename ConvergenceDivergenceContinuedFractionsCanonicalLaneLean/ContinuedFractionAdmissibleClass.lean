import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure ContinuedFractionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedContinuedFraction where
  space : ContinuedFractionSpace
  continuedFractionStructure : Prop
  convergenceProperty : Prop
  divergenceProperty : Prop
  conclusion : convergenceProperty ∨ divergenceProperty

structure AdmissibleClass where
  object : AdmittedContinuedFraction
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ContinuedFractionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def ContinuedFractionWitnessClosed (O : AdmittedContinuedFraction) : Prop :=
  O.conclusion

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse