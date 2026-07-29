import ClassificationFiniteSimpleGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure CentralizerConstruction where
  group : Type u
  groupMul : Mul group
  groupInv : Inv group
  groupOne : One group
  groupAssoc : ∀ a b c : group, (a * b) * c = a * (b * c)
  oneMul : ∀ a : group, 1 * a = a
  mulOne : ∀ a : group, a * 1 = a
  invMul : ∀ a : group, a⁻¹ * a = 1
  mulInv : ∀ a : group, a * a⁻¹ = 1
  element : group
  centralizerSubgroup : Set group
  centralizerDef : centralizerSubgroup = { x : group | x * element = element * x }
  centralizerClosedUnderMul : ∀ x y : group, x ∈ centralizerSubgroup → y ∈ centralizerSubgroup → x * y ∈ centralizerSubgroup
  centralizerContainsOne : (1 : group) ∈ centralizerSubgroup
  centralizerClosedUnderInv : ∀ x : group, x ∈ centralizerSubgroup → x⁻¹ ∈ centralizerSubgroup

structure CentralizerEvidence (C : CentralizerConstruction) where
  centralizerSubgroupGroup : Subgroup C.group
  centralizerSubgroupGroupCarrier : (centralizerSubgroupGroup : Set C.group) = C.centralizerSubgroup

def CentralizerClosed (C : CentralizerConstruction) : Prop :=
  C.centralizerSubgroup = { x : C.group | x * C.element = C.element * x } ∧
  (∀ x y : C.group, x ∈ C.centralizerSubgroup → y ∈ C.centralizerSubgroup → x * y ∈ C.centralizerSubgroup) ∧
  ((1 : C.group) ∈ C.centralizerSubgroup) ∧
  (∀ x : C.group, x ∈ C.centralizerSubgroup → x⁻¹ ∈ C.centralizerSubgroup)

theorem centralizer_closed_from_evidence (C : CentralizerConstruction) (E : CentralizerEvidence C) : CentralizerClosed C := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ ?_))
  · exact C.centralizerDef
  · exact C.centralizerClosedUnderMul
  · exact C.centralizerContainsOne
  · exact C.centralizerClosedUnderInv

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse