import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceContinuedFractionsCanonicalLaneLean

structure GaussKuzminPackage where
  measure : Type u
  probabilityMeasure : Type v
  invarianceUnderGaussMap : Prop
  entropyComputed : Prop
  mixingProperty : Prop

structure GaussKuzminEvidence (G : GaussKuzminPackage) where
  invarianceUnderGaussMapClosed : G.invarianceUnderGaussMap
  entropyComputedClosed : G.entropyComputed
  mixingPropertyClosed : G.mixingProperty

def GaussKuzminClosed (G : GaussKuzminPackage) : Prop :=
  G.invarianceUnderGaussMap ∧ G.entropyComputed ∧ G.mixingProperty

theorem gauss_kuzmin_closed_from_evidence (G : GaussKuzminPackage) (E : GaussKuzminEvidence G) : GaussKuzminClosed G :=
  And.intro E.invarianceUnderGaussMapClosed (And.intro E.entropyComputedClosed E.mixingPropertyClosed)

end ConvergenceDivergenceContinuedFractionsCanonicalLaneLean
end HautevilleHouse