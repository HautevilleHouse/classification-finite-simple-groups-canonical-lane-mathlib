import ClassificationFiniteSimpleGroupsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

structure AdmissibleClass where
  object : ClassificationFiniteSimpleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClassificationFiniteSimpleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse