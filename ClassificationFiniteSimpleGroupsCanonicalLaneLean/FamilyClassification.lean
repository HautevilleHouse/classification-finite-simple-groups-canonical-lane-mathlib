import ClassificationFiniteSimpleGroupsCanonicalLaneLean.CfsgAdmittedObject

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure FamilyClassificationPackage (O : CfsgAdmittedObject) where
  alternatingFamily : Prop
  lieTypeFamily : Prop
  sporadicFamily : Prop
  titsGroup : Prop
  familyDetermined : Prop

structure FamilyClassificationEvidence {O : CfsgAdmittedObject}
    (F : FamilyClassificationPackage O) where
  alternatingFamilyClosed : F.alternatingFamily
  lieTypeFamilyClosed : F.lieTypeFamily
  sporadicFamilyClosed : F.sporadicFamily
  titsGroupClosed : F.titsGroup
  familyDeterminedClosed : F.familyDetermined

def FamilyClassificationClosed {O : CfsgAdmittedObject}
    (F : FamilyClassificationPackage O) : Prop :=
  F.alternatingFamily ∧ F.lieTypeFamily ∧
  F.sporadicFamily ∧ F.titsGroup ∧ F.familyDetermined

theorem family_classification_closed_from_evidence
    {O : CfsgAdmittedObject} (F : FamilyClassificationPackage O)
    (E : FamilyClassificationEvidence F) : FamilyClassificationClosed F := by
  exact And.intro E.alternatingFamilyClosed
    (And.intro E.lieTypeFamilyClosed
      (And.intro E.sporadicFamilyClosed
        (And.intro E.titsGroupClosed E.familyDeterminedClosed)))

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse