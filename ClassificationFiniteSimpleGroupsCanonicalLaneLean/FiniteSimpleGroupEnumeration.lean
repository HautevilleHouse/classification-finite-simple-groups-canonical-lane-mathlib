import ClassificationFiniteSimpleGroupsCanonicalLaneLean.CentralizerConstruction
import ClassificationFiniteSimpleGroupsCanonicalLaneLean.ComponentClassification

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

inductive FiniteSimpleGroupType where
  | cyclic (p : Nat) (hp : Nat.Prime p)
  | alternating (n : Nat) (hn : n ≥ 5)
  | lieType (name : String) (rank : Nat)
  | sporadic (name : String)

def FiniteSimpleGroupType.cardinality : FiniteSimpleGroupType → ℕ
  | cyclic p _ => p
  | alternating n _ => factorial n / 2
  | lieType _ _ => 0
  | sporadic _ => 0

structure FiniteSimpleGroupEnumeration where
  types : List FiniteSimpleGroupType
  allFiniteSimpleGroupsClassified : Prop
  classificationComplete : ∀ (G : Type u) [Group G] [Finite G] [SimpleGroup G],
    (∃ (t : FiniteSimpleGroupType), card t = Fintype.card G ∧ t ∈ types)

def EnumerationClosed (E : FiniteSimpleGroupEnumeration) : Prop :=
  E.allFiniteSimpleGroupsClassified ∧ E.classificationComplete

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse