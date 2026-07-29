import ClassificationFiniteSimpleGroupsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ClassificationFiniteSimpleGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClassificationFiniteSimpleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassificationFiniteSimpleGroupsCanonicalLaneLean
end HautevilleHouse