import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure LocalStructurePackage {
  CFSG : ClassificationFiniteSimpleGroupsAdmittedObject
} where
  solvableLocalSubgroups : Prop
  pLocalAnalysis : Prop
  componentTheory : Prop
  signalizerFunctorMethod : Prop

def LocalStructureClosed (L : LocalStructurePackage) : Prop :=
  L.solvableLocalSubgroups ∧ L.pLocalAnalysis ∧
  L.componentTheory ∧ L.signalizerFunctorMethod

structure LocalStructureEvidence (L : LocalStructurePackage) where
  solvableLocalSubgroupsClosed : L.solvableLocalSubgroups
  pLocalAnalysisClosed : L.pLocalAnalysis
  componentTheoryClosed : L.componentTheory
  signalizerFunctorMethodClosed : L.signalizerFunctorMethod

theorem local_structure_closed_from_evidence
    (L : LocalStructurePackage) (E : LocalStructureEvidence L) : LocalStructureClosed L := by
  exact And.intro E.solvableLocalSubgroupsClosed
    (And.intro E.pLocalAnalysisClosed
      (And.intro E.componentTheoryClosed E.signalizerFunctorMethodClosed))

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse
