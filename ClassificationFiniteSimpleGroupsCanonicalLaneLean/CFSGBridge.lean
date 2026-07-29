import ClassificationFiniteSimpleGroupsCanonicalLaneLean.CFSGObjects

/-!
# CFSG Bridge: Classification of Finite Simple Groups
-/

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure CFSGSourcesPackage where
  alternatingGroups : Prop
  groupsOfLieType : Prop
  sporadicGroups : Prop
  classificationTheorem : Prop

structure CFSGSourcesEvidence (P : CFSGSourcesPackage) where
  alternatingGroupsClosed : P.alternatingGroups
  groupsOfLieTypeClosed : P.groupsOfLieType
  sporadicGroupsClosed : P.sporadicGroups
  classificationTheoremClosed : P.classificationTheorem

def CFSGSourcesClosed (P : CFSGSourcesPackage) : Prop :=
  P.alternatingGroups ∧ P.groupsOfLieType ∧ P.sporadicGroups ∧ P.classificationTheorem

theorem cfsg_sources_closed_from_evidence (P : CFSGSourcesPackage) (E : CFSGSourcesEvidence P) :
    CFSGSourcesClosed P := by
  exact And.intro E.alternatingGroupsClosed
    (And.intro E.groupsOfLieTypeClosed
      (And.intro E.sporadicGroupsClosed E.classificationTheoremClosed))

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse