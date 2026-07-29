import ClassificationFiniteSimpleGroupsCanonicalLaneLean.UniquenessCase

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

def ConstrainedCfsgClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cfsg_endgame (A : AdmissibleClass) :
    ConstrainedCfsgClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse