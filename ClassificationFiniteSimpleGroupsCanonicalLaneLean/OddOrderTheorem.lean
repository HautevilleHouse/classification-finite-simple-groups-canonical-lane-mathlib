import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure OddOrderPackage {
  CFSG : ClassificationFiniteSimpleGroupsAdmittedObject
} where
  oddOrderGroupSolvable : Prop
  feitThompsonProof : Prop
  involutionCentralizerStructure : Prop
  characterTheoryBound : Prop

def OddOrderClosed (O : OddOrderPackage) : Prop :=
  O.oddOrderGroupSolvable ∧ O.feitThompsonProof ∧
  O.involutionCentralizerStructure ∧ O.characterTheoryBound

structure OddOrderEvidence (O : OddOrderPackage) where
  oddOrderGroupSolvableClosed : O.oddOrderGroupSolvable
  feitThompsonProofClosed : O.feitThompsonProof
  involutionCentralizerStructureClosed : O.involutionCentralizerStructure
  characterTheoryBoundClosed : O.characterTheoryBound

theorem odd_order_closed_from_evidence
    (O : OddOrderPackage) (E : OddOrderEvidence O) : OddOrderClosed O := by
  exact And.intro E.oddOrderGroupSolvableClosed
    (And.intro E.feitThompsonProofClosed
      (And.intro E.involutionCentralizerStructureClosed E.characterTheoryBoundClosed))

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse
