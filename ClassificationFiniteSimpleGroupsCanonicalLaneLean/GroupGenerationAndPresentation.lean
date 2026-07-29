import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure GenerationPackage {
  CFSG : ClassificationFiniteSimpleGroupsAdmittedObject
} where
  stronglyGeneratingSet : Prop
  presentationFinite : Prop
  brauerGeneration : Prop
  schurMultiplierComputed : Prop

def GenerationClosed (G : GenerationPackage) : Prop :=
  G.stronglyGeneratingSet ∧ G.presentationFinite ∧
  G.brauerGeneration ∧ G.schurMultiplierComputed

structure GenerationEvidence (G : GenerationPackage) where
  stronglyGeneratingSetClosed : G.stronglyGeneratingSet
  presentationFiniteClosed : G.presentationFinite
  brauerGenerationClosed : G.brauerGeneration
  schurMultiplierComputedClosed : G.schurMultiplierComputed

theorem generation_closed_from_evidence
    (G : GenerationPackage) (E : GenerationEvidence G) : GenerationClosed G := by
  exact And.intro E.stronglyGeneratingSetClosed
    (And.intro E.presentationFiniteClosed
      (And.intro E.brauerGenerationClosed E.schurMultiplierComputedClosed))

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse
