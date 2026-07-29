import ClassificationFiniteSimpleGroupsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.GroupTheory.SimpleGroup

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClassificationFiniteSimpleSpace where
  carrier : Type
  groupStructure : Group carrier

structure ClassificationFiniteSimpleAdmittedObject where
  space : ClassificationFiniteSimpleSpace
  finiteSimpleGroup : IsSimpleGroup (space.carrier) ∧ Finite (space.carrier)
  classifiedByList : Prop
  conclusion : classifiedByList

structure ClassificationFiniteSimpleEndgameState where
  object : ClassificationFiniteSimpleAdmittedObject

def ClassificationFiniteSimpleWitnessClosed (O : ClassificationFiniteSimpleAdmittedObject) : Prop :=
  O.classifiedByList

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse