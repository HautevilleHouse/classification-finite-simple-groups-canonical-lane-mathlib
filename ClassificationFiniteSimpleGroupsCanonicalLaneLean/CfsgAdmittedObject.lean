import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure FiniteSimpleGroupObject where
  carrier : Type u
  groupStructure : Group carrier
  simplicity : Prop
  finiteness : Prop
  classificationKey : Prop

structure CfsgAdmittedObject where
  group : FiniteSimpleGroupObject
  knownFamily : Prop
  recognizedAsNonAbelian : Prop
  conclusion : group.simplicity ∧ group.finiteness

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse