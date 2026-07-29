import ClassificationFiniteSimpleGroupsCanonicalLaneLean.SignalizerFunctor

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure UniquenessCasePackage {O : CfsgAdmittedObject}
    {F : FamilyClassificationPackage O} {S : SignalizerFunctorPackage F}
    (U : UniquenessCasePackage S) where
  standardComponent : Prop
  subgroupSubnormal : Prop
  centralizerOfInvolution : Prop
  uniquenessContradiction : Prop
  groupIsKnownFamily : Prop

structure UniquenessCaseEvidence {O : CfsgAdmittedObject}
    {F : FamilyClassificationPackage O} {S : SignalizerFunctorPackage F}
    {U : UniquenessCasePackage S} (E : UniquenessCaseEvidence U) where
  standardComponentClosed : U.standardComponent
  subgroupSubnormalClosed : U.subgroupSubnormal
  centralizerOfInvolutionClosed : U.centralizerOfInvolution
  uniquenessContradictionClosed : U.uniquenessContradiction
  groupIsKnownFamilyClosed : U.groupIsKnownFamily

def UniquenessCaseClosed {O : CfsgAdmittedObject}
    {F : FamilyClassificationPackage O} {S : SignalizerFunctorPackage F}
    (U : UniquenessCasePackage S) : Prop :=
  U.standardComponent ∧ U.subgroupSubnormal ∧
  U.centralizerOfInvolution ∧ U.uniquenessContradiction ∧
  U.groupIsKnownFamily

theorem uniqueness_case_closed_from_evidence
    {O : CfsgAdmittedObject} {F : FamilyClassificationPackage O}
    {S : SignalizerFunctorPackage F} {U : UniquenessCasePackage S}
    (E : UniquenessCaseEvidence U) : UniquenessCaseClosed U := by
  exact And.intro E.standardComponentClosed
    (And.intro E.subgroupSubnormalClosed
      (And.intro E.centralizerOfInvolutionClosed
        (And.intro E.uniquenessContradictionClosed E.groupIsKnownFamilyClosed)))

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse