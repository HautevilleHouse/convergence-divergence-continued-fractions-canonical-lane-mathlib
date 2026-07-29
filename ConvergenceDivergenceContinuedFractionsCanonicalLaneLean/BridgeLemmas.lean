import ConvergenceDivergenceContinuedFractionsCanonicalLaneLean.ContinuedFractionAdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContinuedFractionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse