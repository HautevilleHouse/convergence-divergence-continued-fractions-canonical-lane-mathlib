import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

inductive FractionType
  | regular
  | generalized
  | periodic
  | limit

def fractionTypeToString (f : FractionType) : String :=
  match f with
  | FractionType.regular => "regular"
  | FractionType.generalized => "generalized"
  | FractionType.periodic => "periodic"
  | FractionType.limit => "limit"

def fractionTypeFromString (s : String) : Option FractionType :=
  match s with
  | "regular" => some FractionType.regular
  | "generalized" => some FractionType.generalized
  | "periodic" => some FractionType.periodic
  | "limit" => some FractionType.limit
  | _ => none

structure ConvergentDivergentFractionType where
  fType : FractionType
  convergent : Prop
  divergent : Prop
  convergentTerm : convergent
  divergentTerm : divergent

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse