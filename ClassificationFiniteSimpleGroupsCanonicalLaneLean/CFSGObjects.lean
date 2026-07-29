import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure CFSGSpace where
  carrier : Type
  groupStructure : Group carrier

structure CFSGAdmittedObject where
  space : CFSGSpace
  finiteGroup : Prop
  simpleGroup : Prop
  classificationModel : Type
  groupStructureModel : Group classificationModel
  isomorphicToKnown : Prop
  conclusion : isomorphicToKnown

def CFSGWitnessClosed (O : CFSGAdmittedObject) : Prop :=
  O.isomorphicToKnown

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse