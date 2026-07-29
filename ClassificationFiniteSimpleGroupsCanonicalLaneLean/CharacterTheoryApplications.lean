import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure CharacterTheoryPackage {
  CFSG : ClassificationFiniteSimpleGroupsAdmittedObject
} where
  irreducibleCharacterDegrees : Prop
  characterTableComputed : Prop
  blockTheoryApplied : Prop
  frobeniusGroupsClassified : Prop

def CharacterTheoryClosed (C : CharacterTheoryPackage) : Prop :=
  C.irreducibleCharacterDegrees ∧ C.characterTableComputed ∧
  C.blockTheoryApplied ∧ C.frobeniusGroupsClassified

structure CharacterTheoryEvidence (C : CharacterTheoryPackage) where
  irreducibleCharacterDegreesClosed : C.irreducibleCharacterDegrees
  characterTableComputedClosed : C.characterTableComputed
  blockTheoryAppliedClosed : C.blockTheoryApplied
  frobeniusGroupsClassifiedClosed : C.frobeniusGroupsClassified

theorem character_theory_closed_from_evidence
    (C : CharacterTheoryPackage) (E : CharacterTheoryEvidence C) : CharacterTheoryClosed C := by
  exact And.intro E.irreducibleCharacterDegreesClosed
    (And.intro E.characterTableComputedClosed
      (And.intro E.blockTheoryAppliedClosed E.frobeniusGroupsClassifiedClosed))

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse
