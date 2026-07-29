import ClassificationFiniteSimpleGroupsCanonicalLaneLean.BridgeLemmas
import ClassificationFiniteSimpleGroupsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure ComponentClassification {G : Type u} [Group G] where
  simpleComponent : Type v
  isSimpleGroup : SimpleGroup simpleComponent
  injectiveHom : simpleComponent → G
  normalSubgroup : Subgroup G
  normalSubgroupImage : Subgroup.map injectiveHom (⊤ : Subgroup simpleComponent) = normalSubgroup
  componentMinimalNormal : ∀ H : Subgroup G, H ≤ normalSubgroup → Subgroup.Normal H → (H = ⊥ ∨ H = normalSubgroup)

theorem component_classification_lemma {G : Type u} [Group G] (C : ComponentClassification G) :
    Subgroup.Normal C.normalSubgroup := by
  exact C.normalSubgroupImage.symm ▸ Subgroup.normal_map C.injectiveHom

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse