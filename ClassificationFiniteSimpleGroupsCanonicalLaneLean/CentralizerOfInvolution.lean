import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure CentralizerOfInvolutionPackage where
  group : Type u
  involution : group
  centrailizerSubgroup : Type v
  centralizerSimple : Prop
  componentSubgroup : Type w
  componentSimple : Prop
  centralizerDecomposition : Prop
  uniquenessProperty : Prop

structure CentralizerOfInvolutionEvidence (C : CentralizerOfInvolutionPackage) where
  centralizerSimpleClosed : C.centralizerSimple
  componentSimpleClosed : C.componentSimple
  centralizerDecompositionClosed : C.centralizerDecomposition
  uniquenessPropertyClosed : C.uniquenessProperty

def CentralizerOfInvolutionClosed (C : CentralizerOfInvolutionPackage) : Prop :=
  C.centralizerSimple ∧ C.componentSimple ∧ C.centralizerDecomposition ∧ C.uniquenessProperty

theorem centralizer_of_involution_closed_from_evidence (C : CentralizerOfInvolutionPackage) (E : CentralizerOfInvolutionEvidence C) : CentralizerOfInvolutionClosed C := by
  exact And.intro E.centralizerSimpleClosed (And.intro E.componentSimpleClosed (And.intro E.centralizerDecompositionClosed E.uniquenessPropertyClosed))

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse
