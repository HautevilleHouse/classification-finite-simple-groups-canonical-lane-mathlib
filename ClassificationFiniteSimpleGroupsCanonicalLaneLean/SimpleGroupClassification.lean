import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure SimpleGroupClassificationPackage {
  CFSG : ClassificationFiniteSimpleGroupsAdmittedObject
} where
  finiteSimpleGroupClassified : Prop
  alternatingGroupRecognized : Prop
  lieTypeGroupRecognized : Prop
  sporadicGroupRecognized : Prop
  classificationComplete : Prop

structure SimpleGroupClassificationEvidence {
  CFSG : ClassificationFiniteSimpleGroupsAdmittedObject
} (Z : SimpleGroupClassificationPackage CFSG) where
  finiteSimpleGroupClassifiedClosed : Z.finiteSimpleGroupClassified
  alternatingGroupRecognizedClosed : Z.alternatingGroupRecognized
  lieTypeGroupRecognizedClosed : Z.lieTypeGroupRecognized
  sporadicGroupRecognizedClosed : Z.sporadicGroupRecognized
  classificationCompleteClosed : Z.classificationComplete

def SimpleGroupClassificationClosed {
  CFSG : ClassificationFiniteSimpleGroupsAdmittedObject
} (Z : SimpleGroupClassificationPackage CFSG) : Prop :=
  Z.finiteSimpleGroupClassified ∧ Z.alternatingGroupRecognized ∧
  Z.lieTypeGroupRecognized ∧ Z.sporadicGroupRecognized ∧
  Z.classificationComplete

theorem simple_group_classification_closed_from_evidence
    {CFSG : ClassificationFiniteSimpleGroupsAdmittedObject}
    (Z : SimpleGroupClassificationPackage CFSG)
    (E : SimpleGroupClassificationEvidence Z) : SimpleGroupClassificationClosed Z := by
  exact And.intro E.finiteSimpleGroupClassifiedClosed
    (And.intro E.alternatingGroupRecognizedClosed
      (And.intro E.lieTypeGroupRecognizedClosed
        (And.intro E.sporadicGroupRecognizedClosed E.classificationCompleteClosed)))

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse
