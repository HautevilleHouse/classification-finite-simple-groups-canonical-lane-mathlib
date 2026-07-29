import ClassificationFiniteSimpleGroupsCanonicalLaneLean.FamilyClassification

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure SignalizerFunctorPackage {O : CfsgAdmittedObject}
    {F : FamilyClassificationPackage O} (S : SignalizerFunctorPackage F) where
  signalizerFunctorDefined : Prop
  solvableSignalizer : Prop
  balanceCondition : Prop
  completionTheorem : Prop

structure SignalizerFunctorEvidence {O : CfsgAdmittedObject}
    {F : FamilyClassificationPackage O} {S : SignalizerFunctorPackage F}
    (E : SignalizerFunctorEvidence S) where
  signalizerFunctorDefinedClosed : S.signalizerFunctorDefined
  solvableSignalizerClosed : S.solvableSignalizer
  balanceConditionClosed : S.balanceCondition
  completionTheoremClosed : S.completionTheorem

def SignalizerFunctorClosed {O : CfsgAdmittedObject}
    {F : FamilyClassificationPackage O} {S : SignalizerFunctorPackage F} : Prop :=
  S.signalizerFunctorDefined ∧ S.solvableSignalizer ∧
  S.balanceCondition ∧ S.completionTheorem

theorem signalizer_functor_closed_from_evidence
    {O : CfsgAdmittedObject} {F : FamilyClassificationPackage O}
    {S : SignalizerFunctorPackage F} (E : SignalizerFunctorEvidence S) :
    SignalizerFunctorClosed S := by
  exact And.intro E.signalizerFunctorDefinedClosed
    (And.intro E.solvableSignalizerClosed
      (And.intro E.balanceConditionClosed E.completionTheoremClosed))

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse