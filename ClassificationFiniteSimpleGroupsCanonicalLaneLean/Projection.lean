import ClassificationFiniteSimpleGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def classificationProjection : Projection ClassificationFiniteSimpleEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem classification_projection_idempotent (x : ClassificationFiniteSimpleEndgameState) :
    classificationProjection.toFun (classificationProjection.toFun x) = classificationProjection.toFun x := by
  exact classificationProjection.idempotent x

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse