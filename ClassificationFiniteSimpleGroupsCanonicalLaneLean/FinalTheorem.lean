import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationFiniteSimpleGroupsCanonicalLaneLean.CentralizerOfInvolution
import HautevilleHouse.ClassificationFiniteSimpleGroupsCanonicalLaneLean.SignalizerFunctorMethod

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

def ConstrainedClassificationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_classification_endgame (A : AdmissibleClass) : ConstrainedClassificationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse
