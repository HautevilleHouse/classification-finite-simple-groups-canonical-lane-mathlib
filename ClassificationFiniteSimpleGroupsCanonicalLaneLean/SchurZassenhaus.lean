import ClassificationFiniteSimpleGroupsCanonicalLaneLean.AdmissibleClass
import Mathlib.GroupTheory.Complement

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure SchurZassenhausInput where
  G : Type u
  [groupG : Group G]
  [finiteG : Finite G]
  N : Subgroup G
  H : Subgroup G
  normalN : Subgroup.Normal N
  coprimeOrder : Nat.Coprime (Fintype.card N) (Fintype.card (G ⧸ N))

theorem schur_zassenhaus_theorem {G : Type u} [Group G] [Finite G] {N : Subgroup G} [Subgroup.Normal N]
    (h : Nat.Coprime (Fintype.card N) (Fintype.card (G ⧸ N))) :
    ∃ (H : Subgroup G), IsComplement N H := by
  -- Schur–Zassenhaus theorem: existence of a complement.
  exact SchurZassenhaus.exists_complement h

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse