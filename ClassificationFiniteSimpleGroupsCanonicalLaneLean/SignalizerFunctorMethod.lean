import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure SignalizerFunctorPackage where
  group : Type u
  signalizerFunctor : Type v
  completenessProperty : Prop
  balanceProperty : Prop
  solvableSignalizer : Prop
  functorComputed : Prop

structure SignalizerFunctorEvidence (S : SignalizerFunctorPackage) where
  completenessPropertyClosed : S.completenessProperty
  balancePropertyClosed : S.balanceProperty
  solvableSignalizerClosed : S.solvableSignalizer
  functorComputedClosed : S.functorComputed

def SignalizerFunctorClosed (S : SignalizerFunctorPackage) : Prop :=
  S.completenessProperty ∧ S.balanceProperty ∧ S.solvableSignalizer ∧ S.functorComputed

theorem signalizer_functor_closed_from_evidence (S : SignalizerFunctorPackage) (E : SignalizerFunctorEvidence S) : SignalizerFunctorClosed S := by
  exact And.intro E.completenessPropertyClosed (And.intro E.balancePropertyClosed (And.intro E.solvableSignalizerClosed E.functorComputedClosed))

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse
