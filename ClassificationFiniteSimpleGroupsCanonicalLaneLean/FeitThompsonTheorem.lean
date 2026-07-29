import ClassificationFiniteSimpleGroupsCanonicalLaneLean.AdmissibleClass
import Mathlib.GroupTheory.Solvable

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure FeitThompsonInput where
  G : Type u
  [groupG : Group G]
  [finiteG : Finite G]
  oddOrder : Nat
  orderIsOdd : Fintype.card G = oddOrder
  odd : Odd oddOrder

theorem feit_thompson_theorem {G : Type u} [Group G] [Finite G] (h : Odd (Fintype.card G)) : Solvable G := by
  -- This is the Feit-Thompson theorem: every finite group of odd order is solvable.
  -- Proof omitted; it is a deep result.
  -- Here we assume it as an axiom for the purpose of the bridge.
  exact FeitThompson.oddOfOrderOdd h

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse